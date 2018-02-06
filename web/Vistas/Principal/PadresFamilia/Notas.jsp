<%@page import="Include.Meses"%>
<%@page import="Controlador.ControladorMeses"%>
<%@page import="Include.Calificaciones.Calificaciones"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.ControladorCalificaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../PadresFamilia/header.jsp"/>
<% 
    HttpSession sesion = request.getSession(false);
    String usuario = sesion.getAttribute("usuario") == null ? "" : sesion.getAttribute("usuario").toString();
    String url = response.encodeRedirectURL(request.getContextPath() + "/liceo/Vistas/Principal/index.jsp");
    if(usuario == ""){
        response.sendRedirect(url);
        return;
    }    
ControladorCalificaciones c = new ControladorCalificaciones();
List<Calificaciones> lista_Calificaciones = null;
if(request.getParameter("nie") != null){
     lista_Calificaciones = c.listar_calificaciones(request.getParameter("nie"), request.getParameter("id_mes"), request.getParameter("anio"));
}
String[] meses = new String[3];
meses[0] = "2,3,4";
meses[1] = "5,6,7";
meses[2] = "8,9,10";
%>
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
            <form class="form" method="get">
                <div class="form-group col-xs-12 col-md-4">
                    <label for="">NIE</label>
                    <input type="text" name="nie" class="form-control" placeholder="Ingrese el NIE">
                </div>
                <div class="form-group col-xs-12 col-md-4">
                    <label for="">Trimestre</label>
                    <select name="id_mes" id="id_mes" class="form-control">
                        <option value="0">Todos</option>
                        <option value="<%= meses[0]%>">Primer</option>
                        <option value="<%= meses[1]%>">Segundo</option>
                        <option value="<%= meses[2]%>">Tercer</option>
                    </select>
                </div>
                <div class="form-group col-xs-12 col-md-2">
                    <label for="">Año</label>
                    <input type="text" name="anio" class="form-control">
                </div>
                <div class="form-group col-xs-12 col-md-2">
                    <label for="" style="color:transparent;">a</label>
                    <button type="submit" class="btn btn-primary btn-block">Consultar</button>
                </div>
                   
               </form>  
        </div>
          </fieldset>
        </div>  
    </div>  
</div> 
<div class ="container">
    <div class="row" align="center">
        <div class="col-xs-12 text-center">
            <table class="table table-hover table-striped table-responsive">
                <thead>
                    <th>Nombre</th>
                    <th>NIE</th>
                    <th>Nota 1</th>
                    <th>Nota 2</th>
                    <th>Nota 3</th>
                    <th>Promedio</th>
                    <th>Materia</th>
                    <th>Mes</th>
                    <th>Año</th>
                </thead>
                <tbody>
                    <%
                        if(lista_Calificaciones != null){
                            for(int i=0; i< lista_Calificaciones.size();i++){%>
                        <tr class="<%= lista_Calificaciones.get(i).getPromedio() >= 6 ? "success":"danger" %>">
                            <td><%= lista_Calificaciones.get(i).getNombre()%></td>
                            <td><%= lista_Calificaciones.get(i).getNIE()%></td>
                            <td><%= lista_Calificaciones.get(i).getNota1()%></td>
                            <td><%= lista_Calificaciones.get(i).getNota2()%></td>
                            <td><%= lista_Calificaciones.get(i).getNota3()%></td>
                            <td><b><%= lista_Calificaciones.get(i).getPromedio()%></b></td>
                            <td><%= lista_Calificaciones.get(i).getMateria()%></td>
                            <td><%= lista_Calificaciones.get(i).getMes()%></td>
                            <td><%= lista_Calificaciones.get(i).getAnio()%></td>
                        </tr>
                        <% }
                        }%>
                    </tbody>

            </table>
        </div>
    </div>
</div>
   