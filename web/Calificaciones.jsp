<%@page import="Controlador.ControladorMaterias"%>
<%@page import="Include.Materia"%>
<%@page import="Include.Alumno"%>
<%@page import="Controlador.ControladorAlumno"%>
<jsp:include page="header.jsp"/>
<% 

    ControladorAlumno controladorUsuario = new ControladorAlumno();
    Alumno usuario = new Alumno();
    

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
          <form class="calificaciones" method="post" id="frm-calificaciones" action="InsertarCalificaciones">
             <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <select type="text" id="nivel" name="nivel" class="form-control">
                                        <option selected > Seleccione la materia</option>
                                        <%
                                            ControladorMaterias cm = new ControladorMaterias();
                                            Materia m = new Materia();
                                            List<Materias> lm = cm.
                                        %>
                                    </select>
                                </div>
             <label> Alumno</label>
            <input type="text" id="Id_Alumno" name="Id_Alumno">
            <br>
            <label> A1 20%</label>
            <input type="text" id="Nota1" name="Nota1">
            <br>
             <label> A2 30%</label>
            <input type="text" id="Nota2" name="Nota2">
            <br>
             <label> A3 50%</label>
            <input type="text" id="Nota3" name="Nota3">
            <br>
            <label> Promedio</label>
            <input type="text" id=" Promedio" name="Promedio">
            <br>
             <label> Grado</label>
            <input type="text" id="Id_Grado" name="Id_Grado">
            <br>
             <label> Materia</label>
            <input type="text" id="Id_Materia" name="Id_Materia">
            <br>
             <label> Trimestre</label>
             <input type="text" id="Id_Trimestre" name="Id_Trimestre">
            <br>
             <label> Profesor</label>
            <input type="text" id="Id_Profesor" name="Id_Profesor">
            <br>             
            <button type="submit" id="btn-grado" >Ingresar</button>
             </form>
                  <div class ="container">
    <div class="row">
        <div class="col-xs-12">
            
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Nombre del alumno </th>
                        <th>A1 20%</th>
                        <th>A2 30%</th>
                        <th>A3 50%</th>
                        <th>PROMEDIO</th>
                                          
                    </tr>
                </thead>
                <tbody>
                    <%--
                    <%
                        for(int i = 0; i < lista_Direcion.size(); i++){
                    %> 
                    <tr><%--
                        <td><%=lista_Direcion.get(i).getNomDireccion()%></td>
                        <td><%=lista_Direcion.get(i).getApeDireccion()%></td>
                        <td><%=lista_Direcion.get(i).getDui()%></td>
                        <td><%=lista_Direcion.get(i).getTelefono()%></td>
                        <td><%=lista_Direcion.get(i).getDomicilio()%></td>
                        <td><%=lista_Direcion.get(i).getUsuario()%></td>
                        <td><%=lista_Direcion.get(i).getContraseña()%></td>
                        <td><%=lista_Direcion.get(i).getEstado()%></td>
                        <td><%=lista_Direcion.get(i).getNivel()%></td>
                          <td> 
                           
                        </td> 
                    </tr>
                    <%        
                        }
                    %>
                        --%>
                </tbody>
           
            </table>
       
               </div>
         
    </div>
</div>
<jsp:include page="footer.jsp"/>
