<%-- 
    Document   : Trimestre
    Created on : 12-14-2017, 11:04:45 AM
    Author     : Victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <!-- Bootstrap -->
    <link href="resources/boostrap/bootstrap.css" rel="stylesheet">
        <title>Grado</title>
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
      <a class="navbar-brand" href="#">Inicio</a>
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
        <form class="trimestre" method="post" id="frm-trimestre" action="InsertarTrimestre">
            <label> Trimestre</label>
            <input type="text" id="Trimestre" name="Trimestre">
            <br>
            <label> Mes</label>
            <input type="text" id="Mes" name="Mes">
            <br>
            <button type="submit" id="btn-grado" >Ingresar</button>
        </form>
            
         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
    </body>
</html>