<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Controlador.ControladorPersonal"%>
<%@page import="Include.Personal.Personal"%>
<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorMaterias"%>
<%@page import="Include.Materias.Materia"%>
<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>

<%@page import="Include.Grado.Grado"%>
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
  Materia m = new Materia();
  ControladorMaterias cm = new ControladorMaterias();
  List<Materia> lista_materias =  cm.listar_materias();
  
  GradoSeccion  g = new GradoSeccion();   
  ControladorGradoSeccion cgs = new ControladorGradoSeccion();
  List<GradoSeccion> lista_gs = cgs.listar_gradoseccion();
  
  Personal p = new Personal();
  ControladorPersonal cp = new ControladorPersonal();
  List<Personal> lista_maestros = cp.listar();
  
%>
<jsp:include page="../Principal/header.jsp"/>

   <style>
        
    .main-center-reporte{
    margin-top: 10px;
    margin: 0 auto;
    max-width: 800px;
    padding: 10px 40px;
    background:#fff;
    color: #fff;
    text-shadow: none;
    -webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
    -moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
    box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
    
    .main-reporte{
    background-color: #c7ddef;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}

}

    </style>
<div class ="container">
  <div class="row main"> 
      <form onSubmit="javascript:document.form.reset();" class="" method="post" id="frm-matricula" action="Asignaciones">
        <div class="main-center-reporte">
            <fieldset class="form-control input-group">               
                <legend>Buscar</legend>
                        <h3 align="center">Formulario de Asignaciones.</h3>
                            <div class="row">
                               <div class="form-group col-md-6">
                                   <label for="name" class="cols-sm-3 control-label">Seleccione el Maestro</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                           <select type="text" id="Id_personal" name="Id_personal" required="" class="form-control">
                                                <option selected > Seleccione el personal</option>
                                                     <% for(int i=0; i < lista_maestros.size(); i++ ){ %>
                                                     <option value="<%=lista_maestros.get(i).getId_Personal()%>"><%= lista_maestros.get(i).getNombre() %></option>
                                                   <% } %>
                                            </select>
                                    </div>
                             </div>
                           <div class="form-group col-md-6">
                                <label for="name" class="cols-sm-3 control-label">Seleccione el Grado</label>
                                 <div class="input-group">
                                     <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select type="text" id="Id_Grado" name="Id_Grado" required="" class="form-control">
                                             <option selected > Seleccione el grado</option>
                                                  <% for(int i=0; i < lista_gs.size(); i++ ){ %>
                                                  <option value="<%=lista_gs.get(i).getIdGradoSeccion()%>"><%= lista_gs.get(i).getGrado_seccion()%></option>
                                                <% } %>
                                         </select>
                                 </div>
                         </div>
                    </div>
                        <div class="row">
                           <div class="form-group col-md-6">
                                <label for="name" class="cols-sm-3 control-label">Seleccione las Materias</label>
                                 <div class="input-group">
                                     <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select type="text" id="Id_Materia" name="Id_Materia" required="" class="form-control">
                                             <option selected > Seleccione las materias</option>
                                                  <% for(int i=0; i < lista_materias.size(); i++ ){ %>
                                                  <option value="<%=lista_materias.get(i).getId_Materia()%>"><%= lista_materias.get(i).getMateria()%></option>
                                                <% } %>
                                         </select>
                                 </div>
                         </div>
                    </div>
                    <div clas="row">
                         <div class="form-group col-md-6">
                            <a id="btnagregar" class=" btn-block btn btn-info" href="">Agregar</a>
                         </div>
                         <div class="form-group col-md-6">
                          <button  type="submit" id="btn-asignaciones" class="btn btn-success btn-block login-button">Guardar</button> 
                         </div>
                     </div>
                     
     </fieldset>
</div>
<div class ="container">
     <div class="row">
         <div class="col-md-2"></div>
        <div class="col-xs-8">
                            <table class="table table-hover table-striped">
                                <thead>
                                 
                                    <th>Nombre del Maestro</th>
                                    <th>Grado</th>
                                    <th>Materia</th>
                                    <th class="hidden"></th>
                                    <th class="hidden"></th>
                                    <th class="hidden"></th>
                                 
                                </thead>
                                <tbody id="datosasignaciones" >
                                   
                                </tbody>
                            </table>
                        </div>
            </div>
        </div>
    </form>  
</div>
</div>

     <script src="resources/js/jquery-3.2.1.js" type="text/javascript"></script>
    <script>
        var lista_asignaciones = [];
        $(document).ready(function(){
            
           $("#btnagregar").click(function(e){
               e.preventDefault();
              var fila = "<tr><td>"+$("#Id_personal option:selected").text()+"</td> <td>"+$("#Id_Grado option:selected").text()+"</td> <td>"+$("#Id_Materia option:selected").text()+"</td>" ;
               fila += "<td class='hidden'>"+$("#Id_personal").val()+"</td> <td class='hidden'>"+$("#Id_Grado").val()+"</td> <td class='hidden'>"+$("#Id_Materia").val()+"</td></tr>" ;
              $("#datosasignaciones").append(fila);
              
           });
           $("#btn-asignaciones").click(function(e){
            e.preventDefault();
            llenar_asignaciones();
            if(lista_asignaciones.length > 0){
                $.post("Asignaciones", {datosasig: JSON.stringify(lista_asignaciones)}, function(respuesta){
                   console.log(respuesta) ;
                   if(respuesta == "1"){
                       alert("Registro insertado correctamente");
                   }
                   else{
                       alert("No se pudo insertar el registro");
                   }
                });
            }
        });

        });
        function llenar_asignaciones(){
        var filas = $("#datosasignaciones").find("tr");
         lista_asignaciones = [];
        $.each(filas, function(indice, valor){
            lista_asignaciones.push(
                {
                    Id_Grado : $(valor).children()[4].innerText,
                    Id_Materia : $(valor).children()[5].innerText,
                    Id_personal : $(valor).children()[3].innerText
                }
            );
        });
    }
    </script>

<jsp:include page="../Principal/footer.jsp"/>