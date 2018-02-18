<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorPago"%>
<%@page import="Include.IncludePagos"%>
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
    IncludePagos pago = new IncludePagos();
    ControladorPago cp = new ControladorPago();
    pago = cp.getPago(Integer.parseInt(request.getParameter("id_pago").toString()));
    List<IncludePagos> lista_pago = cp.listar();
    
    ControladorGradoSeccion cgs = new ControladorGradoSeccion();
    List<GradoSeccion> lista_grados = cgs.listar_gradoseccion();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Principal/header.jsp"/>
<script type="text/javascript">
        function combo_alumnos(){
            $.get("Alumnos",{grados:$("#grados").val()},function(respuesta){$("#f_alumnos").html(respuesta);} );
        }
</script>
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-direccion" action="ModificarPagos">
                         <h3 align="center">Formulario para la edicion  de Administradores.</h3>
                         <input type="hidden" name="id" id="id" value="<%= pago.getIdPago()%>"/>
                         <div class="row">
                             <div class="form-group col-md-4">
                                <label for="name" class=" control-label">Seleccione el Grado</label>
                                <div class="input-group">
                                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                      <select onchange="combo_alumnos()" type="text" id="grados" name="f_grados" class="form-control">
                                            <option selected >Grados</option>
                                                <% for(int i=0; i < lista_grados.size(); i++){%>
                                                    <option value="<%=lista_grados.get(i).getIdGradoSeccion()%>"> <%=lista_grados.get(i).getGrado_seccion()%></option> 
                                                 <% }%>    
                                        </select>
                                </div>
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
                                <div class="form-group col-md-6">
                                     <label for="text" class="cols-sm-3 control-label">Pagos al dia</label>
                                      <div class="input-group">
                                     <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select type="number" id="estado" name="estado" class="form-control">
                                            <option <% if(pago.getEstado()== 1){ %> selected <% }%> value="1">Si</option>
                                            <option <% if(pago.getEstado()== 0){ %> selected <% }%> value="0">No</option>
                                        </select>
                                      </div>
                                </div>
                                 </div>
                                <div class="row">
                                    <div class="form-group ">
                                        <button type="submit" id="btn-pago" class="btn btn-warning btn-lg btn-block login-button">Actualizar</button>
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
                            $.post('ModificarPagos', data, function(res, est, jqXHR){
                               if(res === "ok"){
                                        alert("Registro modificado correctamente");
                                        setTimeout(function(){
                                            window.location = "Vistas/Pagos/ListaPagos.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al modificar el registro");
                                    }
                                });
                            });
                      }); 
        </script>
<jsp:include page="../Principal/footer.jsp"/>                         
