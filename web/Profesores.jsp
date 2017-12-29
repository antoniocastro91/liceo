<%@page import="Include.Grado"%>
<%@page import="Controlador.ControladorProfesores"%>
<%@page import="Include.Profesores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<% 
    Profesores profe = new Profesores();
    Grado grado = new Grado();
    Controlador.ControladorProfesores controladorProfe = new ControladorProfesores();

%>
  
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
                                                    <select type="Estado" id="Nivel" name="Nivel" class="form-control">
                                                   <option <% if(profe.getNivel()== "1"){ %> selected <% }%> value="1">Administrador</option> 
                                                   <option <% if(profe.getNivel()== "2"){ %> selected <% }%> value="2">Usuario</option> 
                                                </select>
                                         </div>
                                </div>
                               <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Estado del usuario</label>
                                        <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <select type="Estado" id="asigrado" name="Estado" class="form-control">
                                                   <option <% if(profe.getEstado()== "1"){ %> selected <% }%> value="1">Activo</option> 
                                                   <option <% if(profe.getEstado()== "0"){ %> selected <% }%> value="0">Inactivo</option> 
                                                </select>
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
