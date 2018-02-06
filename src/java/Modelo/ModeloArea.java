/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Area;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ModeloArea extends Conexion{
      private Conexion c = new Conexion();
      public String error = "";
    
      public List<Area> listar_Areas() {
        List<Area> lista_area = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from areas");
            while (rs.next()) {
                Area area = new Area();
                area.setId_area(rs.getInt("id_area"));
                area.setArea(rs.getString("area"));
                lista_area.add(area);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_area;
    }
       
    
}
