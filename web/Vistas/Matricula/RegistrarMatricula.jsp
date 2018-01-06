<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>
<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="Controlador.ControladorGrado"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Include.Grado.Grado"%>
<%@page import="Include.Seccion.Seccion"%>
<jsp:include page="../Principal/header.jsp"/>
<%
  Conexion con = new Conexion();
  GradoSeccion gs = new GradoSeccion();
  Grado  g = new Grado();   
  ControladorGradoSeccion cgs = new ControladorGradoSeccion();
     
%>
       <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-matricula" action="InsertarMatricula">
                        <h3 align="center">Formulario para Registro de Matricula.</h3>
                        <div class="row">
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
                         <div class="form-group col-md-6">
                                              
                                     <label for="name" class=" control-label">Seleccione el Grado</label>
                                                 <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select id="Grado" name="Grado" class="form-control">
                                             <option <% if(gs.getIdGradoSeccion()== 1){ %> selected <% }%> value="1">Primero A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 2){ %> selected <% }%> value="2"> Primero B</option>
                                             <option <% if(gs.getIdGradoSeccion()== 3){ %> selected <% }%> value="3">Segundo A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 4){ %> selected <% }%> value="4">Segundo B</option>
                                             <option <% if(gs.getIdGradoSeccion()== 5){ %> selected <% }%> value="5">Tercero A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 6){ %> selected <% }%> value="6">Tercero B</option>
                                             <option <% if(gs.getIdGradoSeccion()== 7){ %> selected <% }%> value="7">Cuarto A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 8){ %> selected <% }%> value="8">Cuarto B</option>
                                             <option <% if(gs.getIdGradoSeccion()== 9){ %> selected <% }%> value="9">Quinto A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 10){ %> selected <% }%> value="10">Sexto A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 11){ %> selected <% }%> value="11">Septimo A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 12){ %> selected <% }%> value="12">Octavo A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 13){ %> selected <% }%> value="13">Noveno A</option>
                                             <option <% if(gs.getIdGradoSeccion()== 14){ %> selected <% }%> value="14">Primer Año</option>
                                             <option <% if(gs.getIdGradoSeccion()== 15){ %> selected <% }%> value="15">Segundo Año</option>
                                       </select>
                                      
                                 </div>
                            </div>
                        </div>
                        <div class="row">
                      
                             <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Digite el Primer Apellido</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="primerapelli" name="primerapelli" class="form-control" placeholder="Ingrese el Primer Apellido"/>
                                    </div>
                            </div> 
                              <div class="form-group col-md-6">
                                          <label for="name" class="control-label">Digite el Segundo Apellido</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="segundoapelli" name="segundoapelli" class="form-control" placeholder="Ingrese el Segundo Apellido"/>
                                     </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Digite los Nombres</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="nombres" name="nombres" class="form-control" placeholder="Ingrese los Nombres"/>
                                    </div>
                            </div>
                            <div class="form-group col-md-6">
                                          <label for="name" class="control-label">Fecha de Nacimiento</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="date" id="fechanaci" name="fechanaci" class="form-control" placeholder="Año-Mes-Dia"/>
                                     </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Seleccione el sexo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                              <select type="text" id="sexo" name="sexo" class="form-control">
                                                 <option>Masculino</option>
                                                 <option>Femenino</option>
                                             </select>
                                    </div>
                             </div>
                            <div class="form-group col-md-6">
                                     <label for="name" class="control-label">Ingrese la Edad</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="edad" name="edad" class="form-control" placeholder="Edad"/>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                                <div class="form-group col-md-6">
                                             <label for="name" class="control-label">Municipio</label>
                                        <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" id="municipio" name="municipio" class="form-control" placeholder="Ingrese el Municipio"/>
                                        </div>
                               </div> 
                               <div class="form-group col-md-6">
                                          <div class="form-group">
                                        <label for="name" class="control-label">Departamento</label>
                                       <div class="input-group">
                                               <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                               <input type="text" id="depart" name="depart" class="form-control" placeholder="Ingrese el Departamento"/>
                                       </div>
                               </div>   
                            </div>  
                       </div>  
                        <div class="row">               
                               <div class="form-group col-md-6">
                                        <label for="name" class="cols-sm-3  control-label">Repite Grado</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <select type="text" id="repitegrado" name="repitegrado" class="form-control">
                                                 <option>Si</option>
                                                 <option>No</option>
                                             </select>
                                     </div>
                            </div> 
                                <div class="form-group col-md-6">
                                          <label for="name" class="control-label">Docuemntos Presentados</label>
                                       <div class="input-group">
                                               <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                               <input type="text" id="documentos" name="documentos"  class="form-control" placeholder="Ingrese los documentos presentados ">
                                       </div>
                              </div> 
                        </div>
                        <div class="row">
                                <div class="form-group col-md-6">
                                              <label for="name" class="cols-sm-3 control-label">Direccion Particular</label>
                                         <div class="input-group">
                                                 <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                 <input type="text" id="direccion" name="direccion" class="form-control" placeholder="Ingrese la Direccion"/>
                                         </div>
                                </div> 
                                <div class="form-group col-md-6">
                                        <label for="name" class="control-label">Numero de Telefono</label>
                                        <div class="input-group">
                                               <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                               <input type="text" id="numtel" name="numtel" class="form-control" placeholder="Ingrese el # de Telefono"/>
                                       </div>
                                </div> 
                        </div>
                        <div class="row">
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">NIE</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text"  id="Nie" name="Nie" class="form-control" placeholder="Ingrese el numero de NIE"/>
                                         </div>
                                </div>
                        </div>
                          <h3 align="center">REPRESENTANTES</h3>
                          <div class="row">
                          <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Nombre de la Madre</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="nommadre" name="nommadre" class="form-control" placeholder="Ingrese el Nombre de la Madre"/>
                                     </div>
                            </div> 
                              <div class="form-group col-md-6 ">
                                     <label for="name" class="control-label">Clase de Trabajo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="trabajomadre" name="trabajomadre" class="form-control" placeholder="Ingrese la clase de trabajo"/>
                                    </div>
                            </div>
                          </div>
                             <div class="row">
                          <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Nombre del Padre</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="nompadre" name="nompadre" class="form-control" placeholder="Ingres el Nombre del Padre"/>
                                     </div>
                            </div> 
                              <div class="form-group col-md-6 ">
                                     <label for="name" class="control-label">Clase de Trabajo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="trabajopadre" name="trabajopadre" class="form-control" placeholder="Ingrese la clase de trabajo"/>
                                    </div>
                            </div>
                          </div>
                               <div class="row">
                          <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Parentesco</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="parentesco" name="parentesco" class="form-control" placeholder="Ingrese el Tipo de Parentesco"/>
                                     </div>
                            </div>
                             <div class="form-group col-md-6">
                                          <label for="name" class="control-label">Nombre del Parentesco</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="nomparent" name="nomparent" class="form-control" placeholder="Ingrese el Nombre del Familiar"/>
                                     </div>
                            </div> 
                            </div>
                          <div clas="row">
                              <div class="form-group  ">
                                     <label for="name" class=" cols-sm-3 control-label">Clase de Trabajo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="trabajoparent" name="trabajoparent" class="form-control" placeholder="Ingrese la clase de trabajo"/>
                                    </div>
                            </div>
                          </div>
                          
                             <div class="row">
                            <div class="form-group ">
                                <button type="submit" id="btn-registro" class="btn btn-primary btn-lg btn-block login-button">Ingresar</button>
                            </div> 
                        </div>    
                    </form>
                </div>
            </div>
        </div>
                 <script>
                        $(document).ready(function(){
                            $("#frm-matricula").submit(function(e){
                                e.preventDefault();
                                var data = $(this).serialize();
                                $.post('InsertarMatricula', data, function(res, est, jqXHR){
                                    if(res == '1'){
                                        alert("Matricula Insertada Correctamente");
                                        setTimeout(function(){
                                            window.location = "/liceo/Vistas/Matricula/ListaMatricula.jsp";   
                                        },100);
                                    }else{
                                        alert("Ocurrio un error al insertar el la matricula");
                                    }
                                });
                            });

                    });
                </script>


<jsp:include page="../Principal/footer.jsp"/>