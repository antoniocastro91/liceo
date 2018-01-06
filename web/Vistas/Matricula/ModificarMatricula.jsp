<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="Include.Matricula.Matricula"%>
<%@page import="Controlador.Matricula.ControladorMatricula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    Controlador.Matricula.ControladorMatricula controladorMatricula = new ControladorMatricula();
    Matricula matricula = new Matricula();
    GradoSeccion gs = new GradoSeccion();
    matricula = controladorMatricula.getDireccion(Integer.parseInt(request.getParameter("id_matricula").toString()));

%>
<jsp:include page="../Principal/header.jsp"/>
         <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form class="" method="post" id="frm-matricula" action="ModificarMatricula">
                        <h3 align="center">Formulario para la Modificacion de Matricula.</h3>
                        <input type="hidden" name="id" id="id" value="<%= matricula.getId_Matricula()%>"/>
                        <div class="row">
                           <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Seleccione el Año Lectivo</label>
                                <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select type="text" id="Año" name="Año" class="form-control">
                                            <option  <% if(matricula.getAño() == "1"){ %> selected <% }%> > 2017</option>
                                            <option  <% if(matricula.getAño() == "2"){ %> selected <% }%> > 2018</option> 
                                            <option  <% if(matricula.getAño() == "3"){ %> selected <% }%> > 2019</option> 
                                            <option  <% if(matricula.getAño() == "4"){ %> selected <% }%> > 2020</option> 
                                            <option  <% if(matricula.getAño() == "5"){ %> selected <% }%> > 2021</option>
                                            <option  <% if(matricula.getAño() == "6"){ %> selected <% }%> > 2022</option> 
                                            <option  <% if(matricula.getAño() == "7"){ %> selected <% }%> > 2023</option>  
                                            <option  <% if(matricula.getAño() == "8"){ %> selected <% }%> > 2025</option> 
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
                                     <label for="name" class=" control-label">Digite el Primer Apellido</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="primerapelli" name="primerapelli" value="<%= matricula.getPrimer_Apellido()%>" class="form-control" placeholder="Ingrese el Primer Apellido"/>
                                    </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Digite el Segundo Apellido</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="segundoapelli" name="segundoapelli" value="<%= matricula.getSegundo_Apellido()%>" class="form-control" placeholder="Ingrese el Segundo Apellido"/>
                                     </div>
                            </div>  
                            <div class="form-group col-md-6">
                                     <label for="name" class=" control-label">Digite los Nombres</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="nombres" name="nombres" value="<%= matricula.getNombres()%>" class="form-control" placeholder="Ingrese los Nombres"/>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Fecha de Nacimiento</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="date" id="fechanaci" name="fechanaci" value="<%= matricula.getFecha_Nacimiento()%>" class="form-control" placeholder="Año-Mes-Dia"/>
                                     </div>
                            </div> 
                            <div class="form-group col-md-6">
                                     <label for="name" class="control-label">Ingrese la Edad</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="edad" name="edad" value="<%= matricula.getEdad()%>" class="form-control" placeholder="Edad"/>
                                    </div>
                            </div>
                        </div>
                        <div class="row">
                              <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">Seleccione el sexo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                              <select type="text" id="sexo" name="sexo" class="form-control">
                                                <option <% if(matricula.getSexo()== "1"){ %> selected <% }%> >Masculino</option> 
                                                <option <% if(matricula.getSexo()== "2"){ %> selected <% }%> >Femenino</option> 
                                             </select>
                                    </div>
                            </div>
                             <div class="form-group col-md-6">
                                          <label for="name" class="control-label">Municipio</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="municipio" name="municipio" value="<%= matricula.getMunicipio()%>" class="form-control" placeholder="Ingrese el Municipio"/>
                                     </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                       <div class="form-group">
                                     <label for="name" class="control-label">Departamento</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="depart" name="depart" value="<%= matricula.getDepartamento()%>" class="form-control" placeholder="Ingrese el Departamento"/>
                                    </div>
                            </div>   
                            </div>         
                               <div class="form-group col-md-6">
                                        <label for="name" class="cols-sm-3  control-label">Repite Grado</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <select type="text" id="repitegrado" name="repitegrado" class="form-control">
                                                 <option <% if(matricula.getRepite_Grado()== "1"){ %> selected <% }%> >Si</option> 
                                                 <option <% if(matricula.getRepite_Grado()== "2"){ %> selected <% }%> >No</option> 
                                             </select>
                                     </div>
                            </div> 
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                        <label for="name" class="cols-sm-3  control-label">Docuemntos Presentados</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="documentos" name="documentos" value="<%= matricula.getDocumentos_Presentados()%>" class="form-control">
                                     </div>
                            </div> 
                                <div class="form-group col-md-6">
                                          <label for="name" class=" control-label">Direccion Particular</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="direccion" name="direccion" value="<%= matricula.getDireccion()%>" class="form-control" placeholder="Ingrese la Direccion"/>
                                     </div>
                            </div> 
                        </div>
                        <div class="row">
                                <div class="form-group col-md-6">
                                     <label for="name" class="control-label">Numero de Telefono</label>
                                     <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="numtel" name="numtel" value="<%= matricula.getTelefono()%>" class="form-control" placeholder="Ingrese el # de Telefono"/>
                                    </div>
                                </div>  
                                    <div class="form-group col-md-6">
                                     <label for="name" class="cols-sm-3 control-label">NIE</label>
                                        <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text"  id="Nie" name="Nie" value="<%= matricula.getNIE()%>" class="form-control" placeholder="Ingrese el numero de NIE"/>
                                         </div>
                                </div>
                        </div>
                          <h3 align="center">REPRESENTANTES</h3>
                          <div class="row">
                          <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Nombre de la Madre</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="nommadre" name="nommadre" value="<%= matricula.getNombre_Madre()%>" class="form-control" placeholder="Ingrese el Nombre de la Madre"/>
                                     </div>
                            </div> 
                              <div class="form-group col-md-6 ">
                                     <label for="name" class="control-label">Clase de Trabajo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="trabajomadre" name="trabajomadre" value="<%= matricula.getTrabajo_Madre()%>" class="form-control" placeholder="Ingrese la clase de trabajo"/>
                                    </div>
                            </div>
                          </div>
                             <div class="row">
                          <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Nombre del Padre</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="nompadre" name="nompadre" value="<%= matricula.getNombre_Padre()%>" class="form-control" placeholder="Ingres el Nombre del Padre"/>
                                     </div>
                            </div> 
                              <div class="form-group col-md-6 ">
                                     <label for="name" class="control-label">Clase de Trabajo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="trabajopadre" name="trabajopadre" value="<%= matricula.getTrabajo_Padre()%>" class="form-control" placeholder="Ingrese la clase de trabajo"/>
                                    </div>
                            </div>
                          </div>
                               <div class="row">
                          <div class="form-group col-md-6">
                                          <label for="name" class="cols-sm-3 control-label">Parentesco</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="parentesco" name="parentesco" value="<%= matricula.getParentesco()%>" class="form-control" placeholder="Ingrese el Tipo de Parentesco"/>
                                     </div>
                            </div>
                             <div class="form-group col-md-6">
                                          <label for="name" class="control-label">Nombre del Parentesco</label>
                                     <div class="input-group">
                                             <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                             <input type="text" id="nomparent" name="nomparent" value="<%= matricula.getNombre_Parentesco()%>" class="form-control" placeholder="Ingrese el Nombre del Familiar"/>
                                     </div>
                            </div> 
                            </div>
                          <div clas="row">
                              <div class="form-group  ">
                                     <label for="name" class=" cols-sm-3 control-label">Clase de Trabajo</label>
                                    <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" id="trabajoparent" name="trabajoparent" value="<%= matricula.getTrabajo_Parentesco()%>" class="form-control" placeholder="Ingrese la clase de trabajo"/>
                                    </div>
                            </div>
                          </div>
                          
                             <div class="row">
                            <div class="form-group ">
                                <button type="submit" id="btn-registro" class="btn btn-primary btn-lg btn-block login-button">Actualizar</button>
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
                                $.post('ModificarMatricula', data, function(res, est, jqXHR){
                                   if(res == 'ok'){
                                            alert("Registro modificado correctamente");
                                            setTimeout(function(){
                                                window.location = "Vistas/Matricula/ListaMatricula.jsp";   
                                            },100);
                                        }else{
                                            alert("Ocurrio un error al modificar el registro")
                                        }
                                    });
                                });
                          }); 
                          </script>

 <jsp:include page="../Principal/footer.jsp"/>