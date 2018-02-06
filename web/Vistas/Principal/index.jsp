<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>INICIO</title>
            <c:set var="req" value="${pageContext.request}" />
	<c:set var="uri" value="${req.requestURI}" />
	<c:set var="url">${req.requestURL}</c:set>
	<base href="http://localhost:26683/liceo/" />
	<!-- <base href="http://sistemmuna.j.sphere48.com/liceojcdp/" /> -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- CSS -->
        <link rel="stylesheet" href="resources/css/frmlogin.css">
        <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
     </head>
    <body >
        <div class="wrapper">
               
		<p><h1 style =" color:orange">LICEO JOSE CARMEN DI PIETRO!!!</h1>
            <form class="login" method="post" id="frm-login" action="Login">
                <div align ="center">
		<img src ="resources/img/escudo.png" width= "225" height="175" align="center"><p>
		</div>
                <p align="center" class="title" >INICAR SESI&Oacute;N</p>
                <div class="row">
                     <div class="form-group col-md-12">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input  type="text" name="usuario" id="usuario" placeholder="Nombre de Usuario" autofocus/>
                      </div>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" name="clave" id="clave"  placeholder="Contraseña" />
                      </div>
                </div>
                
                <div class="row">
                     <button class="btnlogin" value="Iniciar Sesion" id="btn-login">Iniciar Sesion</button>
                </div>
                <div class="row">
                     <div class="form-group col-md-12">
                        <a type="submit" class="glyphicon glyphicon-user " href="Vistas/Principal/PadresFamilia/Principal.jsp" > Padres de Familia</a>
                     </div>
                </div>
               
           </form>
        </div>	
        </div>
        <!-- Javascript -->
        <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="resources/js/scripts.js"></script>
    </body>
</html>
 