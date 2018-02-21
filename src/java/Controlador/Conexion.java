/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Include.Usuario.Usuario;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Victor
 */
public class Conexion {

    //private String HOST = "localhost";  
    private String USERNAME = "root";
    //private String PASSWORD = "root";
    private String PASSWORD = "METakl64231";
    private String HOST = "node72251-sistema.whelastic.net";
    private String Port = "3306";
    private String Databases = "liceojcdp";
    private String classname = "com.mysql.jdbc.Driver";
    private String Url = "jdbc:mysql://"+HOST + ":"+ Port+"/"+Databases;
    private Connection con;
    
    
    public Conexion() {
        try {
            Class.forName(classname);
            con = DriverManager.getConnection(Url, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.print("error"+ e);
        } catch(SQLException e){
            System.err.println("Error"+e);
        }
         
}
    public Connection getConnection(){
        return con;
    }
    
    public static void main (String [] args){
        Conexion con = new Conexion();
    }

    public PreparedStatement preapredstatement(String sql_insertgrado) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public Usuario loguear(String usuario, String clave){
        Connection co;
        java.sql.PreparedStatement pst;
        ResultSet rs;
        Usuario u = new Usuario();
        String sql ="select distinct u.Id_Usuario, u.Id_Rol, u.Usuario, u.id_personal from usuarios u, rol r where u.Usuario='" + usuario +"' and u.Contraseña=MD5('" + clave + "') and u.Estado = 1 and u.Estado = r.Estado";  
        try {
            Class.forName(this.classname);
            co=DriverManager.getConnection(
            this.Url,this.USERNAME, this.PASSWORD);
            pst = co.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next())
            {
                u.setId_Usuario(rs.getInt(1));
                u.setId_Rol(rs.getInt(2));
                u.setUsuario(rs.getString(3));
                u.setId_Personal(rs.getInt(4));
            }
            co.close();
        } catch (ClassNotFoundException | SQLException e){}
    return u;
    }
    
}
