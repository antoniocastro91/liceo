<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Include.Area"%>
<%@page import="Controlador.ControladorArea"%>
<%@page import="Controlador.ControladorPersonal"%>
<%@page import="Include.Personal.Personal"%>

<% 
    
    Controlador.ControladorPersonal controladorpersonal = new ControladorPersonal();
    List<Personal> lista_Direcion = controladorpersonal.listar();
%>
<jsp:include page="../Principal/header.jsp"/>
 
          <div class ="container">
    <div class="row">
        <div class="col-xs-12">
            <center>
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Nombre </th>
                        <th>Apellido</th>
                        <th>DUI</th>
                        <th>Telefono</th>
                        <th>Domicilio</th>
                        <th>Area</th>
                        <th>Opciones</th>
                                    
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_Direcion.size(); i++){
                    %>
                    <tr class="<%= lista_Direcion.get(i).getId_area()!= 1 ? "warning":"success" %> ">
                        <td><%=lista_Direcion.get(i).getNombre()%></td>
                        <td><%=lista_Direcion.get(i).getApellido()%></td>
                        <td><%=lista_Direcion.get(i).getDui()%></td>
                        <td><%=lista_Direcion.get(i).getTelefono()%></td>
                        <td><%=lista_Direcion.get(i).getDomicilio()%></td>
                        <td><% if(lista_Direcion.get(i).getId_area() == 1){%>
                             <label>Maestro</label>
                            <% }else {%>
                            <label>Administrador</label>
                            <% }%>
                        </td>
                     
                          <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Personal/ModificarDireccion.jsp?id_personal=<%= lista_Direcion.get(i).getId_Personal()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_direccion(<%= lista_Direcion.get(i).getId_Personal()%>)"><i class="glyphicon glyphicon-trash"></i></button>
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