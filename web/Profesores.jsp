<%-- 
    Document   : Profesores
    Created on : 12-12-2017, 10:17:11 PM
    Author     : Victor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Materias</title>
        <link rel="stylesheet" href="resources/css/profesores.css">
         <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
         <link rel="stylesheet" href="resources/fonts/glyphicons-halflings-regular.eot">
         <link rel="stylesheet" href="glyphicons-halflglyphicons-halflings-regular.svg">
         <link rel="stylesheet" href="glyphicons-halflglyphicons-halflings-regular.ttf">
         <link rel="stylesheet" href="glyphicons-halflglyphicons-halflings-regular.woff">
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
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-profesores" action="InsertarProfesores">
                        <h3 align="center">Formulario para Registro de Profesores.</h3>
                                <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre Completo</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nombre" name="Nombre" class="form-control" placeholder="Ingrese el Nombre"/>
                                         </div>
                                </div>
                                 <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Apellidos Completo</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Apellido" name="Apellido" class="form-control" placeholder="Ingrese el Apellido"/>
                                            </div>
                                </div>
                                <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Numero de telefono</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Telefono" name="Telefono" class="form-control" placeholder="Ingrese el Telefono"/>
                                         </div>
                                </div>
                                <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Domicilio</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Domicilio" name="Domicilio" class="form-control" placeholder="Ingrese el la Direccion"/>
                                         </div>
                                </div>
                                <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Numero de Identificación</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Dui" name="Dui" class="form-control" placeholder="Ingrese el numero de DUI"/>
                                         </div>
                                </div>
                               <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Numero de NIP</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nip" name="Nip" class="form-control" placeholder="Ingrese el numero de NIP"/>
                                         </div>
                                </div>                          
                                 <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre de usuario</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Usuario" name="Usuario" class="form-control" placeholder="Ingrese el usuario"/>
                                         </div>
                                </div>
                               <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Clave</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="password"  id="Contrasena" name="Contrasena" class="form-control" placeholder="Ingrese la contraseña"/>
                                         </div>
                                </div>   
                                  <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nivel del usuario</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nivel" name="Nivel" class="form-control" placeholder="Nivel del usuario"/>
                                         </div>
                                </div>
                               <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Estado del usuario</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text"  id="Estado" name="Estado" class="form-control" placeholder="Digite el Estado del usuario"/>
                                         </div>
                                </div>
                                 <div class="form-group ">
                                    <button type="submit" id="btn-profesores" class="btn btn-success btn-lg btn-block login-button">Ingresar</button>
                                </div> 
                    </form>
                              </div>
                   
                </div>
            </div>
            
        </div>
 	
        
          <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
    </body>
</html>
