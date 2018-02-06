/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Personal;

import Include.Personal.Personal;
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
 
 public boolean insertardirector(Personal d){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql ="insert into personal(Nombre, Apellido, Dui,Telefono, Domicilio,nip, id_area) values (?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, d.getNombre());
            pst.setString(2, d.getApellido());
            pst.setString(3, d.getDui());
            pst.setString(4, d.getTelefono());
            pst.setString(5, d.getDomicilio());           
            pst.setString(6, d.getNip());           
            pst.setString(7, d.getIdarea());           
   
            
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
     public List<Personal> listar_personal() {
        List<Personal> lista_direccion = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from personal");
            while (rs.next()) {
                Personal dir = new Personal();
                dir.setId_Personal(rs.getInt("id_personal"));
                dir.setNombre(rs.getString("Nombre"));
                dir.setApellido(rs.getString("Apellido"));
                dir.setDui(rs.getString("Dui"));
                dir.setTelefono(rs.getString("Telefono"));
                dir.setDomicilio(rs.getString("Domicilio"));
                dir.setNip(rs.getString("nip"));
                dir.setIdarea(rs.getString("id_area"));
                dir.setId_area(rs.getInt("id_area"));
         
                lista_direccion.add(dir);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_direccion;
    }

     public Personal obtener_personal_por_id(int id_direccion){
     Personal dir = new  Personal();
     PreparedStatement pst = null;
        try {
            String sql="select * from personal where id_personal = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_direccion);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                dir.setId_Personal(rs.getInt("id_personal"));
                dir.setNombre(rs.getString("Nombre"));
                dir.setApellido(rs.getString("Apellido"));
                dir.setDui(rs.getString("Dui"));
                dir.setTelefono(rs.getString("Telefono"));
                dir.setDomicilio(rs.getString("Domicilio"));
                dir.setNip(rs.getString("nip"));
                dir.setIdarea(rs.getString("id_area"));
                dir.setId_area(rs.getInt("id_area"));
         
      
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return dir;      
    }
     
    public boolean actualizar (Personal g){
     boolean resultado = false;
        PreparedStatement pst= null;
        try{
            String sql = "UPDATE `liceojcdp`.`personal` set Nombre = ?, Apellido = ?, Dui = ?, Telefono= ?, Domicilio= ? , nip = ? , id_area = ? where id_personal = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setString(1, g.getNombre());
                pst.setString(2, g.getApellido());
                pst.setString(3, g.getDui());
                pst.setString(4, g.getTelefono());
                pst.setString(5, g.getDomicilio());
                pst.setString(6, g.getNip());
                pst.setString(7, g.getIdarea());
                pst.setInt(8, g.getId_Personal());
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
     
     public boolean eliminar_direccion(int id_personal){
     PreparedStatement pst = null;
     boolean resultado = false;
        try {
            String sql="delete from personal where id_personal = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_personal);
            resultado = pst.executeUpdate() >= 1;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
     
     
}
