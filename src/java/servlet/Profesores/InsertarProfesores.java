/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Profesores;


import Controlador.ControladorProfesores;

import Include.Profesores.Profesores;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Victor
 */
public class InsertarProfesores extends HttpServlet {

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
          
             String Nombre = request.getParameter("Nombre");
             String Apellido = request.getParameter("Apellido");
             String Telefono = request.getParameter("Telefono");
             String Domicilio = request.getParameter("Domicilio");
             String Dui = request.getParameter("Dui");
             String Nip = request.getParameter("Nip");
             String Usuario = request.getParameter("Usuario");
             String Contraseña = request.getParameter("Contrasena");
             Integer Nivel = Integer.parseInt(request.getParameter("Nivel"));
             String Estado = request.getParameter("Estado");
            
             Profesores  profes = new Profesores( Nombre, Apellido, Telefono, Domicilio, Dui, Nip, Usuario, Contraseña, Nivel, Estado);
             Controlador.ControladorProfesores cp = new ControladorProfesores();
              
              if(cp.insertar(profes)){
                     response.getWriter().print("1");
              }else{
                  response.getWriter().print("0");
              }
        }catch(Exception e){
            System.out.println("Hubo error");
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
