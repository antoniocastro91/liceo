<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.Usuario.Usuario"%>
<%@page import="Include.Direccion.Direccion"%>
<%@page import="Controlador.ControladorDireccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(true);
    Object usu = sesion.getAttribute("usuario") == null ? null : sesion.getAttribute("usuario");
    Usuario usuario = null;
    ControladorDireccion cd = null;
    ControladorUsuario cu = null;
    if(usu != null){
        cu = new ControladorUsuario();
        usuario = new Usuario(usu.toString());
  
    }
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
 
    <title>MENU</title>
    <c:set var="req" value="${pageContext.request}" />
	<c:set var="uri" value="${req.requestURI}" />
	<c:set var="url">${req.requestURL}</c:set>
	<base href="http://localhost:8080/liceo/" />
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
                    <a href="Vistas/Principal/Principal.jsp">
                        <img align="center" class="img-responsive img-rounded"  src="resources/img/menu.jpg"/>
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
      <a class="navbar-brand" href="Vistas/Principal/Menu_Usuario.jsp"> <i class="glyphicon glyphicon-home"> Inicio </i></a>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
                        <li><a href="Vistas/Calificaciones/Calificaciones.jsp">Notas</a></li>
               <li><a href="Vistas/Principal/index.jsp"> Cerrar Sesion</a></li>
      </ul>
             <ul class="nav navbar-nav navbar-right pull-right">
                     <%  if(usuario != null){ %>
                     <%=  cu.getViewUser(usuario)%>
                     <%   }else{
                            response.getWriter().print("Por favor inicie sesion ");
                            response.getWriter().print("<a href='Vistas/Principal/index.jsp'> Iniciar Sesion</a>");
                        }
                    %>
            </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    </body>
</html>
