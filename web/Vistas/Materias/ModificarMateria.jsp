<%@page import="Controlador.ControladorUsuario"%>
<%@page import="Controlador.ControladorMaterias"%>
<%@page import="Include.Materias.Materia"%>
<%@page import="Include.Materias.Materia"%>
<%@page import="java.util.List"%>
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
    Controlador.ControladorMaterias cm = new ControladorMaterias();
    Materia materia = new Materia();
    materia = cm.getMateria(Integer.parseInt(request.getParameter("id_materia").toString()));

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <input type="hidden" name="id" id="id" value="<%= materia.getId_Materia()%>"/>
        <h1>Hello World!</h1>
    </body>
</html>
