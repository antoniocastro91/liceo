
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Materias</title>
         <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
         <link rel="stylesheet" href="resources/css/materias.css">
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
            <li><a href="#">Trimestre</a></li>
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
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-materia" action="InsertarMateria">
                         <h3 align="center">Formulario para el Registro de Materias.</h3>
                           <div class="form-group col-md-12">
                                     <label for="name" class="cols-sm-3 control-label">Nombre de la Materia</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="materia" name="materia" class="form-control" placeholder="Ingrese la Materia"/>
                                         </div>
                                </div>
                                <div class="form-group ">
                                    <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Ingresar</button>
                                </div> 
                    </form>
                </div>
            </div>
        </div>
        
         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
    </body>
</html>
