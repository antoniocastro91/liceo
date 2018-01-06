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
    Conexion con = new Conexion();
    ControladorMaterias cm = new ControladorMaterias();
    Materia m = new Materia();
    List<Materia> lista_materia = cm.listar_materias();
    ControladorAlumno ca = new ControladorAlumno();
    Alumno usuario = new Alumno();
    List<Alumno> lista_alumno = ca.listar_alumnos();
    List<Alumno> lista_alumno_primergr = ca.listar_alumnos_primergrado();
    
    ControladorTrimestre ct = new ControladorTrimestre();
    ControladorGradoSeccion cg = new ControladorGradoSeccion();
    Trimestre t = new Trimestre();
    List<Trimestre> lista_trimestre = ct.listar_trimestre();
    List<GradoSeccion> lista_grado_seccion = cg.listar_gradoseccion();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="resources/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
        function combo_mes(){
            /*alert("holaa soy un select aninado");*/
           
           $.get("Meses",{trimestre:$("#trimestre").val()},function(respuesta){$("#f_mes").html(respuesta);} );
        }
    </script>
  <div class ="container">
       <form class="calificaciones" method="post" id="frm-calificaciones" action="InsertarCalificaciones">
                            <div class="col-xs-3">
                                <select  type="text" id="grado" name="grado" class="form-control">
                                        <option selected > Seleccione el Grado</option>
                                            <% 
                                                           for(int f=0; f < lista_grado_seccion.size(); f++){
                                                           
                                             %>
                                                <option value="<%= lista_grado_seccion.get(f).getIdGradoSeccion()%>"> <%= lista_grado_seccion.get(f).getGrado_seccion()%></option>

                                            <% }%>
                                                </select>
                               </div>
                                <div class="col-xs-3">
                                            <select type="text" id="materia" name="materia" class="form-control">
                                                <option selected > Seleccione la materia</option>
                                                <% 
                                                  for(int i=0; i < lista_materia.size(); i++)
                                              { 
                                                  %>
                                                <option > <%= lista_materia.get(i).getMateria() %></option>
                                                    <% }%>
                                            </select>
                                </div>
                          
                               <div class="col-xs-3">
                                                   <%
                                                   Statement statement = con.getConnection().createStatement();
                                                   ResultSet rs = statement.executeQuery("select * from Trimestre");        
                                                    %>
                                                 <select onchange="combo_mes()" type="text" id="trimestre" name="f_trimestre" class="form-control">
                                                    <option selected > Seleccione el Trimestre</option>

                                                     <% while(rs.next()) { %>
                                                     <option value="<%=rs.getString("Id_Trimestre")%>"> <%=rs.getString("Trimestre")%></option> 
                                                     <% }%>    
                                                 
                                                 </select>
                                                 <input type="hidden" name="i_opc" id="i_opc"/>
                             </div>
                            <div class="col-xs-3">             
                                  <select name="f_mesa" id="f_mes" class="form-control">
                                   <option value="">Seleccione el Mes</option>
                                 </select>
                            </div>  
                                                     <button>+</button>
       </form> 
  </div>
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-hover table-striped" >
                    <thead>
                   
                        <tr>
                            <th><center>NIE </center> </th>
                            <th> <center>Nombre del alumno </center> </th>
                            <th><center>A1 20% </center> </th>
                            <th><center>A2 30% </center> </th>
                            <th><center>A3 50% </center> </th>
                            <th><center>PROMEDIO </center> </th>

                        </tr>
                     
                    </thead>
                    <tbody id="tbody_alumnos">
                </tbody>
           
            </table>
       
               </div>
         
    </div>
                  
</div>

<script>
    $(function(){
        $('#grado').change(function(){
            $.get("Matricula", {opcion:"listar", seccion: $(this).val()}, function(respuesta){
               $('#tbody_alumnos').html(respuesta);
            });
        });
        
        $("#frm-calificaciones").submit(function(e){
            e.preventDefault();
            var filas = $("#tbody_alumnos").find("tr");
            var lista_calificaciones = [];
            $.each(filas, function(indice, valor){
                lista_calificaciones.push(
                        {
                            id_alumno: $(valor).children()[0].innerText,
                            nota1: $(valor).children()[2].children[0].value,
                            nota2: $(valor).children()[3].children[0].value,
                            nota3: $(valor).children()[4].children[0].value,
                            promedio: $(valor).children()[5].children[0].value,
                        }
                        );
            });
            console.log(lista_calificaciones);
            return false;
        });
    });
    
    function promedio(event){
        var fila = $(event).parent().parent();
        var nota1 = parseFloat(fila.children()[2].children[0].value);
        var nota2 = parseFloat(fila.children()[3].children[0].value);
        var nota3 = parseFloat(fila.children()[4].children[0].value);
        var promedio = (nota1*0.2 + nota2*0.3 + nota3*0.5);
        if(nota1 >= 0 && nota2 >= 0 && nota3 >= 0){
            fila.children()[5].children[0].value = promedio;
        }else{
            fila.children()[5].children[0].value = "";
        }
    }
</script>
        
<jsp:include page="../Principal/footer.jsp"/>
