/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Asignaciones;

import java.sql.PreparedStatement;
import Controlador.Conexion;
import Include.Asignaciones.IncludeAsignaciones;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Antonio Castro
 */
public class ModeloAsignaciones extends Conexion {
    private Conexion c = new Conexion();
    public String error = "";
    public boolean insertarasignaciones(IncludeAsignaciones a){
        boolean flag = false;
         PreparedStatement pst = null;
       
        try{
            String sql="insert into asignaciones (IdGrado, IdMateria, IdPersonal) values (?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, a.getId_Grado());
            pst.setInt(2, a.getId_Materia());
            pst.setInt(3, a.getId_Personal());

            
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
    
     public List<IncludeAsignaciones> listar_materiaporasignaciones(int id_personal) {
        List<IncludeAsignaciones> lista_asignaciones = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select distinct * from materias m "
                                                  + "join asignaciones a on a.IdMateria = m.Id_Materia "
                                                  + "where a.IdPersonal = "+ id_personal + " group by IdMateria");
            while (rs.next()) {
                IncludeAsignaciones asig = new IncludeAsignaciones();
                asig.setId_Materia(rs.getInt("Id_Materia"));
                asig.setNomMateria(rs.getString("Materia"));
                          
                lista_asignaciones.add(asig);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_asignaciones;
    }
     public List<IncludeAsignaciones> listar_todasmaterias(int id_personal) {
        List<IncludeAsignaciones> lista_asignaciones = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select distinct * from materias m "
                                                  + "join asignaciones a on a.IdMateria = m.Id_Materia "
                                                  + "where a.IdPersonal = "+ id_personal + " group by IdMateria");
            while (rs.next()) {
                IncludeAsignaciones asig = new IncludeAsignaciones();
                asig.setId_Materia(rs.getInt("Id_Materia"));
                asig.setNomMateria(rs.getString("Materia"));
                          
                lista_asignaciones.add(asig);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_asignaciones;
    }
     
     public List<IncludeAsignaciones> listar_asignacionesporgrados(int id_personal) {
        List<IncludeAsignaciones> lista_asignaciones = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select distinct concat(g.Grado, ' ', s.Seccion) as Grado, gs.* from gradoseccion gs "
                                                  + "join asignaciones a on a.IdGrado = gs.IdGradoSeccion "
                                                  + "join grados g on gs.IdGrado = g.Id_Grado "
                                                  + "join seccion s on s.Id_Seccion = gs.IdSeccion "
                                                  + "where a.IdPersonal = "+ id_personal);
            System.out.print(statement.toString());
            while (rs.next()) {
                IncludeAsignaciones asig = new IncludeAsignaciones();
                asig.setId_Grado(rs.getInt("IdGradoSeccion"));
                asig.setNomGrado(rs.getString("Grado"));
                lista_asignaciones.add(asig);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_asignaciones;
    }
     public List<IncludeAsignaciones> listar_todosgrados(int id_personal) {
        List<IncludeAsignaciones> lista_asignaciones = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select distinct concat(g.Grado, ' ', s.Seccion) as Grado, gs.* from gradoseccion gs "
                                                  + "join asignaciones a on a.IdGrado = gs.IdGradoSeccion "
                                                  + "join grados g on gs.IdGrado = g.Id_Grado "
                                                  + "join seccion s on s.Id_Seccion = gs.IdSeccion"
                                                  + "where a.IdPersonal = "+ id_personal);
            System.out.print(statement.toString());
            while (rs.next()) {
                IncludeAsignaciones asig = new IncludeAsignaciones();
                asig.setId_Grado(rs.getInt("IdGradoSeccion"));
                asig.setNomGrado(rs.getString("Grado"));
                lista_asignaciones.add(asig);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_asignaciones;
    }
}
