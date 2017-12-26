/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Profesores;
import java.sql.PreparedStatement;

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
}
