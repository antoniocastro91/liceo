<%@page import="Include.Matricula.Matricula"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.Matricula.ControladorMatricula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Principal/header.jsp"/>
<% 
    ControladorMatricula controladormatri = new ControladorMatricula();
    List<Matricula> lista_Matrcula = controladormatri.listar();
%>
<div class ="container">
    <div class="row">
        <div class="col-xs-12">
            <center>
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Año </th>
                        <th>IdGradoSeccion</th>
                        <th>Primer Apellido</th>
                        <th>Segundo Apellido</th>
                        <th>Nombre</th>
                        <th>Fecha Nacimiento</th>
                        <th>Edad</th>
                        <th>Sexo</th>
                        <th>Municipio</th>
                        <th>Departamento</th>
                        <th>RepiteGrado</th>
                        <th>Documentos Presentados</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for(int i = 0; i < lista_Matrcula.size(); i++){
                    %>
                    <tr>
                        <td><%=lista_Matrcula.get(i).getAño()%></td>
                        <td>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 1) %><label>Primero A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 2) %><label>Primero B</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 3) %><label>Segundo A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 4) %><label>Segundo B</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 5) %><label>Tercero A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 6) %><label>Tercero B</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 7) %><label>Cuarto A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 8) %><label>Cuarto B</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 9) %><label>Quinto A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 10) %><label>Sexto A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 11) %><label>Septimo A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 12) %><label>Octavo A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 13) %><label>Noveno A</label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 14) %><label>Primer Año </label>
                            <% if(lista_Matrcula.get(i).getId_GradoSeccion()== 15) %><label>Segundo Año</label>
                                     
                        </td>
                         <td><%=lista_Matrcula.get(i).getPrimer_Apellido()%></td>
                          <td><%=lista_Matrcula.get(i).getSegundo_Apellido()%></td>
                          <td><%=lista_Matrcula.get(i).getNombres()%></td>
                          <td><%=lista_Matrcula.get(i).getFecha_Nacimiento()%></td>
                          <td><%=lista_Matrcula.get(i).getEdad()%></td>
                          <td><%=lista_Matrcula.get(i).getSexo()%></td>
                          <td><%=lista_Matrcula.get(i).getMunicipio()%></td>
                          <td><%=lista_Matrcula.get(i).getDepartamento()%></td>
                          <td><%=lista_Matrcula.get(i).getRepite_Grado()%></td>
                          <td><%=lista_Matrcula.get(i).getDocumentos_Presentados()%></td>
                          
                         <td>
                            <a class="btn btn-warning btn-xs" href="Vistas/Matricula/ModificarMatricula.jsp?id_matricula=<%= lista_Matrcula.get(i).getId_Matricula()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_matricula(<%= lista_Matrcula.get(i).getId_Matricula()%>)"><i class="glyphicon glyphicon-trash"></i></button>
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
                        function eliminar_matricula(id_direccion){
                            var r = confirm("Esta seguro que desea eliminar a matricula?");
                            if (r === true) {
                                $.post('EliminarMatricula', {id:id_direccion}, function(respuesta){
                                   if(respuesta == 'ok'){
                                       window.location.reload();
                                   } else{
                                       alert("Ocurrio un error al intentar eliminar la matricula, por favor intente de nuevo")
                                   }
                                });
                            } else {
                                txt = "You pressed Cancel!";
                            }
                        }
                    </script>