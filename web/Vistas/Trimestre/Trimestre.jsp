<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="trimestre" method="post" id="frm-trimestre" action="InsertarTrimestre">
                           <h3 align="center">Formulario para el Registro de Trimestre.</h3>
                           <div class="form-group col-md-12">
                              <label for="name" class="cols-sm-3 control-label">Ingrese el Trimestre</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text"  id="trimestre" name="trimestre" class="form-control" placeholder="Ingrese el Trimestre"/>
                                         </div>
                           </div>
                            <div class="form-group ">
                                    <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Ingresar</button>
                            </div> 
                    </form>
                            <div>
                            <button class="btn btn-default btn-lg btn-block" onclick="location.href='ListaTrimestre.jsp'">Mostrar</button>
                           </div>                       

                </div>
              </div>
     </div>
                    
<jsp:include page="footer.jsp"/>