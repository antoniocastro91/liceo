<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Include.Direccion.Direccion"%>
<%@page import="Controlador.ControladorDireccion"%>
<jsp:include page="../Principal/header.jsp"/>
<% 
    ControladorDireccion controladordir = new ControladorDireccion();
    List<Direccion> lista_Direcion = controladordir.listar();
%>

 
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
                                    
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_Direcion.size(); i++){
                    %>
                    <tr>
                        <td><%=lista_Direcion.get(i).getNomDireccion()%></td>
                        <td><%=lista_Direcion.get(i).getApeDireccion()%></td>
                        <td><%=lista_Direcion.get(i).getDui()%></td>
                        <td><%=lista_Direcion.get(i).getTelefono()%></td>
                        <td><%=lista_Direcion.get(i).getDomicilio()%></td>
                     
                          <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Direccion/ModificarDireccion.jsp?id_direccion=<%= lista_Direcion.get(i).getId_Direccion()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_direccion(<%= lista_Direcion.get(i).getId_Direccion()%>)"><i class="glyphicon glyphicon-trash"></i></button>
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