/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Meses;
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
public class ModeloMeses {
private Conexion c = new Conexion();
    public String error = "";
    
     public boolean insertarmes(Meses m){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql="insert into meses (id_trimestre, mes) values (?, ?)";
            pst = this.c.getConnection().prepareStatement(sql);
            pst.setInt(1, m.getId_trimestre());
            pst.setString(2, m.getMes());
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
    
    
      public List<Meses> listar_meses_por_trimestre(int id_trimestre) {
        List<Meses> lista_meses = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from meses where id_trimestre = " + id_trimestre);
            while (rs.next()) {
                Meses mes = new Meses();
                mes.setId_mes(rs.getInt("id_mes"));
                mes.setId_trimestre(rs.getInt("id_trimestre"));        
                mes.setMes(rs.getString("mes"));        
                lista_meses.add(mes);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_meses;
    }
}
