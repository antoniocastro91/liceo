<%@page import="Include.Direccion.Direccion"%>
<jsp:include page="../Principal/header.jsp"/>
<%
  Direccion dire = new Direccion();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="container">
            <div class="row main">
                <div class="main-logindirecion main-centerdirec">
                    <form  class="direccion" method="post" id="frm-direccion" action="InsertarDireccion">
                         <h3 align="center">Formulario para el Registro de Administradores.</h3>
                         <div class="row">
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre Completo</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nombre" name="Nombre" class="form-control" placeholder="Ingrese el nombre"/>
                                         </div>
                                </div>
                           <div class="form-group col-md-6">
                                    <label for="name" class="control-label">Apellidos Completo</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Apellido" name="Apellido" class="form-control" placeholder="Ingrese el Apellido"/>
                                            </div>
                            </div>
                         </div>
                         <div class="row">
                            <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Numero de Identificación</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Dui" name="Dui" class="form-control" placeholder="Ingrese el numero de DUI"/>
                                         </div>
                                </div>
                           <div class="form-group col-md-6">
                                    <label for="name" class="control-label">Telefono</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="Telefono" name="Telefono" class="form-control" placeholder="Ingrese el numero de telefono"/>
                                            </div>
                            </div>
                         </div>
                         <div class="row">
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Domicilio</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Domicilio" name="Domicilio" class="form-control" placeholder="Ingrese la direccion"/>
                                         </div>
                                </div>
                       
                        <div clas="row">
                                <div class="form-group ">
                                    <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Ingresar </button>
                                </div> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
                                                       <script>
                        $(document).ready(function(){
                            $("#frm-direccion").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('InsertarDireccion', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Administrador insertado correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/ListaDireccion.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar al administrador")
                                    }
                                });
                            });

                    });
                </script>
<jsp:include page="../Principal/footer.jsp"/>