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
	<!-- <base href="http://sistemmuna.j.sphere48.com/liceojcdp/" />-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- CSS -->
        <link rel="stylesheet" href="resources/css/style.css">
        <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
     </head>
    <body >
        <div class="wrapper">
		<p><h1 style =" color:orange">LICEO JOSE CARMEN DI PIETRO!!!</h1>
                <form class="login" method="post" id="frm-login" action="LoginPadres">
                <div align ="center">
		<img src ="resources/img/escudo.png" width= "225" height="175" align="center"><p>
		</div>
                <p align="center" class="title" >INICAR SESI&Oacute;N</p>
                <input type="text" name="nie" id="nie" placeholder="Ingresar Numero de NIE" autofocus/>
                
                <button type="submit" id="btn-login">Iniciar Sesion</button>
           </form>
        </div>	
        <!-- Javascript -->
        <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
         <script type="text/javascript" src="resources/js/loginpadre.js"></script>
    </body>
</html>
 