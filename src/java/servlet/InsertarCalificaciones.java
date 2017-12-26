/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.ControladorCalificaciones;
import Include.Calificaciones;
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
public class InsertarCalificaciones extends HttpServlet {

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
          
            Double Nota1 = Double.parseDouble(request.getParameter("Nota1"));
            Double Nota2 = Double.parseDouble(request.getParameter("Nota2"));
            Double Nota3 = Double.parseDouble(request.getParameter("Nota3"));
            Double Promedio = Double.parseDouble(request.getParameter("Promedio"));
            Integer Id_Alumno = Integer.parseInt(request.getParameter("Id_Alumno"));
            Integer Id_Grado = Integer.parseInt(request.getParameter("Id_Grado"));
            Integer Id_Materia = Integer.parseInt(request.getParameter("Id_Materia"));
            Integer Id_Trimestre = Integer.parseInt(request.getParameter("Id_Trimestre"));
            Integer Id_Profesor = Integer.parseInt(request.getParameter("Id_Profesor"));
            
            Calificaciones cali = new Calificaciones(Nota1, Nota2, Nota3, Promedio, Id_Alumno, Id_Grado,
                    Id_Materia, Id_Trimestre, Id_Profesor);
            
            Controlador.ControladorCalificaciones  cc = new ControladorCalificaciones();
               
            if(cc.insertar(cali)){
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
