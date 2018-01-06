<%@page import="Include.Grado.Grado"%>
<%@page import="Controlador.ControladorProfesores"%>
<%@page import="Include.Profesores.Profesores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Principal/header.jsp"/>
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
                     
                             
                                 <div class="form-group ">
                                    <button type="submit" id="btn-profesores" class="btn btn-success btn-lg btn-block login-button">Ingresar</button>
                                </div> 
                    </form>
                              </div>
                   
                </div>
            </div>
            
        </div>
 	
<jsp:include page="../Principal/footer.jsp"/>