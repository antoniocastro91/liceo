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
    public boolean autentication(ConsultaNotas cn){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = " select nie from matricula where NIE= ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, cn.getNIE());
         
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
