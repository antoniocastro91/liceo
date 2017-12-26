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

/**
 *
 * @author Antonio Castro
 */
public class ModeloUsuario extends Conexion{
      public boolean autentication(Profesores p){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "select p.usuario, p.Contraseña, d.Usuario, d.Contraseña  from profesores p, direccion d  where p.usuario = ? and p.Contraseña= ? or d.Usuario=? and p.Contraseña= ? ";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, p.getUsuario());
            pst.setString(2, p.getContraseña());
            pst.setString(3, p.getUsuario());
            pst.setString(4, p.getContraseña());
            
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
            return true;
            }
        } catch (Exception e) {
            System.err.println("Error"+ e);
        } finally{
            try {
                 if(getClass() != null) getConnection().close();
                 if(pst != null) pst.close();
                 if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error"+ e);
            }
        }
                
        return false;
    }
}
