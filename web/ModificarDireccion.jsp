<%@page import="Include.Direccion"%>
<%@page import="Controlador.ControladorDireccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    Controlador.ControladorDireccion controladorDire = new ControladorDireccion();
    Direccion dire = new Direccion();
    dire = controladorDire.getDireccion(Integer.parseInt(request.getParameter("id_direccion").toString()));

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                 <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
                 <link rel="stylesheet" href="resources/css/direccion.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-direccion" action="direccion_Modificar">
                         <h3 align="center">Formulario para la edicion  de Administradores.</h3>
                         <input type="hidden" name="id" id="id" value="<%= dire.getId_Direccion()%>"/>
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre Completo</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nombre" value="<%= dire.getNomDireccion()%>" name="Nombre" class="form-control" placeholder="Ingrese el nombre"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Apellidos Completo</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Apellido" name="Apellido"  value="<%= dire.getApeDireccion()%>" class="form-control" placeholder="Ingrese el Apellido"/>
                                            </div>
                            </div>
                            <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Numero de Identificación</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Dui" name="Dui"  value="<%= dire.getDui()%>" class="form-control" placeholder="Ingrese el numero de DUI"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Telefono</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Telefono" name="Telefono" value="<%= dire.getTelefono()%>" class="form-control" placeholder="Ingrese el numero de telefono"/>
                                            </div>
                            </div>
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Domicilio</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Domicilio" name="Domicilio" value="<%= dire.getDomicilio()%>" class="form-control" placeholder="Ingrese la direccion"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Usuario</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Usuario" name="Usuario"  value="<%= dire.getUsuario()%>" class="form-control" placeholder="Ingrese el nombre de usuario"/>
                                            </div>
                            </div>
                            <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Clave</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="password" id="Contrasena" value="<%= dire.getContraseña()%>" name="Contrasena" class="form-control" placeholder="Ingrese una contraseña"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Nivel del Usuario</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Nivel" name="Nivel" value="<%= dire.getNivel()%>" class="form-control" placeholder="Ingrese el nivel de usuario"/>
                                            </div>
                            </div>
                         <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Estado del usuario</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Estado" name="Estado" value="<%= dire.getEstado()%>" class="form-control" placeholder="Ingrese el estado del usuario"/>
                                         </div>
                                </div>
                                 <div class="row">
                                    <div class="form-group ">
                                        <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Actualizar</button>
                                    </div> 
                              </div>
                    </form>
                                </div> 
                            </div> 
                        </div> 
                                         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
                                         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
                                         <script>
                                            $(document).ready(function(){
                                                 $("#frm-direccion").submit(function(e){
                                                    e.preventDefault();
                                                   var data = $(this).serialize(); 
                                                        $.post('direccion_Modificar', data, function(res, est, jqXHR){
                                                           if(res == 'ok'){
                                                                    alert("Registro modificado correctamente");
                                                                    setTimeout(function(){
                                                                        window.location = "ListaDireccion.jsp";   
                                                                    },100);
                                                                }else{
                                                                    alert("Ocurrio un error al modificar el registro")
                                                                }
                                                            });
                                                        });
                                                  }); 
                                                  </script>
                    
    </body>
</html>
