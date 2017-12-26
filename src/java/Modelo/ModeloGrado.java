/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Grado;
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
public class ModeloGrado extends Conexion {
    private Conexion c = new Conexion();
    public String error = "";
    public boolean insertargrado(Grado g){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql="insert into grados (Grado, Seccion) values (?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, g.getGrado());
            pst.setString(2, g.getSeccion());
              if(pst.executeUpdate() == 1){
            flag = true;
             }
        
        }catch (Exception e) {
             System.err.println(e.getMessage());
        }finally{
            try {
                if(getConnection()!= null) getConnection().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
    return flag;
        }
    
      public List<Grado> listar_Grados() {
        List<Grado> lista_fichas = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from grados");
            while (rs.next()) {
                Grado grado = new Grado();
                grado.setId_Grado(rs.getInt("Id_Grado"));
                grado.setGrado(rs.getString("Grado"));
                grado.setSeccion(rs.getString("Seccion"));
          
                lista_fichas.add(grado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_fichas;
    }
     public Grado obtener_grado_por_id(int id_grado){
     Grado grado = new Grado();
     PreparedStatement pst = null;
        try {
            String sql="select * from grados where Id_Grado = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_grado);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                grado.setId_Grado(rs.getInt("Id_Grado"));
                grado.setGrado(rs.getString("Grado"));
                grado.setSeccion(rs.getString("Seccion"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return grado;      
    }
     
     public boolean actualizar (Grado g){
     boolean resultado = false;
        PreparedStatement pst= null;
        try{
            String sql = "update grados set Grado = ?, Seccion = ? where Id_Grado = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setString(1, g.getGrado());
                pst.setString(2, g.getSeccion());
                pst.setInt(3, g.getId_Grado());
            
            if(pst.executeUpdate() >= 1){
                resultado = true;
                this.error = "No error";
            }else{
                this.error = "Error";
                resultado = false;
            }
        }catch (Exception e) {
            this.error = e.getMessage();
             System.err.println(e.getMessage());
        }finally{
            try {
                if(getConnection()!= null) getConnection().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        return resultado;      
    }
     
     public boolean eliminar_grado(int id_grado){
     PreparedStatement pst = null;
     boolean resultado = false;
        try {
            String sql="delete from grados where Id_Grado = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_grado);
            resultado = pst.executeUpdate() >= 1;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
    
      
}
