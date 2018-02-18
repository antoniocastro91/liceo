/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Calificaciones;

import Controlador.Conexion;
import Include.Calificaciones.Calificaciones;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Victor
 */
public class ModeloCalificaciones extends Conexion{
    
    private Conexion c = new Conexion();
    
    public boolean insertarcalificaciones(Calificaciones c){
        boolean flag = false;
        
         PreparedStatement pst = null;
        try{
            String sql = "insert into calificaciones (Nota1, Nota2, Nota3, Promedio, Id_Matricula, Id_GradoSeccion,"
                    + "Id_Materia, Id_Mes, Id_Personal, anio) values (?,?,?,?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setDouble(1, c.getNota1());
            pst.setDouble(2, c.getNota2());
            pst.setDouble(3, c.getNota3());
            pst.setDouble(4, c.getPromedio());
            pst.setInt(5, c.getId_Matricula());
            pst.setInt(6, c.getId_Grado());
            pst.setInt(7, c.getId_Materia());
            pst.setInt(8, c.getId_Mes());
            pst.setInt(9, c.getId_Personal());
            pst.setString(10, c.getAnio());
            
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
    
    public List<Calificaciones> listar_calificaciones(String nie, String id_meses, String anio) {
        List<Calificaciones> lista_calificaciones = new ArrayList<>();
        try {
            String sql = "Select me.mes, concat(m.Nombres,\" \", m.Primer_Apellido, \" \", m.Segundo_Apellido) as nombre, m.NIE, c.Nota1,c.Nota2,c.Nota3,c.Promedio, m.Id_Matricula, ma.Materia, c.anio " +
                        "from  calificaciones c " +
                        "join matricula m on c.Id_Matricula = m.Id_Matricula " +
                        "join meses me on c.Id_Mes = me.Id_Mes " +
                        "join cancelaciones ca on ca.Id_Matricula = c.Id_Matricula "+
                        "join materias ma on ma.Id_Materia = c.Id_Materia" +
                        " where m.NIE = ? ";
            if(!id_meses.equals("0")){
                sql += "and c.Id_Mes in (?,?,?)";
            }
             sql += "and c.anio= ? and ca.Estado = 1 order by c.id_mes asc";
            
            PreparedStatement pst = this.c.getConnection().prepareStatement(sql);
            
            pst.setString(1, nie);
            if(!id_meses.equals("0")){
                String[] meses = id_meses.split(",");
                pst.setInt(2, Integer.parseInt(meses[0]));
                pst.setInt(3, Integer.parseInt(meses[1]));
                pst.setInt(4, Integer.parseInt(meses[2]));
                pst.setString(5, anio);
            }else{
                pst.setString(2, anio);
            }
            
            ResultSet rs = pst.executeQuery();
            System.out.println(pst.toString());
            while (rs.next()) {
                Calificaciones calificacion = new Calificaciones();
                calificacion.setNombre(rs.getString("nombre"));
                calificacion.setNIE(rs.getString("nie"));
                calificacion.setNota1(rs.getDouble("nota1"));
                calificacion.setNota2(rs.getDouble("nota2"));
                calificacion.setNota3(rs.getDouble("nota3"));
                calificacion.setPromedio(rs.getDouble("promedio"));
                calificacion.setId_Matricula(rs.getInt("id_matricula"));
                calificacion.setMateria(rs.getString("materia"));
                calificacion.setAnio(rs.getString("anio"));
                calificacion.setMes(rs.getString("mes"));
                lista_calificaciones.add(calificacion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_calificaciones;
    }
}
