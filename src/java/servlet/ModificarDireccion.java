/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.ControladorDireccion;
import Include.Direccion;
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
@WebServlet(name = "ModificarDireccion", urlPatterns = {"/direccion_Modificar"})
public class ModificarDireccion extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            Controlador.ControladorDireccion controladorDire = new ControladorDireccion();
            Direccion d = new Direccion();
             String id = request.getParameter("id");
             String Nombre = request.getParameter("Nombre");
             String Apellido = request.getParameter("Apellido");
             String Dui = request.getParameter("Dui");
             String Telefono = request.getParameter("Telefono");
             String Domicilio = request.getParameter("Domicilio");
             String Usuario = request.getParameter("Usuario");
             String Contraseña = request.getParameter("Contrasena");
             String Nivel = request.getParameter("Nivel");
             String Estado = request.getParameter("Estado");
             d.setId_Direccion(Integer.parseInt(id));
             d.setNomDireccion(Nombre);
             d.setApeDireccion(Apellido);
             d.setDui(Dui);
             d.setTelefono(Telefono);
             d.setDomicilio(Domicilio);
             d.setUsuario(Usuario);
             d.setContraseña(Contraseña);
             d.setEstado(Estado);
             d.setNivel(Nivel);
             
            if(controladorDire.actualizar(d)){
                out.print("ok");
            }else{
                out.println("error");
                out.println(controladorDire.error);
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
