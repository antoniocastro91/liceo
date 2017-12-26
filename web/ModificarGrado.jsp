<%@page import="Include.Grado"%>
<%@page import="Controlador.ControladorGrado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    Controlador.ControladorGrado controladorGrado = new ControladorGrado();
    Grado grado = new Grado();
    grado = controladorGrado.getGrado(Integer.parseInt(request.getParameter("id_grado").toString()));

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="resources/boostrap/bootstrap.min.css">
       <link rel="stylesheet" href="resources/css/grados.css">
        
    </head>
    <body>
         
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-grado" action="grado_Modificar">
                         <h3 align="center">Formulario para la edicion de Grados.</h3>
                         <input type="hidden" name="id" id="id" value="<%= grado.getId_Grado()%>"/>
                         <div class="row">
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre del Grado</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="grado" name="grado"  value="<%= grado.getGrado()%>" class="form-control" placeholder="Ingrese el Grado"/>
                                         </div>
                            </div>
                            <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Seccion</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text"  id="seccion" name="seccion" value="<%= grado.getSeccion()%>" class="form-control" placeholder="Ingrese la Seccion"/>
                                         </div>
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
                                         <script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
                                         <script type="text/javascript" src="resources/js/bootstrap.min.js" ></script>
                                         <script>
                                            $(document).ready(function(){
                                                 $("#frm-grado").submit(function(e){
                                                    e.preventDefault();
                                                   var data = $(this).serialize(); 
                                                        $.post('grado_Modificar', data, function(res, est, jqXHR){
                                                           if(res == 'ok'){
                                                                    alert("grado modificado correctamente");
                                                                    setTimeout(function(){
                                                                        window.location = "ListaGrado.jsp";   
                                                                    },100);
                                                                }else{
                                                                    alert("Ocurrio un error al modificar el usuario")
                                                                }
                                                            });
                                                        });
                                                  });
                                            
                                             
                                             
                                         </script>
     
        
    </body>
</html>
