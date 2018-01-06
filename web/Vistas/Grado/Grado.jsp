<%@page import="Include.Seccion.Seccion"%>
<%@page import="Include.Grado.Grado"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorGrado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ControladorGrado controladorGra = new ControladorGrado();
    Grado g = new Grado();

    Seccion s  = new Seccion();
%>
<jsp:include page="../Principal/header.jsp"/>
           <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-grado" action="InsertarGrado">
                         <h3 align="center">Formulario para el Registro de Grados.</h3>
                           <div class="form-group col-md-12">
                                     <label for="name" class="cols-sm-3 control-label">Nombre del Grado</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="grado" name="grado" class="form-control" placeholder="Ingrese el Grado"/>
                                         </div>
                            </div>
                            <div class="form-group col-md-12">
                                     <label for="name" class="cols-sm-3 control-label">Seccion</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                   <select id="seccion" name="seccion" class="form-control">
                                                    <option <% if(s.getSeccion()== "1"){ %> selected <% }%> >A</option> 
                                                    <option <% if(s.getSeccion()== "2"){ %> selected <% }%> >B</option> 
                                                </select>
                                         </div>
                             </div>
                                <div class="form-group ">
                                    <button type="submit" id="btn-materias" class="btn btn-default btn-lg btn-block login-button">Ingresar</button>
                                </div> 
                    </form>
                </div>
            </div>
        </div>
                      <script>
                        $(document).ready(function(){
                            $("#frm-grado").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('InsertarGrado', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Grado Insertado Correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/ListaGrado.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar el grado")
                                    }
                                });
                            });

                    });
                </script>
<jsp:include page="../Principal/footer.jsp"/>