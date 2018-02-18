<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>
<%@page import="Include.Seccion.Seccion"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Include.Grado.Grado"%>
<%@page import="Controlador.ControladorGrado"%>
<jsp:include page="../Principal/header.jsp"/>
<% 
    ControladorGradoSeccion controladorGra = new ControladorGradoSeccion();
    List<GradoSeccion> lista_Grados = controladorGra.listar_gradoseccion();
    List<GradoSeccion> lista_GradosSecciones = controladorGra.listar_gradoseccionSeccions();
   // List<Seccion> lista_seccion = controladorGra.listar_se();
%>

    <div class ="container" align="center">
    <div class="row">
        <div class="col-md-3"></div>
        
        <div class="col-xs-5">
            <center>
            <table class="table table-hover table-striped">
                <thead >
                    <tr >
                        <th align="center">Grado</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_Grados.size();  i++){
                    %>
                    
                    <tr align="center">
                        
                        <td><%=lista_Grados.get(i).getGrado_seccion()%></td>
                        
                        <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Grado/ModificarGrado.jsp?IdGradoSeccion=<%= lista_Grados.get(i).getIdGradoSeccion()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_grado(<%= lista_Grados.get(i).getIdGradoSeccion()%>)"><i class="glyphicon glyphicon-trash"></i></button>
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
                        function eliminar_grado(id_grado){
                            var r = confirm("Esta seguro que desea eliminar el grado?");
                            if (r === true) {
                                $.post('grado_Eliminar', {id:id_grado}, function(respuesta){
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
         
