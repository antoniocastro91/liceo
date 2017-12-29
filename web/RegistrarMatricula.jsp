<%@page import="Include.Grado"%>
<jsp:include page="header.jsp"/>
<%
Grado grado = new Grado();    
%>
       <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-profesores" action="InsertarProfesores">
                        <h3 align="center">Formulario para Registro de Matricula.</h3>
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Seleccione el Año Lectivo</label>
                                <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select type="text" id="Año" name="Año" class="form-control">
                                            <option > 2017</option> 
                                            <option > 2018</option> 
                                            <option > 2019</option> 
                                            <option > 2020</option> 
                                            <option > 2021</option>
                                            <option > 2022</option> 
                                            <option > 2023</option>  
                                            <option > 2025</option> 
                                        </select>
                                 </div>
                            </div>  
                         <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Seleccione el Grado</label>
                                <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select id="Grado" name="Grado" class="form-control">
                                                 <option <% if(grado.getGrado()== "1"){ %> selected <% }%> value="1">Primero</option> 
                                                 <option <% if(grado.getGrado()== "2"){ %> selected <% }%> value="2">Segundo</option> 
                                        </select>
                                 </div>
                            </div>    
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Seleccione la Seccion</label>
                                <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select id="Seccion" name="Seccion" class="form-control">
                                            <option <% if(grado.getSeccion()== "1"){ %> selected <% }%> value="1">A</option> 
                                            <option <% if(grado.getSeccion()== "2"){ %> selected <% }%> value="2">B</option> 
                                        </select>
                                 </div>
                            </div> 
                             <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Digite el Primer Apellido</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="primerapelli" name="primerapelli" class="form-control" placeholder="Ingrese el Primer Apellido"/>
                                    </div>
                            </div>  
                            <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Digite el Segundo Apellido</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="segundoapelli" name="segundoapelli" class="form-control" placeholder="Ingrese el Segundo Apellido"/>
                                     </div>
                            </div>  
                            <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Digite los Nombres</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="nombres" name="nombres" class="form-control" placeholder="Ingrese los Nombres"/>
                                    </div>
                            </div> 
                            <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Fecha de Nacimiento</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="fechanaci" name="fechanaci" class="form-control" placeholder="Año-Mes-Dia"/>
                                     </div>
                            </div> 
                            <div class="form-group">
                                     <label for="name" class="cols-sm-3 control-label">Ingrese la Edad</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="edad" name="edad" class="form-control" placeholder="Edad"/>
                                    </div>
                            </div> 
                    </form>
                </div>
            </div>
        </div>



<jsp:include page="footer.jsp"/>