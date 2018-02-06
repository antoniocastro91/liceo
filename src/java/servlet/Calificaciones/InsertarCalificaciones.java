/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.Calificaciones;

import Controlador.ControladorCalificaciones;
import Include.Calificaciones.Calificaciones;
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
import org.json.simple.parser.JSONParser;


/**
 *
 * @author Victor
 */
@WebServlet(name = "InsertarCalificaciones", urlPatterns = {"/InsertarCalificaciones"})
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
          
            boolean result = false;
            String error = "";
            HttpSession sesion = request.getSession(true);
            String calif = request.getParameter("calificaciones");
            JSONArray jobj =(JSONArray) JSONValue.parse(calif);
            for(int i=0;i<jobj.size(); i++){
                JSONObject calificacion = (JSONObject)JSONValue.parse(jobj.get(i).toString());
                Double Nota1 = Double.parseDouble(calificacion.get("nota1").toString());
                Double Nota2 = Double.parseDouble(calificacion.get("nota2").toString());
                Double Nota3 = Double.parseDouble(calificacion.get("nota3").toString());
                Double Promedio = calcular(Nota1, Nota2, Nota3);
                Integer Id_Matricula = Integer.parseInt(calificacion.get("id_matricula").toString());
                Integer Id_Grado = Integer.parseInt(calificacion.get("grado_seccion").toString());
                Integer Id_Materia = Integer.parseInt(calificacion.get("id_materia").toString());
                Integer Id_Mes = Integer.parseInt(calificacion.get("id_mes").toString());
                String Año = calificacion.get("anio").toString();

                Integer Id_Personal = Integer.parseInt(sesion.getAttribute("id_personal").toString());

                Calificaciones cali = new Calificaciones(Nota1, Nota2, Nota3, Promedio, Id_Matricula, Id_Grado,
                        Id_Materia, Id_Mes, Id_Personal, Año);

                Controlador.ControladorCalificaciones  cc = new ControladorCalificaciones();
                result = cc.insertar(cali);
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
    private Double calcular(Double Nota1,Double Nota2,Double Nota3){
       return  (Nota1*0.2 + Nota2*0.3 + Nota3*0.5);
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
