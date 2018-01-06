/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


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
    private String USERNAME = "root";
    private String Password = "root";
    private String host = "localhost";
    private String Port = "3306";
    private String Databases = "liceojcdp";
    private String classname = "com.mysql.jdbc.Driver";
    private String Url = "jdbc:mysql://"+host + ":"+ Port+"/"+Databases;
    private Connection con;
    
    
    public Conexion() {
        try {
            Class.forName(classname);
            con = DriverManager.getConnection(Url, USERNAME, Password);
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
    
    public int loguear(String usuario, String clave){
        Connection co;
        java.sql.PreparedStatement pst;
        ResultSet rs;
        int a =0;   
        String sql ="select u.Id_Rol from usuarios u, rol r where ((u.Usuario='"+usuario+"' and u.Contraseña='"+clave+"' and u.Estado = 1 and u.Estado = r.Estado))";  
        try {
            Class.forName(this.classname);
            co=DriverManager.getConnection(
            this.Url,this.USERNAME, this.Password);
            pst = co.prepareStatement(sql);
            rs = pst.executeQuery();
            while(rs.next())
            {
                a = rs.getInt(1);
            }
            co.close();
        } catch (ClassNotFoundException | SQLException e){}
    return a;
    }
    
}
