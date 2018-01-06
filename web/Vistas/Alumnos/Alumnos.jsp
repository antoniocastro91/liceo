<jsp:include page="../Principal/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
           <div class="container">
            <div class="row main">
                <div class="main-loginalum main-centeralum">
                    <form class="" method="post" id="frm-alumnos" action="InsertarAlumno">
                         <h3 align="center">Formulario para el Registro de Alumnos.</h3>
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
                                     <label for="name" class="cols-sm-3 control-label">NIE</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text"  id="Nie" name="Nie" class="form-control" placeholder="Ingrese el numero de NIE"/>
                                         </div>
                                </div>
                                 <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">EDAD</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Edad" name="Edad" class="form-control" placeholder="Ingrese la edad"/>
                                            </div>
                                </div>
                                <div class="form-group col-md-6">
                                     <label for="date" class="cols-sm-3 control-label">Fecha Nacimiento</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="date" id="Fecha_Nacimiento" name="Fecha_Nacimiento" class="form-control" placeholder="Ingrese la fecha de nacimiento"/>
                                         </div>
                                </div>
                                 <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Nombre del Encargado</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Nombre_Encargado" name="Nombre_Encargado" class="form-control" placeholder="Ingrese la edad"/>
                                            </div>
                                </div>
                             <div class="form-group col-md-6">
                                     <label for="date" class="cols-sm-3 control-label">Apellidos del Encargado</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Apellido_Encargado" name="Apellido_Encargado" class="form-control" placeholder="Ingrese los apellidos del encargado"/>
                                         </div>
                                </div>
                                 <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Número de Identificación</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Dui" name="Dui" class="form-control" placeholder="Ingrese el numeor de DUI"/>
                                            </div>
                                </div>
                             <div class="form-group col-md-6">
                                     <label for="date" class="cols-sm-3 control-label">Numero de Telefono</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Telefono" name="Telefono" class="form-control" placeholder="Ingrese el numero de telefono"/>
                                         </div>
                                </div>
                                 <div class="form-group">
                                    <label for="name" class="cols-sm-3 control-label">Domicilio</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Domicilio" name="Domicilio" class="form-control" placeholder="Ingrese la direccion"/>
                                            </div>
                                </div>
                            
                                <div class="form-group ">
                                    <button type="submit" id="btn-alumno" class="btn btn-warning btn-lg btn-block login-button">Ingresar</button>
                                </div> 
                    </form>
                </div>
            </div>
        </div>
<jsp:include page="../Principal/footer.jsp"/>