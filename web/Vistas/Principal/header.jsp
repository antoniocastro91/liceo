<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.Usuario.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    HttpSession sesion = request.getSession(true);
    String usuario = sesion.getAttribute("usuario") == null ? "" : sesion.getAttribute("usuario").toString();   
    Usuario user = null;
    ControladorUsuario cu = null;

    if(usuario != ""){
        cu = new ControladorUsuario();
        user = new Usuario(usuario.toString());
        user.setId_Rol(Integer.parseInt(session.getAttribute("nivel").toString()));
    }
%> 
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
     <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/v/dt/jq-3.2.1/dt-1.10.16/datatables.min.css"/>
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
      <a class="navbar-brand" href="Vistas/Principal/Principal.jsp"> <i class="glyphicon glyphicon-home"> Inicio </i></a>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
           <% 
                     if(usuario != null){
                       if (user.getId_Rol() == 1){ %>
        
        <li class="dropdown">
            <a href="Vistas/Principal/Principal.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-lock"> Administracion </i><span class="caret"></span></a>
          <ul class="dropdown-menu">
                 <li><i class="glyphicon glyphicon-book"> Materias</i>
                        <a href="Vistas/Materias/Materias.jsp">Registrar</a>
                        <a href="Vistas/Materias/ListaMaterias.jsp">Consultar</a>
                    </li>
                 <li role="separator" class="divider"></li>
                    <li><i class="glyphicon glyphicon-pushpin"> Grados </i>
                        <a href="Vistas/Grado/Grado.jsp">Registrar</a>
                        <a href="Vistas/Grado/ListaGrado.jsp">Consultar</a>
                     </li>
                <li role="separator" class="divider"></li>
                  <li><i class="glyphicon glyphicon-btc"> Pagos </i>
                        <a href="Vistas/Pagos/AdministracionPagos.jsp">Registrar</a>
                        <a href="Vistas/Pagos/ListaPagos.jsp">Consultar</a>
                  </li>
            </ul>
          </li>
        <li><a href="Vistas/Matricula/Asignaciones.jsp"><i class="glyphicon glyphicon-pencil"> Asignaciones </i></a></li>
       
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-user"> Usuarios </i><span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="Vistas/IngreoUsuarios/RegitrarUsuarios.jsp">Registrar</a>
                    <a href="Vistas/IngreoUsuarios/ListaUsuario.jsp">Mostrar</a>
                </li>
           </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-flag"> PersonalDocente </i><span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="Vistas/Personal/Direccion.jsp">Registrar</a>
                    <a href="Vistas/Personal/ListaDireccion.jsp">Mostrar</a>
                </li>
           </ul>
        </li>
 
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" > <i class="glyphicon glyphicon-list-alt"> RegistrarMatricula </i><span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="Vistas/Matricula/RegistrarMatricula.jsp">Registrar</a></li>
              <li><a href="Vistas/Matricula/ListaMatricula.jsp">Consultar</a></li>
          </ul>

        </li>
        <li><a href="Notas.jsp" ><i class="glyphicon glyphicon-calendar"> Reportes</i></a>
        </li>
                               <% } 
               }%>
          <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-list-alt"> Notas </i><span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li>
                    <a href="Vistas/Calificaciones/Calificaciones.jsp">Registrar</a>
                    <a href="Vistas/Calificaciones/Notas.jsp">Mostrar</a>
                </li>
           </ul>
        </li>
               <li><a href="CerrarSesion"><i class="glyphicon glyphicon-off"> CerrarSesion</i></a></li>
             
      </ul>
             <ul class="nav navbar-nav navbar-right pull-right">
                     <%  if(usuario != null){ %>
                     <%=  cu.getViewUser(user)%>
                     <%   }else{
                            response.getWriter().print("Por favor inicie sesion ");
                            response.getWriter().print("<a href='Vistas/Principal/index.jsp'> Iniciar Sesion</a>");
                        }
                    %>
                
            </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
         
        
         <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-3.2.1/dt-1.10.16/datatables.min.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.js" ></script>
         <script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
         <script type="text/javascript" src="resources/js/moment.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap-datetimepicker.js"></script>
        <script>
               $('.carousel').carousel({
                   interval: 2000 //changes the speed
               })
           </script>