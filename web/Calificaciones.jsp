<%@page import="Controlador.Conexion"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Include.Trimestre"%>
<%@page import="Controlador.ControladorTrimestre"%>
<%@page import="Include.Grado"%>
<%@page import="Controlador.ControladorGrado"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorMaterias"%>
<%@page import="Include.Materia"%>
<%@page import="Include.Alumno"%>
<%@page import="Controlador.ControladorAlumno"%>
<jsp:include page="header.jsp"/>

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
    Trimestre t = new Trimestre();
    List<Trimestre> lista_trimestre = ct.listar_trimestre();
    ControladorGrado cg = new ControladorGrado();
    Grado g = new Grado();
    List<Grado> lista_grado = cg.listar();


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
                                                           for(int f=0; f < lista_grado.size(); f++)
                                                       { 
                                             %>
                                                <option value="<%= lista_grado.get(f).getId_Grado()%>"> <%= lista_grado.get(f).getGrado()%> <%= lista_grado.get(f).getSeccion()%></option>

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
            $.get("Alumnos", {opcion:"listar", seccion: $(this).val()}, function(respuesta){
               $('#tbody_alumnos').html(respuesta);
            });
        });
    });
</script>
        
<jsp:include page="footer.jsp"/>
