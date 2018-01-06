/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Usuarios;

import Controlador.Conexion;
import Include.Direccion.Direccion;
import Include.Profesores.Profesores;
import Include.Usuario.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Antonio Castro
 */
public class ModeloUsuario extends Conexion{
    public String error;
  public boolean autentication(Usuario u){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "select u.Usuario, u.Contraseña  from usuarios u, rol r  where (u.Usuario = ? and u.Contraseña= ? and u.Estado = '1'  and u.Estado = r.Estado )";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, u.getUsuario());
            pst.setString(2, u.getContraseña());
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }else{
                this.error = "Mas de un resultado: " + rs.getStatement();
                return false;
            }
        } catch (Exception e) {
            System.err.println("Error"+ e.getMessage());
            this.error = e.getMessage();
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
