
<%@page import="Include.Usuario.Usuario"%>
<%@page import="Controlador.Asignaciones.ControladorAsignaciones"%>
<%@page import="Include.Asignaciones.IncludeAsignaciones"%>
<%@page import="Include.GradoSeccion.GradoSeccion"%>
<%@page import="Controlador.GradoSeccion.ControladorGradoSeccion"%>
<%@page import="Include.Seccion.Seccion"%>
<%@page import="Controlador.Conexion"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Include.Trimestre"%>
<%@page import="Controlador.ControladorTrimestre"%>
<%@page import="Include.Grado.Grado"%>
<%@page import="Controlador.ControladorGrado"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorMaterias"%>
<%@page import="Include.Materias.Materia"%>
<%@page import="Include.Alumno"%>
<%@page import="Controlador.ControladorAlumno"%>
<jsp:include page="../Principal/header.jsp"/>

<% 
    HttpSession sesion = request.getSession(true);
    Object usu = sesion.getAttribute("id_personal") == null ? null : sesion.getAttribute("id_personal");
    Conexion con = new Conexion();
    ControladorAsignaciones cm = new ControladorAsignaciones();
    IncludeAsignaciones m = new IncludeAsignaciones();
    List<IncludeAsignaciones> lista_materia = cm.listar(Integer.parseInt(usu.toString()));
    List<IncludeAsignaciones> lista_materiatodas = cm.listar_materiastodas(Integer.parseInt(usu.toString()));
    
    ControladorAlumno ca = new ControladorAlumno();
    Alumno alum = new Alumno();
    List<Alumno> lista_alumno = ca.listar_alumnos();
    List<Alumno> lista_alumno_primergr = ca.listar_alumnos_primergrado();
    
    ControladorTrimestre ct = new ControladorTrimestre();
    ControladorGradoSeccion cg = new ControladorGradoSeccion();
    Trimestre t = new Trimestre();
    List<Trimestre> lista_trimestre = ct.listar_trimestre();
    
    List<IncludeAsignaciones> lista_grado_seccion = cm.listar_grado(Integer.parseInt(usu.toString()));
    List<IncludeAsignaciones> lista_todosgrado_seccion = cm.listar_gradotodos(Integer.parseInt(usu.toString()));
    Usuario usuario = new Usuario();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
        function combo_mes(){
            /*alert("holaa soy un select aninado");*/
            $.get("Meses",{trimestre:$("#trimestre").val()},function(respuesta){$("#f_mes").html(respuesta);} );
        }
    </script>
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
    <div class="main-center-reporte">
            <fieldset class="form-control input-group">               
              <legend>Buscar</legend>
        <div class="row">
           <form class="calificaciones" method="post" id="frm-calificaciones" action="InsertarCalificaciones">
                        <div class="col-xs-3">
                           <select  type="text" id="grado" name="grado" class="form-control">
                                   <option selected >Grado</option>
                                   
                                       <% 
                                          if (usuario.getId_Rol() == 1){
                                           for(int f=0; f < lista_grado_seccion.size(); f++){
                                                
                                        %>
                                           <option value="<%= lista_grado_seccion.get(f).getId_Grado()%>"> <%= lista_grado_seccion.get(f).getNomGrado()%></option>
                                       
                                      <% }%>
                                       <% } else {
                                            for(int h=0; h < lista_todosgrado_seccion.size(); h++){
                                       %>
                                       <option value="<%= lista_todosgrado_seccion.get(h).getId_Grado()%>"> <%= lista_todosgrado_seccion.get(h).getNomGrado()%></option>
                                       
                                      <% }}%>
                                  
                               </select>
                          </div>
                            <div class="col-xs-3">
                                <select type="text" id="materia" name="materia" class="form-control">
                                    <option selected >Materia</option>
                                       <% 
                                           if(usuario.getId_Rol() != 1){
                                           for(int f=0; f < lista_materia.size(); f++){
                                                
                                        %>
                                           <option value="<%= lista_materia.get(f).getId_Materia()%>"> <%= lista_materia.get(f).getNomMateria()%></option>
                                       
                                      <% }%>
                                       <% } else {
                                            for(int h=0; h < lista_materiatodas.size(); h++){
                                       %>
                                       <option value="<%= lista_materiatodas.get(h).getId_Materia()%>"> <%= lista_materiatodas.get(h).getNomMateria()%></option>
                                       
                                      <% }}%>
                                </select>
                            </div>
                            <div class="col-xs-3">
                                 <select onchange="combo_mes()" type="text" id="trimestre" name="f_trimestre" class="form-control">
                                      <option selected >Trimestre</option>
                                          <% for(int i=0; i < lista_trimestre.size(); i++){%>
                                              <option value="<%=lista_trimestre.get(i).getId_Trimestre()%>"> <%=lista_trimestre.get(i).getTrimestre()%></option> 
                                           <% }%>    
                                 </select>
                                   <input type="hidden" name="i_opc" id="i_opc"/>
                            </div>
                            <div class="col-xs-3">             
                                 <select name="f_mesa" id="f_mes" class="form-control">
                                  <option value="">Mes</option>
                                </select>
                            </div>
                            <div class="col-xs-3">             
                                 <select name="anio" id="anio" class="form-control">
                                  <option value="2015">2015</option>
                                  <option value="2016">2016</option>
                                  <option value="2017">2017</option>
                                  <option value="2018">2018</option>
                                  <option value="2019">2019</option>
                                  <option value="2020">2020</option>
                                  <option value="2021">2021</option>
                                  <option value="2022">2022</option>
                                </select>
                            </div>
                             <br/>
                            <br/>
                               <div class="row">
                                   <label class="hidden" for=""></label>
                                        <div class="col-xs-6"> 
                                        <a href="#" class="btn pull-right btn-info" id="btn-enviar-calificaciones">Guardar</a>
                                   </div>
                                 </div>
                            </form> 
                       </div>
            </fieldset>
        </div>                                    
    </div>                                    
</div><br/>                                            
<div class ="container">
    <div class="row" align="center">
        <div class="col-xs-12 text-center">
            <table class="table text-info table-bordered table-hover table-striped table-responsive">
                    <thead >
                        <tr>
                            <th><center>NIE </center> </th>
                            <th> <center>Nombre del alumno </center> </th>
                            <th><center>A1 20% </center> </th>
                            <th><center>A2 30% </center> </th>
                            <th><center>A3 50% </center> </th>
                            <th><center>PROMEDIO </center> </th>
                            <th class="hidden"></th>
                        </tr>
                        </thead>
                            <tbody id="tbody_alumnos">
                        </tbody>
           
                    </table>
               </div>
    </div>
</div>

<script>
    var lista_calificaciones = [];
    $(function(){
        
        $("#btn-guardar").click(function(){
            
        });
        
        $('#grado').change(function(){
            $.get("Matricula", {opcion:"listar", seccion: $(this).val()}, function(respuesta){
               $('#tbody_alumnos').html(respuesta);
            });
        });
        
        $("#btn-enviar-calificaciones").click(function(e){
            e.preventDefault();
            llenar_lista_calificaciones();
            if(lista_calificaciones.length > 0){
                $.post("InsertarCalificaciones", {calificaciones: JSON.stringify(lista_calificaciones)}, function(respuesta){
                   console.log(respuesta) ;
                   if(respuesta == "1"){
                       alert("Notas insertadas correctamente");
                       window.location("http://localhost:26683/liceo/Vistas/Calificaciones/Calificaciones.jsp");
                   }
                   else{
                       alert("No se pudo insertar las notas");
                   }
                });
            }
        });
    });
    
    function llenar_lista_calificaciones(){
        var filas = $("#tbody_alumnos").find("tr");
         lista_calificaciones = [];
        $.each(filas, function(indice, valor){
            lista_calificaciones.push(
                {
                    id_matricula: $(valor).children()[7].innerText,
                    nota1: $(valor).children()[2].children[0].value,
                    nota2: $(valor).children()[3].children[0].value,
                    nota3: $(valor).children()[4].children[0].value,
                    promedio: $(valor).children()[5].children[0].value,
                    grado_seccion: $("#grado").val(),
                    id_materia: $("#materia").val(),
                    id_mes: $("#f_mes").val(),
                    anio: $("#anio").val()
                }
            );
        });
    }
    
    function promedio(event){
        var fila = $(event).parent().parent();
        var nota1 = parseFloat(fila.children()[2].children[0].value);
        var nota2 = parseFloat(fila.children()[3].children[0].value);
        var nota3 = parseFloat(fila.children()[4].children[0].value);
        var promedio = (nota1*0.2 + nota2*0.3 + nota3*0.5);
        if(nota1 >= 0 && nota2 >= 0 && nota3 >= 0){
             Math.round(promedio);
            fila.children()[5].children[0].value = promedio;
           
        }else{
            fila.children()[5].children[0].value = "";
        }
    }
</script>
        
<jsp:include page="../Principal/footer.jsp"/>
