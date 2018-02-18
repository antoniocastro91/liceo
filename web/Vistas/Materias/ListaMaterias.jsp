<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Controlador.ControladorMaterias"%>
<%@page import="Include.Materias.Materia"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% 
         HttpSession sesion = request.getSession(true);
    String usu = sesion.getAttribute("usuario") == null ? "" : sesion.getAttribute("usuario").toString();
    String url = response.encodeRedirectURL(request.getContextPath() + "/Vistas/Principal/index.jsp");
    if(usu == ""){
        response.sendRedirect(url);
        return;
    }
    Object nivel = sesion.getAttribute("nivel") == null ? null : sesion.getAttribute("nivel");
    if (Integer.parseInt(nivel.toString()) != 1){
        response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/Vistas/Principal/Principal.jsp"));
    }  
    ControladorUsuario controladorUsuario = new ControladorUsuario();
    controladorUsuario.setId_usuario(Integer.parseInt(session.getAttribute("id_personal").toString()));
    Controlador.ControladorMaterias controladorpersonal = new ControladorMaterias();
    List<Materia> lista_materia = controladorpersonal.listar_materias();
%>
<jsp:include page="../Principal/header.jsp"/>
 
 <div class ="container">
    <div class="row">
        <div class="col-xs-12">
            <center>
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>IdMateria</th>
                        <th>Materia</th>
                        <th>Opciones</th>
                                    
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_materia.size(); i++){
                    %>
                    <tr >
                        <td><%=lista_materia.get(i).getId_Materia()%></td>
                        <td><%=lista_materia.get(i).getMateria()%></td>
                     
                          <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Materias/ModificarMateria.jsp?id_materia=<%= lista_materia.get(i).getId_Materia()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_direccion(<%= lista_materia.get(i).getId_Materia()%>)"><i class="glyphicon glyphicon-trash"></i></button>
                        </td> 
                    </tr>
                    <%        
                        }
                    %>
         
                </tbody>
           
            </table
            </center>
        </div>
         
    </div>
</div>
                
                     <script>
                        function eliminar_direccion(id_direccion){
                            var r = confirm("Esta seguro que desea eliminar el registro?");
                            if (r === true) {
                                $.post('direccion_Eliminar', {id:id_direccion}, function(respuesta){
                                   if(respuesta == 'ok'){
                                       window.location.reload();
                                   } else{
                                       alert("Ocurrio un error al intentar eliminar el grado, por favor intente de nuevo")
                                   }
                                });
                            } else {
                                txt = "You pressed Cancel!";
                            }
                        }
                    </script>
<jsp:include page="../Principal/footer.jsp"/>