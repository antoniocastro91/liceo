/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.PadresFamilia;

import Controlador.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Antonio Castro
 */
public class ModeloNotas extends Conexion {
    private Conexion c = new Conexion();
        public String error = "";
   public boolean autentication(IncludePadres cn){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "select u.Usuario, u.Clave  from usuariospadres u where u.Usuario = ? and u.Clave=MD5(?)";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, cn.getUsuario());
            pst.setString(2, cn.getClave());
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
     public boolean insertarusuario(IncludePadres ip){
    boolean flag = false;
     PreparedStatement pst = null;
     try{
            String sql="INSERT INTO `liceojcdp`.`usuariospadres` (`Usuario`, `Clave`) values (?,Md5(?))";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, ip.getUsuario());
            pst.setString(2, ip.getClave());
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
