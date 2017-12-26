<jsp:include page="header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="container">
            <div class="row main">
                <div class="main-logindirecion main-centerdirec">
                    <form  class="direccion" method="post" id="frm-direccion" action="InsertarDireccion">
                         <h3 align="center">Formulario para el Registro de Administradores.</h3>
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre Completo</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nombre" name="Nombre" class="form-control" placeholder="Ingrese el nombre"/>
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
                                     <label for="name" class="cols-sm-3 control-label">Numero de Identificación</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Dui" name="Dui" class="form-control" placeholder="Ingrese el numero de DUI"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Telefono</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Telefono" name="Telefono" class="form-control" placeholder="Ingrese el numero de telefono"/>
                                            </div>
                            </div>
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Domicilio</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Domicilio" name="Domicilio" class="form-control" placeholder="Ingrese la direccion"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Usuario</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Usuario" name="Usuario" class="form-control" placeholder="Ingrese el nombre de usuario"/>
                                            </div>
                            </div>
                            <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Clave</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="password" id="Contrasena" name="Contrasena" class="form-control" placeholder="Ingrese una contraseña"/>
                                         </div>
                                </div>
                           <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Nivel del Usuario</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Nivel" name="Nivel" class="form-control" placeholder="Ingrese el nivel de usuario"/>
                                            </div>
                            </div>
                         <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Estado del usuario</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Estado" name="Estado" class="form-control" placeholder="Ingrese el estado del usuario"/>
                                         </div>
                                </div>
                                <div class="form-group ">
                                    <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Ingresar </button>
                                </div> 
                    </form>
                    <div>
                                 <button class="btn btn-default btn-lg btn-block" onclick="location.href='ListaDireccion.jsp'">Mostrar</button>
                                </div> 
                </div>
            </div>
        </div>
