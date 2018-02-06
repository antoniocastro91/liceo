/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Alumno;

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
public class ModeloAlumno  extends Conexion{
    
    private Conexion c = new Conexion();
    public String error = "";
    public boolean insertaralumno(Alumno a){
    boolean flag = false;
     PreparedStatement pst = null;
     try{
        String sql="insert into alumnos(Nombre, Apellido, NIE, Edad, Fecha_Nacimiento,Nombre_Encargado, Apellido_Encargado, Dui, Telefono, Domicilio, Id_Grado) values (?,?,?,?,?,?,?,?,?,?,?)";
         pst = getConnection().prepareStatement(sql);
            pst.setString(1, a.getNombre());
            pst.setString(2, a.getApellido());
            pst.setInt(3, a.getNie());
            pst.setInt(4, a.getEdad());
            pst.setString(5, a.getFechanacimiento());
            pst.setString(6, a.getNombreencargado());
            pst.setString(7, a.getApellidoencargado());
            pst.setString(8, a.getDui());
            pst.setString(9, a.getTelefono());
            pst.setString(10, a.getDomicilio());
            pst.setInt(11, a.getIdgrado());
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
    
    
    public List<Alumno> listar_Alumno() {
        List<Alumno> lista_alumno = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select NIE,Nombre, Apellido from Alumnos");
            while (rs.next()) {
                Alumno alumno = new Alumno();
                alumno.setNie(rs.getInt("NIE"));
                alumno.setNombre(rs.getString("Nombre"));
                alumno.setApellido(rs.getString("Apellido"));
              
                
                lista_alumno.add(alumno);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_alumno;
    }
      public List<Alumno> listar_Alumno_por_seccion(int id_seccion) {
        List<Alumno> lista_alumno_primergr = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("Select  a.NIE, a.Nombre, a.Apellido  from Alumnos a, Grados g join g.Id_Grado = a.Id_Grado where a.Id_Grado= " + id_seccion + ";");
            while (rs.next()) {
                Alumno alumno = new Alumno();
                alumno.setNie(rs.getInt("NIE"));
                alumno.setNombre(rs.getString("Nombre"));
                alumno.setApellido(rs.getString("Apellido"));
                lista_alumno_primergr.add(alumno);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_alumno_primergr;
    }
}

