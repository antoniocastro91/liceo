<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>
<%@page import="Include.IncludePagos"%>
<%@page import="Controlador.ControladorPago"%>
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
    ControladorPago cp = new ControladorPago();
    List<IncludePagos> lista_pagos = cp.listar();
   // List<Seccion> lista_seccion = controladorGra.listar_se();
   
  ControladorGradoSeccion cgs = new ControladorGradoSeccion();
  List<GradoSeccion> lista_grados = cgs.listar_gradoseccion();
%>
<jsp:include page="../Principal/header.jsp"/>
    <div class ="container" align="center">
    <div class="row">
        <div class="col-md-3"></div>
        
        <div class="col-xs-7">
            <center>
            <table class="table table-hover table-striped">
                <thead >
                    <tr>
                        <th align="center">Alumno</th>
                        <th>Pagos al Día</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% %>
                      
                    <%
                        for(int i = 0; i < lista_pagos.size();  i++){
                    %>
                    <tr>
                       
                        <td><%=lista_pagos.get(i).getNombre()%></td>
                        <td><% if(lista_pagos.get(i).getEstado() == 1){%>Si</td>
                        <%}else{ %>No                       
                        <%} %>
                        <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Pagos/ModificarPago.jsp?id_pago=<%= lista_pagos.get(i).getIdPago()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_pago(<%= lista_pagos.get(i).getIdPago()%>)"><i class="glyphicon glyphicon-trash"></i></button>
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
                        function eliminar_pago(id_pago){
                            var r = confirm("Esta seguro que desea eliminarlo?");
                            if (r === true) {
                                $.post('Eliminar_Pago', {id:id_pago}, function(respuesta){
                                   if(respuesta == 'ok'){
                                       window.location.reload();
                                   } else{
                                       alert("Ocurrio un error al intentar eliminarlo, por favor intente de nuevo");
                                   }
                                });
                            } else {
                                txt = "You pressed Cancel!";
                            }
                        }
                    </script>
<jsp:include page="../Principal/footer.jsp"/>         