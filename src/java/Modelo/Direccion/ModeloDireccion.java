/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Direccion;

import Include.Direccion.Direccion;
import Controlador.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Victor
 */
public class ModeloDireccion extends Conexion{
     private Conexion c = new Conexion();
    public String error = "";
 
 public boolean insertardirector(Direccion d){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql ="insert into direccion(Nombre, Apellido, Dui,Telefono, Domicilio) values (?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, d.getNomDireccion());
            pst.setString(2, d.getApeDireccion());
            pst.setString(3, d.getDui());
            pst.setString(4, d.getTelefono());
            pst.setString(5, d.getDomicilio());           
   
            
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
     public List<Direccion> listar_Direccion() {
        List<Direccion> lista_direccion = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from direccion");
            while (rs.next()) {
                Direccion dir = new Direccion();
                dir.setId_Direccion(rs.getInt("id_direccion"));
                dir.setNomDireccion(rs.getString("Nombre"));
                dir.setApeDireccion(rs.getString("Apellido"));
                dir.setDui(rs.getString("Dui"));
                dir.setTelefono(rs.getString("Telefono"));
                dir.setDomicilio(rs.getString("Domicilio"));
         
                lista_direccion.add(dir);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_direccion;
    }

     public Direccion obtener_direccion_por_id(int id_direccion){
     Direccion dir = new  Direccion();
     PreparedStatement pst = null;
        try {
            String sql="select * from direccion where id_direccion = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_direccion);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                dir.setId_Direccion(rs.getInt("id_direccion"));
                dir.setNomDireccion(rs.getString("Nombre"));
                dir.setApeDireccion(rs.getString("Apellido"));
                dir.setDui(rs.getString("Dui"));
                dir.setTelefono(rs.getString("Telefono"));
                dir.setDomicilio(rs.getString("Domicilio"));
      
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return dir;      
    }
     
    public boolean actualizar (Direccion g){
     boolean resultado = false;
        PreparedStatement pst= null;
        try{
            String sql = "update direccion set Nombre = ?, Apellido = ?, Dui = ?, Telefono= ?, Domicilio= ? where id_direccion = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setString(1, g.getNomDireccion());
                pst.setString(2, g.getApeDireccion());
                pst.setString(3, g.getDui());
                pst.setString(4, g.getTelefono());
                pst.setString(5, g.getDomicilio());
                pst.setInt(6,g.getId_Direccion());
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
     
     public boolean eliminar_direccion(int id_direccion){
     PreparedStatement pst = null;
     boolean resultado = false;
        try {
            String sql="delete from direccion where id_direccion = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_direccion);
            resultado = pst.executeUpdate() >= 1;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
     
     
}
