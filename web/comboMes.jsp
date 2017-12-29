<%@page import="Include.Calificaciones"%>
<%@page import="Controlador.Conexion"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

  <% Conexion con = new Conexion();%>
<% String s_trimestre = request.getParameter("f_trimestre"); %>

<select name="f_mesa">
    
    <option value="">Seleccione el Mesaa</option>
        <%
            String sql = "Select Mes from trimestre where Trimestre ='"+ s_trimestre+ "'";
            Statement statement = con.getConnection().createStatement();
            ResultSet rs = statement.executeQuery(sql);
             while(rs.next()) {%>
             <option value="<%= rs.getString("Trimestre") %>"> <%= rs.getString("Mes") %></option>
             <% } %>
             
       
</select>