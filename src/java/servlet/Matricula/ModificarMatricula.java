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
@WebServlet(name = "ModificarMatricula", urlPatterns = {"/ModificarMatricula"})
public class ModificarMatricula extends HttpServlet {

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
            ControladorMatricula controladorMatri = new ControladorMatricula();
            Matricula m = new Matricula();
            String id = request.getParameter("id");
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
             
             m.setId_Matricula(Integer.parseInt(id));
             m.setAño(Año);
             m.setId_GradoSeccion(idgradoseccion);
             m.setPrimer_Apellido(Primer_Apellido);
             m.setSegundo_Apellido(Segundo_Apellido);
             m.setNombres(Nombres);
             m.setFecha_Nacimiento(Fecha_Nacimiento);
             m.setEdad(Edad);
             m.setSexo(Sexo);
             m.setMunicipio(Municipio);
             m.setDepartamento(Departamento);
             m.setRepite_Grado(Repite_Grado);
             m.setDocumentos_Presentados(Documentos_Presentados);
             m.setDireccion(Direccion);
             m.setTelefono(Telefono);
             m.setNIE(NIE);
             m.setNombre_Madre(Nombre_Madre);
             m.setTrabajo_Madre(Trabajo_Madre);
             m.setNombre_Padre(Nombre_Padre);
             m.setTrabajo_Padre(Trabajo_Padre);
             m.setParentesco(Parentesco);
             m.setNombre_Parentesco(Nombre_Parentesco);
             m.setTrabajo_Parentesco(Trabajo_Parentesco);
             
            if(controladorMatri.actualizar(m)){
                out.print("ok");
            }else{
                out.println("error as");
                out.println(controladorMatri.error);
                
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
