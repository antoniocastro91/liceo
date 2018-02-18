<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="Include.Usuario.Usuario"%>
<%@page import="Controlador.ControladorUsuario"%>

<% 
    HttpSession sesion = request.getSession(true);
    String usuario = sesion.getAttribute("usuario") == null ? "" : sesion.getAttribute("usuario").toString();
    String url = response.encodeRedirectURL(request.getContextPath() + "/Vistas/Principal/index.jsp");
    if(usuario == ""){
        response.sendRedirect(url);
        return;
    }
    Object nivel = sesion.getAttribute("nivel") == null ? null : sesion.getAttribute("nivel");
    if (Integer.parseInt(nivel.toString()) != 1){
        response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/Vistas/Principal/Principal.jsp"));
    }
    ControladorUsuario cu = new ControladorUsuario();
    cu.setId_usuario(Integer.parseInt(session.getAttribute("id_personal").toString()));
    Usuario u = new Usuario();
    List<Usuario> lista_Usuario = cu.listar();
%>
<jsp:include page="../Principal/header.jsp"/>
<div class ="container">
    <div class="row" align="center">
        <div class="col-xs-12 ">
            <table class="table table-hover table-striped table-responsive">
                <thead class="text-center">
                    <tr>
                        <th>Personal</th>
                        <th>Nombre de Usuario</th>
                        <th>Estado</th>
                        <th>Rol</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_Usuario.size(); i++){
                    %>
                     <tr class="<%= lista_Usuario.get(i).getEstado() == 1 ? "success":"warning" %> <%= lista_Usuario.get(i).getId_Rol() == 1 ? "primary ":"warning" %> ">
                        <td><%=lista_Usuario.get(i).getNomUsuario()%></td>
                        <td><%= lista_Usuario.get(i).getUsuario()%></td>
                        <td>
                             <% if(lista_Usuario.get(i).getEstado() == 1) %><label>Activo</label>
                             <% if(lista_Usuario.get(i).getEstado() == 0) %><label>Inactivo</label>
                          </td>
                          <td>
                             <% if(lista_Usuario.get(i).getId_Rol()== 1) %><label>Administrador</label>
                             <% if(lista_Usuario.get(i).getId_Rol()== 2) %><label>Profesor</label>
                          </td>
                         <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/IngreoUsuarios/ModificarUsuario.jsp?id_usuario=<%= lista_Usuario.get(i).getId_Usuario()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_usuario(<%= lista_Usuario.get(i).getId_Usuario()%>)"><i class="glyphicon glyphicon-trash"></i></button>
                        </td> 
                    </tr>
                    <%        
                        }
                    %>
                    </tbody>
                </table
            </div>
        </div>
    </div>
</div>
                    <script>
                        function eliminar_usuario(id_usuario){
                            var r = confirm("Esta seguro que desea eliminar el Usuario?");
                            if (r === true) {
                                $.post('EliminarUsuarios', {id:id_usuario}, function(respuesta){
                                   if(respuesta == 'ok'){
                                       window.location.reload();
                                   } else{
                                       alert("Ocurrio un error al intentar eliminar el usuario, por favor intente de nuevo")
                                   }
                                });
                            } else {
                                txt = "You pressed Cancel!";
                            }
                        }
                    </script>
<jsp:include page="../Principal/footer.jsp"/>