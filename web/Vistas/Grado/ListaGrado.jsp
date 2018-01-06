<%@page import="Include.Seccion.Seccion"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Include.Grado.Grado"%>
<%@page import="Controlador.ControladorGrado"%>
<jsp:include page="../Principal/header.jsp"/>
<% 
    ControladorGrado controladorGra = new ControladorGrado();
    List<Grado> lista_Grados = controladorGra.listar();
    List<Seccion> lista_seccion = controladorGra.listar_se();
%>

    <div class ="container" align="center">
    <div class="row">
        <div class="col-xs-4">
            <center>
            <table class="table table-hover table-striped">
                <thead >
                    <tr >
                        <th align="center">Nombre</th>
                        <th>Seccion</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_Grados.size();  i++){
                    %>
                     <%
                        for(int l = 0; l < lista_seccion.size();  l++){
                    %>
                    <tr align="center">
                        <td>
                            <% if(lista_Grados.get(i).getId_Grado()== 1) %><label>Primero</label>
                            <% if(lista_Grados.get(i).getId_Grado()== 2) %><label>Segundo </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 3) %><label>Tercero </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 4) %><label>Cuarto </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 5) %><label>Quinto </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 6) %><label>Sexto </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 7) %><label>Septimo </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 8) %><label>Octavo </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 9) %><label>Noveno </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 10) %><label>Primer Año </label>
                            <% if(lista_Grados.get(i).getId_Grado()== 11) %><label>Segundo Año</label>
                        </td>
                        <td>
                            <% if(lista_seccion.get(l).getId_Seccion() == 1) %><label>A</label>
                            <% if(lista_seccion.get(l).getId_Seccion()== 2) %> <label>B </label>
                        </td>
                        <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Grado/ModificarGrado.jsp?id_grado=<%= lista_Grados.get(i).getId_Grado()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_grado(<%= lista_Grados.get(i).getId_Grado()%>)"><i class="glyphicon glyphicon-trash"></i></button>
                        </td> 
                    </tr>
                    <%        
                        }
                    %>
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
         
