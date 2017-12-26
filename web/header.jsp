<%@page import="Include.Profesores"%>
<%@page import="Controlador.ControladorProfesores"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <%-- <link rel="stylesheet" href="resources/css/style2.css" type="text/css" media="all">--%>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/alumnos.css">
        <link rel="stylesheet" href="resources/css/direccion.css">
         <link rel="stylesheet" href="resources/css/grados.css">
         <link rel="stylesheet" href="resources/css/materias.css">
          <link rel="stylesheet" href="resources/css/profesores.css">
          <link rel="stylesheet" href="resources/css/alumnos.css">
    <title>MENU</title>
   
</head>
           <header class="main-bar">
               <center>
                    <a href="header.jsp">
                        <img align="center" class="img-responsive img-rounded"  src="resources/img/backgrounds/2.jpg"/>
                     </a> 
               </center>
           </header>
       
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
      <a class="navbar-brand" href="header.jsp"> <i class="glyphicon glyphicon-home"> Inicio </i></a>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       
        <li class="dropdown">
          <a href="header.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-user"> Administracion </i><span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="Direccion.jsp"><i class=" glyphicon glyphicon-eye-open"> Direccion </i></a> </li>
            <li><a  href="Alumnos.jsp"><i class="glyphicon glyphicon-education"> Alumnos </i></a></li>
            <li><a href="Profesores.jsp"> <i class="glyphicon glyphicon-user"> Profesores </i></a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Materias.jsp"><i class="glyphicon glyphicon-book"> Materias</i></a></li>
            <li><a href="Grado.jsp"> <i class="glyphicon glyphicon-pushpin"> Grados </i></a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Trimestre.jsp"> <i class="glyphicon glyphicon-time"> Trimestre</i></a></li>
          </ul>
        </li>
          <li><a href="Calificaciones.jsp">Notas</a></li>
          <li><a href="Notas.jsp">Acerca de</a></li>
          <li><a href="Notas.jsp">Reportes</a></li>
          <li><a href="index.jsp"> Cerrar Sesion</a>
                            
          </li>
             
      </ul>
   
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
