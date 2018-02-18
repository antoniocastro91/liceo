<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.Usuario.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
 
    <title>MENU</title>
    <c:set var="req" value="${pageContext.request}" />
	<c:set var="uri" value="${req.requestURI}" />
	<c:set var="url">${req.requestURL}</c:set>
	<base href="http://localhost:26683/liceo/" />
	<!-- <base href="http://sistemmuna.j.sphere48.com/liceojcdp/" /> -->
      <%-- <link rel="stylesheet" href="resources/css/style2.css" type="text/css" media="all">--%>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
     <link rel="stylesheet" href="resources/css/alumnos.css">
     <link rel="stylesheet" href="resources/css/direccion.css">
     <link rel="stylesheet" href="resources/css/grados.css">
     <link rel="stylesheet" href="resources/css/materias.css">
     <link rel="stylesheet" href="resources/css/profesores.css">
     <link rel="stylesheet" href="resources/css/alumnos.css">
      <style>
		.carousel-inner > .item > img,
		.carousel-inner > .item > a > img {
			height: 400px;
			margin: auto;
		}
	</style>
</head>
           <header class="main-bar">
               <center>
                    <a href="Vistas/Principal/PadresFamilia/header.jsp">
                        <img align="center" class="img-responsive img-rounded"  src="resources/img/header.jpg"/>
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
      <a class="navbar-brand" href="Vistas/Principal/PadresFamilia/Principal.jsp"> <i class="glyphicon glyphicon-home"> Inicio </i></a>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
             <li><a href="Vistas/Principal/PadresFamilia/Notas.jsp"><i class="glyphicon glyphicon-list-alt"> Consultar Notas</i></a></li>
             <li><a href="Vistas/Principal/index.jsp"><i class="glyphicon glyphicon-off"> CerrarSesion</i></a></li>
      </ul>
     </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
        <script>
               $('.carousel').carousel({
                   interval: 2000 //changes the speed
               })
           </script>