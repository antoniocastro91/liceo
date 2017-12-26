/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.Calificaciones;
import java.sql.PreparedStatement;

/**
 *
 * @author Victor
 */
public class ModeloCalificaciones extends Conexion{
    
    public boolean insertarcalificaciones(Calificaciones c){
        boolean flag = false;
         PreparedStatement pst = null;
        try{
            String sql = "insert into calificaciones (Nota1, Nota2, Nota3, Promedio, Id_Alumno, Id_Grado,"
                    + "Id_Materia, Id_Trimestre, Id_Profesor) values (?,?,?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setDouble(1, c.getNota1());
            pst.setDouble(2, c.getNota2());
            pst.setDouble(3, c.getNota3());
            pst.setDouble(4, c.getPromedio());
            pst.setInt(5, c.getId_Alumno());
            pst.setInt(6, c.getId_Grado());
            pst.setInt(7, c.getId_Materia());
            pst.setInt(8, c.getId_Trimestre());
            pst.setInt(9, c.getId_Profesor());
            
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
