<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Include.Grado"%>
<%@page import="Controlador.ControladorGrado"%>
<% 
    ControladorGrado controladorGra = new ControladorGrado();
    List<Grado> lista_Grados = controladorGra.listar();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
    </head>
    <body>
            <nav class="navbar navbar-default">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Menu Navegacion</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="Menu.jsp">Inicio</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administracion<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Direccion.jsp">Direccion</a></li>
            <li><a href="Alumnos.jsp">Alumnos</a></li>
            <li><a href="Profesores.jsp">Profesores</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Materias.jsp">Materias</a></li>
            <li><a href="Grado.jsp">Grados</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Trimestre.jsp">Trimestre</a></li>
          </ul>
        </li>
          <li><a href="Notas.jsp">Notas</a></li>
          <li><a href="Notas.jsp">Acerca de</a></li>
          <li><a href="Notas.jsp">Reportes</a></li>
          <li><a href="Notas.jsp">Cerrar Sesion</a></li>
      </ul>
   
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
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
                        for(int i = 0; i < lista_Grados.size(); i++){
                    %>
                    <tr align="center">
                        <td><%=lista_Grados.get(i).getGrado()%></td>
                        <td><%=lista_Grados.get(i).getSeccion()%></td>
                          <td>
                            <a class="btn btn-warning btn-xs" href="ModificarGrado.jsp?id_grado=<%= lista_Grados.get(i).getId_Grado()%>"><i class="glyphicon glyphicon-pencil"></i></a>
                            <button class="btn btn-danger btn-xs" onclick="eliminar_grado(<%= lista_Grados.get(i).getId_Grado()%>)"><i class="glyphicon glyphicon-trash"></i></button>
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
                
         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
         
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
    </body>
</html>
