/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Alumno;
import java.sql.PreparedStatement;
/**
 *
 * @author Antonio Castro
 */
public class ModeloAlumno  extends Conexion{
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
}

