<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Include.Area"%>
<%@page import="Controlador.ControladorArea"%>
<%@page import="Controlador.ControladorPersonal"%>
<%@page import="java.util.List"%>
<%@page import="Include.Personal.Personal"%>

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
    Personal dire = new Personal();
    Controlador.ControladorPersonal cp = new ControladorPersonal();
    List<Personal> lista_personal = cp.listar();
    Controlador.ControladorArea ca = new ControladorArea();
    List<Area> lista_area = ca.listar_area();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Principal/header.jsp"/>

        <div class="container">
            <div class="row main">
                <div class="main-logindirecion main-centerdirec">
                    <form  class="direccion" method="post" id="frm-direccion" action="InsertarDireccion">
                         <h3 align="center">Formulario para el Registro del Personal.</h3>
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
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">NIP</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nip" name="Nip" class="form-control" placeholder="Ingrese el numero de Nip"/>
                                         </div>
                                </div>
                        </div>
                           <div class="row">
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Area</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                     <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <select type="text" id="Id_Area" name="Id_Area" required="" class="form-control">
                                                    <option selected > Seleccione el area</option>
                                                         <% for(int i=0; i < lista_area.size(); i++ ){ %>
                                                          <option value="<%=lista_area.get(i).getId_area()%>"><%= lista_area.get(i).getArea()%></option>
                                                       <% } %>
                                                    </select>
                                         </div>
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
             <script>
                        $(document).ready(function(){
                            $("#frm-direccion").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('InsertarDireccion', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Administrador insertado correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/Vistas/Personal/ListaDireccion.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar al administrador")
                                    }
                                });
                            });

                    });
                </script>
<jsp:include page="../Principal/footer.jsp"/>