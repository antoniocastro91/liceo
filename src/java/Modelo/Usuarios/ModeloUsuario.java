/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Usuarios;

import Controlador.Conexion;
import Include.Personal.Personal;
import Include.Usuario.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ModeloUsuario extends Conexion {
    private Conexion c = new Conexion();
    public String error = "";
    
    public boolean insertarusuario(Usuario m){
    boolean flag = false;
     PreparedStatement pst = null;
     try{
            String sql="INSERT INTO `liceojcdp`.`usuarios` (`Usuario`, `Contraseña`, `Estado`, `Id_Rol`,`id_personal`) values (?,Md5(?),?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, m.getUsuario());
            pst.setString(2, m.getContraseña());
            pst.setInt(3, m.getEstado());
            pst.setInt(4, m.getId_Rol());
            pst.setInt(5, m.getId_Personal());

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
    public List<Usuario> listar_Usuario() {
        List<Usuario> lista_usuario = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("Select concat(p.Nombre,\" \", p.Apellido) as nombre ,u.* from usuarios u "
                    + "join personal p on p.id_personal = u.id_personal");
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId_Usuario(rs.getInt("Id_Usuario"));
                usuario.setUsuario(rs.getString("Usuario"));
                usuario.setContraseña(rs.getString("Contraseña"));
                usuario.setEstado(rs.getInt("Estado"));
                usuario.setId_Rol(rs.getInt("Id_Rol"));
                usuario.setId_Personal(rs.getInt("id_personal"));
                usuario.setNomUsuario(rs.getString("nombre"));
                lista_usuario.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_usuario;
    }
    
    public Usuario obtener_usuario_por_id(int id_usuario){
     Usuario usuario = new  Usuario();
     PreparedStatement pst = null;
        try {
            String sql="select * from usuarios where Id_Usuario = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_usuario);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                usuario.setId_Usuario(rs.getInt("Id_Usuario"));
                usuario.setUsuario(rs.getString("Usuario"));
                usuario.setContraseña(rs.getString("Contraseña"));
                usuario.setEstado(rs.getInt("Estado"));
                usuario.setId_Rol(rs.getInt("Id_Rol"));
                usuario.setId_Personal(rs.getInt("id_personal"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return usuario;      
    }
     
    public boolean actualizar (Usuario u){
     boolean resultado = false;
        PreparedStatement pst= null;
        try{
            String sql = "";
            if(u.getContraseña() == null){
                 sql = "UPDATE `liceojcdp`.`usuarios` SET Usuario = ?,  Estado = ?, Id_Rol = ? ,id_personal = ? WHERE  Id_Usuario = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setString(1,  u.getUsuario());
                pst.setInt(2, u.getEstado());
                pst.setInt(3, u.getId_Rol());
                pst.setInt(4, u.getId_Personal());
                pst.setInt(5, u.getId_Usuario());
            }else{
                 sql = "UPDATE `liceojcdp`.`usuarios` SET Usuario = ?, Contraseña = MD5(?), Estado = ?, Id_Rol = ? ,id_personal = ? WHERE  Id_Usuario = ?";
                 pst = getConnection().prepareStatement(sql);
                 pst.setString(1,  u.getUsuario());
                 pst.setString(2, u.getContraseña());
                 pst.setInt(3, u.getEstado());
                 pst.setInt(4, u.getId_Rol());
                 pst.setInt(5, u.getId_Personal());
                 pst.setInt(6, u.getId_Usuario());
            
            }    
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
     
     public boolean eliminar_usuarios(int id_usuario){
     PreparedStatement pst = null;
     boolean resultado = false;
        try {
            String sql="delete from usuarios where Id_Usuario = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_usuario);
            resultado = pst.executeUpdate() >= 1;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }

  public boolean autentication(Usuario u){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "select u.Usuario, u.Contraseña  from usuarios u, rol r  where u.Usuario = ? and u.Contraseña=MD5(?) and u.Estado = '1' and u.Estado = r.Estado";
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
