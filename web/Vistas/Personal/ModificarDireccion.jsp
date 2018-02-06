<%@page import="Include.Area"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorArea"%>
<%@page import="Include.Personal.Personal"%>
<%@page import="Controlador.ControladorPersonal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    Controlador.ControladorPersonal controladorDire = new ControladorPersonal();
    Personal dire = new Personal();
    dire = controladorDire.getDireccion(Integer.parseInt(request.getParameter("id_personal").toString()));
      Controlador.ControladorArea ca = new ControladorArea();
     List<Area> lista_area = ca.listar_area();
%>
<jsp:include page="../Principal/header.jsp"/>
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-direccion" action="direccion_Modificar">
                         <h3 align="center">Formulario para la edicion  de Administradores.</h3>
                         <input type="hidden" name="id" id="id" value="<%= dire.getId_Personal()%>"/>
                         <div class="row">
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Nombre Completo</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Nombre" value="<%= dire.getNombre()%>" name="Nombre" class="form-control" placeholder="Ingrese el nombre"/>
                                         </div>
                                </div>
                                <div class="form-group col-md-6">
                                         <label for="name" class="cols-sm-3 control-label">Apellidos Completo</label>
                                                 <div class="input-group">
                                                     <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                 <input type="text" id="Apellido" name="Apellido"  value="<%= dire.getApellido()%>" class="form-control" placeholder="Ingrese el Apellido"/>
                                                 </div>
                                 </div>
                         </div>
                           <div class="row">
                                    <div class="form-group col-md-6">
                                             <label for="name" class="cols-sm-3 control-label">Numero de Identificación</label>
                                                <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                            <input type="text" id="Dui" name="Dui"  value="<%= dire.getDui()%>" class="form-control" placeholder="Ingrese el numero de DUI"/>
                                                 </div>
                                        </div>
                                   <div class="form-group col-md-6">
                                            <label for="name" class="cols-sm-3 control-label">Telefono</label>
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" id="Telefono" name="Telefono" value="<%= dire.getTelefono()%>" class="form-control" placeholder="Ingrese el numero de telefono"/>
                                                    </div>
                                    </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                       <label for="name" class="cols-sm-3 control-label">Domicilio</label>
                                          <div class="input-group">
                                                      <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                      <input type="text" id="Domicilio" name="Domicilio" value="<%= dire.getDomicilio()%>" class="form-control" placeholder="Ingrese la direccion"/>
                                           </div>
                                  </div>
                                 <div class="form-group col-md-6">
                                       <label for="name" class="cols-sm-3 control-label">NIP</label>
                                          <div class="input-group">
                                                      <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                      <input type="text" id="Nip" name="Nip" value="<%= dire.getNip()%>" class="form-control" placeholder="Ingrese el NIP"/>
                                           </div>
                                  </div>
                             </div>
                            <div class="row">
                                 <div class="form-group col-md-6">
                                       <label for="name" class="cols-sm-3 control-label">Area</label>
                                          <div class="input-group">
                                                      <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                     <select id="Id_area" name="Id_area" required="" class="form-control">
                                                    <option selected > Seleccione el area</option>
                                                         <% for(int i=0; i < lista_area.size(); i++ ){ %>
                                                         <option value="<%=lista_area.get(i).getId_area()%> "><%= lista_area.get(i).getArea()%></option>
                                                       <% } %>
                                                    </select>
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
                        </div> 
                                
                                         <script>
                                            $(document).ready(function(){
                                                 $("#frm-direccion").submit(function(e){
                                                    e.preventDefault();
                                                   var data = $(this).serialize(); 
                                                        $.post('direccion_Modificar', data, function(res, est, jqXHR){
                                                           if(res == 'ok'){
                                                                    alert("Registro modificado correctamente");
                                                                    setTimeout(function(){
                                                                        window.location = "Vistas/Personal/ListaDireccion.jsp";   
                                                                    },100);
                                                                }else{
                                                                    alert("Ocurrio un error al modificar el registro")
                                                                }
                                                            });
                                                        });
                                                  }); 
                                                  </script>
  <jsp:include page="../Principal/footer.jsp"/>