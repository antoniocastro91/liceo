<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Principal/header.jsp"/>
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-materia" action="InsertarMateria">
                         <h3 align="center">Formulario para el Registro de Materias.</h3>
                           <div class="form-group col-md-12">
                                     <label for="name" class="cols-sm-3 control-label">Nombre de la Materia</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="materia" name="materia" class="form-control" placeholder="Ingrese la Materia"/>
                                         </div>
                                </div>
                                <div class="form-group ">
                                    <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Ingresar</button>
                                </div> 
                    </form>
                </div>
            </div>
        </div>
<jsp:include page="../Principal/footer.jsp"/>