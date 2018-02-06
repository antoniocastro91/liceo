<%-- 
    Document   : RegitrarUsuarios
    Created on : 06-ene-2018, 17:39:52
    Author     : Antonio Castro
--%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorPersonal"%>
<%@page import="Include.Personal.Personal"%>
<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.Usuario.Usuario"%>
<%
    ControladorUsuario cu = new ControladorUsuario();
    Usuario usuario = new Usuario();
    Personal p = new Personal();
    ControladorPersonal cp = new ControladorPersonal();
    List<Personal> lista_personal = cp.listar();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Principal/header.jsp"/>
   
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-usuarios" action="Usuarios_Insertar">
                        <h3 align="center">Formulario para Registro de Usuarios.</h3>
                        <div class="row">
                             <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Ingrese el usuario</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                         <input type="text" id="Usuario" name="Usuario" class="form-control" placeholder="Ingrese el usuario"/>
                                    </div>
                              </div>
                             <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Ingrese una contraseña</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="password" id="Clave" name="Clave" class="form-control" placeholder="Ingrese una contraseña"/>
                                    </div>
                              </div>
                        </div>
                        <div class="row">
                             <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Seleccione el estado del Usuario</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select id="Estado" name="Estado" class="form-control">
                                             <option <% if(usuario.getEstado()== 1){ %> selected <% }%> value="1">Activo</option>
                                             <option <% if(usuario.getEstado()== 0){ %> selected <% }%> value="0">Inactivo</option>
                                       </select>
                                      
                                 </div>
                            </div>
                             <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Seleccione el rol del Usuario</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select id="Rol" name="Rol" class="form-control">
                                             <option <% if(usuario.getId_Rol()== 1){ %> selected <% }%> value="1">Administrador</option>
                                             <option <% if(usuario.getId_Rol()== 2){ %> selected <% }%> value="2">Profesor</option>
                                       </select>
                                      
                                 </div>
                            </div>
                            </div>
                            <div class="row">
                             <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Seleccione el Personal</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <select type="text" id="Id_personal" name="Id_personal" required="" class="form-control">
                                        <option selected > Seleccione el area</option>
                                             <% for(int i=0; i < lista_personal.size(); i++ ){ %>
                                              <option value="<%=lista_personal.get(i).getId_Personal()%>"><%= lista_personal.get(i).getNombre()%></option>
                                           <% } %>
                                    </select>
                                 </div>
                            </div>
                            </div>
                            <div clas="row">
                                <div class="form-group ">
                                    <button type="submit" id="btn-registro" class="btn btn-success btn-lg btn-block login-button">Ingresar</button>
                                </div>
                            </div>
                      
                    </form>
                </div>
            </div>
        </div>
                <script>
                     $(document).ready(function(){
                            $("#frm-usuarios").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('Usuarios_Insertar', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Usuario insertado Correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/Vistas/IngreoUsuarios/ListaUsuario.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar el usuario");
                                    }
                                });
                            });

                    });
                </script>
                                           
   
<jsp:include page="../Principal/footer.jsp"/>
