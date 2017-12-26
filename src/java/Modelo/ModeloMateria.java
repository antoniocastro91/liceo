/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Materia;
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
public class ModeloMateria extends Conexion{
    
    private Conexion c = new Conexion();
    public String error = "";
    
     public boolean insertarmaterias(Materia m){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql="insert into materias(materia) values (?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, m.getMateria());
            
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
     public List<Materia>listar_materias(){
     List<Materia> lista_materia = new ArrayList<>();
        try {
            Statement statement = this.c.getConexion().createStatement();
            ResultSet rs = statement.executeQuery("select * from usuario");
            while (rs.next()) {
                
                Usuario usuario = new Usuario();
                usuario.setId_usuario(rs.getInt("id"));
                usuario.setUsuario(rs.getString("usuario"));
                usuario.setNivel(rs.getInt("nivel"));
                usuario.setEstado(rs.getInt("estado"));
                usuario.setEmail(rs.getString("email"));               
                lista_usuarios.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_usuarios;      
    }
    
     
   
}
