/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;
import Include.Alumno;
import Controlador.ControladorAlumno;
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
@WebServlet(name = "InsertarAlumno", urlPatterns = {"/InsertarAlumno"})
public class InsertarAlumno extends HttpServlet {

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
             Integer Nie = Integer.parseInt(request.getParameter("Nie"));
             Integer Edad = Integer.parseInt(request.getParameter("Edad"));
             String Fecha_Nacimiento = request.getParameter("Fecha_Nacimiento");
             String Nombre_Encargado = request.getParameter("Nombre_Encargado");
             String Apellido_Encargado = request.getParameter("Apellido_Encargado");
             String Dui = request.getParameter("Dui");
             String Telefono = request.getParameter("Telefono");
             String Domicilio = request.getParameter("Domicilio");
             Integer Id_Grado = Integer.parseInt(request.getParameter("Id_Grado"));
             
             Alumno a = new Alumno(Nombre, Apellido, Nie, Edad, Fecha_Nacimiento, Nombre_Encargado, Apellido_Encargado, Dui, Telefono, Domicilio, Id_Grado);   
                Controlador.ControladorAlumno ca = new ControladorAlumno();
                if(ca.insertar(a)){
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
