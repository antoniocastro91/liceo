/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Matricula;

import Controlador.Matricula.ControladorMatricula;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Antonio Castro
 */
@WebServlet(name = "Matricula", urlPatterns = {"/Matricula"})
public class Matricula extends HttpServlet {

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
         String opcion = "";
        opcion = request.getParameter("opcion");
        int seccion = Integer.parseInt(request.getParameter("seccion"));
        switch(opcion){
            case "listar":{
                ControladorMatricula controlador_matricula = new ControladorMatricula();
                List<Include.Matricula.Matricula> lista_matriculas = new ArrayList<>();
                lista_matriculas = controlador_matricula.listar_matricula_por_grado(seccion);
                try (PrintWriter out = response.getWriter()) {
                    for(int i= 0; i<lista_matriculas.size();i++){
                        out.println("<tr>");
                            out.print("<td>");
                            out.print(lista_matriculas.get(i).getNIE());
                            out.print("</td>");
                            out.print("<td>");
                            out.print(lista_matriculas.get(i).getNombres()+ " " + lista_matriculas.get(i).getPrimer_Apellido() + lista_matriculas.get(i).getSegundo_Apellido());
                            out.print("</td>");
                            out.print("<td align='center'><input style=' border-radius: 10px;border: 1px solid #000000; padding: 0 4px 0 4px;' type=\"text\" onkeyup='promedio(this)'/></td>");
                            out.print("<td align='center'><input style=' border-radius: 10px;border: 1px solid #000000;' type=\"text\" onkeyup='promedio(this)'/></td>");
                            out.print("<td align='center'><input style=' border-radius: 10px;border: 1px solid #000000;' type=\"text\" onkeyup='promedio(this)'/></td>");
                            out.print("<td align='center'><input readonly style=' border-radius: 10px;border: 1px solid #000000;' type=\"text\" /></td>");
                            out.print("<td ></td>");
                            out.print("<td class='hidden'>");
                            out.print(lista_matriculas.get(i).getId_Matricula());
                            out.print("</td>");
                        out.println("</tr>");
                    }
                }
                break;
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
