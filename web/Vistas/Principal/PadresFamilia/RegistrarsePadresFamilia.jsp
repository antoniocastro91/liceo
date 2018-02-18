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
        <link rel="stylesheet" href="resources/css/padresfamilia/LoginRegistro.css">
      
     </head>
<body>

    <div class="container">
        <div class="flat-form">
            <ul class="tabs">
                <li>
                    <a href="#login" class="active">Iniciar Sesion</a>
                </li>
                <li>
                    <a href="#register">Registrarse</a>
                </li>
           
            </ul>
            <div id="login" class="form-action show">
                  <div align ="center">
        		<img src ="resources/img/escudo.png" width= "225" height="175" align="center"><p>
		</div>
                <h1 align="center">Iniciar Sesion</h1><br/>
                <h4>
                   Ingrese el usuario y su contraseña
                </h4><br/>
                 <form class="login" method="post" id="frm-login" action="LoginPadres">
                    <ul>
                        <li>
                            <input  name="usuario" id="usuario" type="text" placeholder="Usuario" />
                        </li>
                        <li>
                            <input  name="clave" id="clave" type="password" placeholder="Contraseña" />
                        </li><br/>
                        <li>
                            <button class="button" type="submit"  id="btn-login">Iniciar</button>
                        </li>
                    </ul>
                </form>
            </div>
            <!--/#login.form-action-->
            <div id="register" class="form-action hide">
                <div align ="center">
		<img src ="resources/img/escudo.png" width= "225" height="175" align="center"/>
                </div><br/>
                <h1 align="center">Registrarse</h1><br/>
                <h4>
                   Coloque un usuario y una contraseña, la cual servirá para inciar sesion en el sistema
                </h4><br/>
                  <form class="login" method="post" id="frm-registrousuario" action="UsuariosPadres_Insertar">
                    <ul>
                        <li>
                            <input type="text" name="usuario" id="usuario" placeholder="Usuario" />
                        </li>
                        <li>
                            <input name="clave" id="clave"  type="password" placeholder="Contraseña" />
                        </li><br/>
                        <li>
                            <button class="button" value="Registrar" id="btn-login">Registrar</button>
                        </li>
                    </ul>
                </form>
            </div>
            
        </div>
    </div>
    <!-- Javascript -->
        <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
         <script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
         <script type="text/javascript" src="resources/css/padresfamilia/LoginRegistro.js"></script>
            <script>
                     $(document).ready(function(){
                            $("#frm-usuarios").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('UsuariosPadres_Insertar', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Usuario insertado Correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/Vistas/Principal/PadresFamilia/RegistrarsePadresFamilia.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar el usuario");
                                    }
                                });
                            });

                    });
                </script>   
</body>
</html>
