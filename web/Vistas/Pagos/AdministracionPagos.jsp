<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>
<%
         HttpSession sesion = request.getSession(true);
    String usu = sesion.getAttribute("usuario") == null ? "" : sesion.getAttribute("usuario").toString();
    String url = response.encodeRedirectURL(request.getContextPath() + "/Vistas/Principal/index.jsp");
    if(usu == ""){
        response.sendRedirect(url);
        return;
    }
    Object nivel = sesion.getAttribute("nivel") == null ? null : sesion.getAttribute("nivel");
    if (Integer.parseInt(nivel.toString()) != 1){
        response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/Vistas/Principal/Principal.jsp"));
    }  
    ControladorUsuario controladorUsuario = new ControladorUsuario();
    controladorUsuario.setId_usuario(Integer.parseInt(session.getAttribute("id_personal").toString()));
  ControladorGradoSeccion cgs = new ControladorGradoSeccion();
  List<GradoSeccion> lista_grados = cgs.listar_gradoseccion();
%>
<jsp:include page="../Principal/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
        function combo_alumnos(){
            $.get("Alumnos",{grados:$("#grados").val()},function(respuesta){$("#f_alumnos").html(respuesta);} );
        }
</script>
           <div class="container">
            <div class="row main">
                <div class="main-loginalum main-centeralum">
                    <form class="" method="post" id="frm-pagos" action="InsertarPagos">
                         <h3 align="center">Formulario para el Registro de Pagos.</h3>
                         <div class="row">
                            <div class="form-group col-md-4">
                                <label for="name" class=" control-label">Seleccione el Grado</label>
                                      <select onchange="combo_alumnos()" type="text" id="grados" name="f_grados" class="form-control">
                                            <option selected >Grados</option>
                                                <% for(int i=0; i < lista_grados.size(); i++){%>
                                                    <option value="<%=lista_grados.get(i).getIdGradoSeccion()%>"> <%=lista_grados.get(i).getGrado_seccion()%></option> 
                                                 <% }%>    
                                        </select>
                                
                                </div>
                               <div class="form-group col-md-8">
                                 <label for="name" class=" control-label">Seleccione el Alumno</label>
                                   <div class="input-group">
                                       <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select name="f_alumno" id="f_alumnos" class="form-control">
                                            <option value="">Alumnos</option>
                                        </select>       
                                    </div>
                                </div>
                            </div>
                                <div class="row">
                                            <div class="form-group col-md-4">
                                                <label for="name" class="control-label">Pagos al Día</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <select name="estado" id="estado" class="form-control">
                                                                <option value="1">Si</option>
                                                                <option value="0">No</option>
                                                    </select>       
                                                </div>
                                            </div>
                                 </div>
                                    <div class="form-group ">
                                        <button type="submit" id="btn-pago" class="btn btn-warning btn-lg btn-block login-button">Ingresar</button>
                                    </div> 
                    </form>
                </div>
            </div>
        </div>
        <script>
                     $(document).ready(function(){
                            $("#frm-pagos").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('InsertarPagos', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Datos insertados Correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/Vistas/Pagos/ListaPagos.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar el dato");
                                    }
                                });
                            });

                    });
                </script>
<jsp:include page="../Principal/footer.jsp"/>