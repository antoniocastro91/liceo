/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Matricula;

import Controlador.Matricula.ControladorMatricula;
import Include.Matricula.Matricula;
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
@WebServlet(name = "InsertarMatricula", urlPatterns = {"/InsertarMatricula"})
public class InsertarMatricula extends HttpServlet {

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
            String Año = request.getParameter("Año");
            Integer idgradoseccion = Integer.parseInt(request.getParameter("Grado"));
            String Primer_Apellido = request.getParameter("primerapelli");
            String Segundo_Apellido = request.getParameter("segundoapelli");
            String Nombres = request.getParameter("nombres");
            String Fecha_Nacimiento = request.getParameter("fechanaci");
            String Edad = request.getParameter("edad");
            String Sexo = request.getParameter("sexo");
            String Municipio = request.getParameter("municipio");
            String Departamento = request.getParameter("depart");
            String Repite_Grado = request.getParameter("repitegrado");
            String Documentos_Presentados = request.getParameter("documentos");
            String Direccion = request.getParameter("direccion");
            String Telefono = request.getParameter("numtel");
            String NIE = request.getParameter("Nie");
            String Nombre_Madre = request.getParameter("nommadre");
            String Trabajo_Madre = request.getParameter("trabajomadre");
            String Nombre_Padre = request.getParameter("nompadre");
            String Trabajo_Padre = request.getParameter("trabajopadre");
            String Parentesco = request.getParameter("parentesco");
            String Nombre_Parentesco = request.getParameter("nomparent");
            String Trabajo_Parentesco = request.getParameter("trabajoparent");

            Matricula matri = new Matricula(Año,idgradoseccion,Primer_Apellido, Segundo_Apellido,Nombres, Fecha_Nacimiento,Edad ,Sexo,Municipio, Departamento, Repite_Grado, Documentos_Presentados,Direccion, Telefono,NIE,Nombre_Madre,Trabajo_Madre,Nombre_Padre,Trabajo_Padre,Parentesco, Nombre_Parentesco,Trabajo_Parentesco);

              ControladorMatricula cm = new ControladorMatricula();
            if (cm.insertar(matri)) {
                response.getWriter().print("1");
            } else {
                response.getWriter().print("0");
                 out.println(cm.error);

            }
        } catch (Exception e) {
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
