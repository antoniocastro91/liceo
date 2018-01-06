/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Grado;

import Controlador.Conexion;
import Include.Grado.Grado;
import Include.Seccion.Seccion;
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
    public boolean insertargrado(Grado g, Seccion s){
        boolean flag = false;
         PreparedStatement pst = null;
         PreparedStatement pst1 = null;
        try{
            String sql="insert into grados (Grado) values (?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, g.getGrado());
            
            String sql1="insert into seccion (Seccion) values (?)";
            pst1 = getConnection().prepareStatement(sql1);
            pst1.setString(1, s.getSeccion());
            
              if(pst.executeUpdate() == 1 && pst1.executeUpdate() == 1 ){
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
            
                          
                lista_fichas.add(grado);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_fichas;
    }
        public List<Seccion> listar_Seccion() {
        List<Seccion> lista_seccion = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from seccion");
            while (rs.next()) {
                Seccion seccion = new Seccion();
                seccion.setId_Seccion(rs.getInt("Id_Seccion"));
              
                          
                lista_seccion.add(seccion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_seccion;
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
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return grado;      
    }
    public Seccion obtener_seccion_por_id(int id_seccion){
     Seccion seccion = new Seccion();
     PreparedStatement pst = null;
        try {
            String sql="select * from seccion where Id_Seccion = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_seccion);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                seccion.setId_Seccion(rs.getInt("Id_Seccion"));
                seccion.setSeccion(rs.getString("Seccion"));
               
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return seccion;      
    }
     
     
     public boolean actualizar (Grado g, Seccion s){
     boolean resultado = false;
        PreparedStatement pst= null;
        PreparedStatement pst1= null;
        try{
            String sql = "update grados set Grado = ? where Id_Grado = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setString(1, g.getGrado());
                pst.setInt(2, g.getId_Grado());
                
            String sql1 = "update seccion set Seccion = ? where Id_Seccion = ?";
                pst1 = getConnection().prepareStatement(sql1);
                pst1.setString(1, s.getSeccion());
                pst1.setInt(2, s.getId_Seccion());
                
            if(pst.executeUpdate() >= 1 && pst1.executeUpdate() >= 1 ){
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
            
            resultado = pst.executeUpdate() >= 1 ;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
      public boolean eliminar_seccion(int id_seccion){
    PreparedStatement pst1 = null;
     boolean resultado = false;
        try {
          
            String sql1="delete from seccion where Id_Seccion = ?";
            pst1 = getConnection().prepareStatement(sql1);
            pst1.setInt(1, id_seccion);
            resultado = pst1.executeUpdate() >= 1 ;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
      
}
