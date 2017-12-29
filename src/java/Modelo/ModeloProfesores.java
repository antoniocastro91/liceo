/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Profesores;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Victor
 */
public class ModeloProfesores extends Conexion {
      public boolean insertarprofesores(Profesores p){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql="insert into profesores(Nombre, Apellido, Telefono, Domicilio, Dui, Nip,"
                    + "Usuario, Contraseña, Nivel, Estado) values (?,?,?,?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, p.getNomProfesor());
            pst.setString(2, p.getApeProfesor());
            pst.setString(3, p.getTelefono());
            pst.setString(4, p.getDomicilio());
            pst.setString(5, p.getDui());
            pst.setString(6, p.getNip());
            pst.setString(7, p.getUsuario());
            pst.setString(8, p.getContraseña());
            pst.setString(9, p.getNivel());
            pst.setString(10, p.getEstado());
   
            
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
      
      
       public Profesores obtener_profesor_por_id(int id_profesor){
     Profesores usuario = new Profesores();
     PreparedStatement pst = null;
        try {
            String sql="select * from profesores where Id_Profesor = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_profesor);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                usuario.setId_Profesor(rs.getInt("Id_Profesor"));
                usuario.setNomProfesor(rs.getString("Nombre"));
                usuario.setApeProfesor(rs.getString("Apellido"));
                usuario.setTelefono(rs.getString("Telefono"));
                usuario.setDui(rs.getString("Dui"));  
                usuario.setNip(rs.getString("NIP"));  
                usuario.setUsuario(rs.getString("Usuario"));  
                usuario.setContraseña(rs.getString("Contraseña"));  
                usuario.setNivel(rs.getString("Nivel"));  
                usuario.setEstado(rs.getString("Estado"));  
                usuario.setId_Grado(rs.getInt("Id_Grado"));  
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

        return usuario;      
    }
}
