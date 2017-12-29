/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


import Controlador.Conexion;
import Include.Trimestre;
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
public class ModeloTrimestre {
    
     private Conexion c = new Conexion();
    public String error = "";
    
     public boolean insertartrimestre(Trimestre t){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql="insert into trimestre (Trimestre) values (?)";
            pst = this.c.getConnection().prepareStatement(sql);
            pst.setString(1, t.getTrimestre());
            if(pst.executeUpdate() == 1){
            flag = true;
             }
        
        }catch (Exception e) {
             System.err.println(e.getMessage());
        }finally{
            try {
                if(this.c.getConnection()!= null) this.c.getConnection().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
    return flag;
        }
    
    
      public List<Trimestre> listar_trimestre() {
        List<Trimestre> lista_trimestre = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from trimestre");
            while (rs.next()) {
                Trimestre trimestre = new Trimestre();
                trimestre.setId_Trimestre(rs.getInt("Id_Trimestre"));
                trimestre.setTrimestre(rs.getString("Trimestre"));        
                lista_trimestre.add(trimestre);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_trimestre;
    }
}
