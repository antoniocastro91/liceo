/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Usuarios;

import Controlador.ControladorUsuario;
import Include.Usuario.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Antonio Castro
 */
@WebServlet(name = "ModificarUsuario", urlPatterns = {"/ModificarUsuario"})
public class ModificarUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ControladorUsuario controladorUsuario = new ControladorUsuario();
            Usuario u = new Usuario();
            String cambiar_clave = request.getParameter("cambiar_clave");
            
            String id = request.getParameter("id");
            String usuarios = request.getParameter("Usuario");
            String clave = request.getParameter("clave");
            Integer estado = Integer.parseInt(request.getParameter("Estado"));
            Integer idrol = Integer.parseInt(request.getParameter("Rol"));
            Integer id_personal = Integer.parseInt(request.getParameter("Id_personal"));
            
            u.setId_Usuario(Integer.parseInt(id));
            u.setUsuario(usuarios);
            if("on".equals(cambiar_clave)){
                u.setContraseña(clave);
            }
            u.setEstado(estado);
            u.setId_Rol(idrol);
            u.setId_Personal(id_personal);
            
            if(controladorUsuario.actualizar(u)){
                out.print("ok");
            }else{
                out.println("error");
                out.println(controladorUsuario.error);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
