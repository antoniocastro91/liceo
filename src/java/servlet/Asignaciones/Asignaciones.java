/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Asignaciones;


import Controlador.Asignaciones.ControladorAsignaciones;
import Include.Asignaciones.IncludeAsignaciones;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

/**
 *
 * @author Antonio Castro
 */
@WebServlet(name = "Asignaciones", urlPatterns = {"/Asignaciones"})
public class Asignaciones extends HttpServlet {

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

            boolean result = false;
            String error = "";
            HttpSession sesion = request.getSession(true);
            String calif = request.getParameter("datosasig");
            JSONArray jobj =(JSONArray) JSONValue.parse(calif);
            for(int i=0;i<jobj.size(); i++){
                JSONObject calificacion = (JSONObject)JSONValue.parse(jobj.get(i).toString());
                Integer IdGrado = Integer.parseInt(calificacion.get("Id_Grado").toString());
                Integer IdMateria = Integer.parseInt(calificacion.get("Id_Materia").toString());
                Integer IdPersonal = Integer.parseInt(calificacion.get("Id_personal").toString());
                
                IncludeAsignaciones a = new IncludeAsignaciones(IdGrado, IdMateria, IdPersonal);
                ControladorAsignaciones  ca = new ControladorAsignaciones();
                result = ca.insertar(a);
            }

            if(result){
                out.print("1");
            }else{
                out.print("0");
            }
        }catch(Exception e){
            System.out.println(e.getMessage());
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
