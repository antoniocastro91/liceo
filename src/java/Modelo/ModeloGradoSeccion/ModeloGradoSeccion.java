/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.ModeloGradoSeccion;

import Controlador.Conexion;
import Include.GradoSeccion.GradoSeccion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ModeloGradoSeccion extends Conexion {
    
        private Conexion c = new Conexion();
    public String error = "";
        public List<GradoSeccion> listar_GradosSeccion() {
        List<GradoSeccion> lista_gradoseccion = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select gs.IdGradoSeccion, gs.IdGrado, gs.IdSeccion, concat(g.Grado, \" \", s.seccion) as grado_seccion from gradoseccion gs join grados g on g.Id_Grado = gs.IdGrado join seccion s on s.Id_Seccion = gs.IdSeccion order by gs.IdGradoSeccion");
            while (rs.next()) {
                GradoSeccion gradoseccion = new GradoSeccion();
                gradoseccion.setIdGradoSeccion(rs.getInt("IdGradoSeccion"));
                gradoseccion.setIdGrado(rs.getInt("IdGrado"));
                gradoseccion.setIdSeccion(rs.getInt("IdSeccion"));
                gradoseccion.setGrado_seccion(rs.getString("grado_seccion"));
                lista_gradoseccion.add(gradoseccion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_gradoseccion;
    }
        
      public List<GradoSeccion> listar_GradosSeccions() {
        List<GradoSeccion> lista_id = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select IdGradoSeccion from gradoseccion");
            while (rs.next()) {
                GradoSeccion grado = new GradoSeccion();
                grado.setIdGradoSeccion(rs.getInt("IdGradoSeccion"));
                lista_id.add(grado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_id;
    }
    public GradoSeccion obtener_grado_por_id(int id_grado){
     GradoSeccion grado = new GradoSeccion();
     PreparedStatement pst = null;
        try {
            String sql="select distinct g.Grado as NombreGrado gs.* from gradoseccion gs \n" +
                        "join grados g on gs.IdGrado = g.Id_Grado \n" +
                        "join seccion s on s.Id_Seccion = gs.IdSeccion \n" +
                        "where gs.IdGradoSeccion = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_grado);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                grado.setIdGradoSeccion(rs.getInt("IdGradoSeccion"));
                grado.setGrado_seccion(rs.getString("NombreGrado"));
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return grado;      
    }
    public GradoSeccion obtener_seccion_por_id(int id_seccion){
     GradoSeccion seccion = new GradoSeccion();
     PreparedStatement pst = null;
        try {
            String sql="select distinct s.Seccion as NombreSeccion gs.* from gradoseccion gs \n" +
                        "join grados g on gs.IdGrado = g.Id_Grado \n" +
                        "join seccion s on s.Id_Seccion = gs.IdSeccion \n" +
                        "where gs.IdGradoSeccion = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_seccion);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                seccion.setIdGradoSeccion(rs.getInt("IdGradoSeccion"));
                seccion.setGrado_seccion(rs.getString("NombreSeccion"));
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return seccion;      
    }
     
 
}
