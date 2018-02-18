/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.Matricula;

import Controlador.Conexion;
import Controlador.ControladorGrado;
import Include.Grado.Grado;
import Include.Matricula.Matricula;
import Include.Seccion.Seccion;

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
public class ModeloMatricula extends Conexion {
    private Conexion c = new Conexion();
    public String error = "";
    
    public boolean insertarmatricula(Matricula m){
    boolean flag = false;
     PreparedStatement pst = null;
     PreparedStatement pst1 = null;
     try{
              
         //hacer una consulta para obtener el id de la seccion enviando como parametro idgrado e idseccion
         // por ejemplo:
         // select gs.IdGradoSeccion from gradoseccion gs where gs.IdGrado = 1 and gs.IdSeccion = 1;
                 

            String sql="INSERT INTO `liceojcdp`.`matricula` (`Año`, `idGradoSeccion`, `Primer_Apellido`, `Segundo_Apellido`, `Nombres`, `Fecha_Nacimiento`, `Edad`, `Sexo`, `Municipio`, `Departamento`, `Repite_Grado`, `Documentos_Presentados`, `Direccion_Particular`, `Numero_de_Telefono`,`NIE` ,`Madre_Nombre`, `Clase_de_Trabajo_Madre`, `Padre_Nombre`, `Clase_de_Trabajo_Padre`, `Parentesco`, `Nombre_Parentesco`, `Clase_de_Trabajo_Parentesco`) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, m.getAño());
            pst.setInt(2,   m.getId_GradoSeccion() );
            pst.setString(3, m.getPrimer_Apellido());
            pst.setString(4, m.getSegundo_Apellido());
            pst.setString(5, m.getNombres());
            pst.setString(6, m.getFecha_Nacimiento());
            pst.setString(7, m.getEdad());
            pst.setString(8, m.getSexo());
            pst.setString(9, m.getMunicipio());
            pst.setString(10, m.getDepartamento());
            pst.setString(11, m.getRepite_Grado());
            pst.setString(12, m.getDocumentos_Presentados());
            pst.setString(13, m.getDireccion());
            pst.setString(14, m.getTelefono());
            pst.setString(15, m.getNIE());
            pst.setString(16, m.getNombre_Madre());
            pst.setString(17, m.getTrabajo_Madre());
            pst.setString(18, m.getNombre_Padre());
            pst.setString(19, m.getTrabajo_Padre());
            pst.setString(20, m.getParentesco());
            pst.setString(21, m.getNombre_Parentesco());
            pst.setString(22, m.getTrabajo_Parentesco());
                
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
        public List<Matricula> listar_Matricula() {
        List<Matricula> lista_matricula = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select * from matricula");
            while (rs.next()) {
                Matricula matri = new Matricula();
                matri.setId_Matricula(rs.getInt("Id_Matricula"));
                matri.setAño(rs.getString("Año"));
                matri.setId_GradoSeccion(rs.getInt("idGradoSeccion"));
                matri.setPrimer_Apellido(rs.getString("Primer_Apellido"));
                matri.setSegundo_Apellido(rs.getString("Segundo_Apellido"));
                matri.setNombres(rs.getString("Nombres"));
                matri.setFecha_Nacimiento(rs.getString("Fecha_Nacimiento"));
                matri.setEdad(rs.getString("Edad"));
                matri.setSexo(rs.getString("Sexo"));
                matri.setMunicipio(rs.getString("Municipio"));
                matri.setDepartamento(rs.getString("Departamento"));
                matri.setRepite_Grado(rs.getString("Repite_Grado"));
                matri.setDocumentos_Presentados(rs.getString("Documentos_Presentados"));
                matri.setDireccion(rs.getString("Direccion_Particular"));
                matri.setTelefono(rs.getString("Numero_de_Telefono"));
                matri.setNIE(rs.getString("NIE"));
                matri.setNombre_Madre(rs.getString("Madre_Nombre"));
                matri.setTrabajo_Madre(rs.getString("Clase_de_Trabajo_Madre"));
                matri.setNombre_Padre(rs.getString("Padre_Nombre"));
                matri.setTrabajo_Padre(rs.getString("Clase_de_Trabajo_Padre"));
                matri.setParentesco(rs.getString("Parentesco"));
                matri.setNombre_Parentesco(rs.getString("Nombre_Parentesco"));
                matri.setTrabajo_Parentesco(rs.getString("Clase_de_Trabajo_Parentesco"));
                lista_matricula.add(matri);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_matricula;
    }
    
   
      public List<Matricula> listar_Alumno_por_seccion(int id_seccion) {
        List<Matricula> lista_alumno_primergr = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("Select m.Id_Matricula, m.NIE, m.Nombres, m.Primer_Apellido ,m.Segundo_Apellido  \n" +
                                                  "from matricula m join gradoseccion gs on m.idGradoSeccion = gs.IdGradoSeccion\n" +
                                                  "where m.idGradoSeccion = " + id_seccion );
            while (rs.next()) {
                Matricula matricula = new Matricula();
                matricula.setId_Matricula(rs.getInt("Id_Matricula"));
                matricula.setNIE(rs.getString("NIE"));
                matricula.setNombres(rs.getString("Nombres"));
                matricula.setPrimer_Apellido(rs.getString("Primer_Apellido"));
                matricula.setSegundo_Apellido(rs.getString("Segundo_Apellido"));
                lista_alumno_primergr.add(matricula);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_alumno_primergr;
    }
      public List<Matricula> listar_alumno_por_seccion(int id_seccion) {
        List<Matricula> lista_alumno = new ArrayList<>();
        PreparedStatement pst = null;
        try {
            String sql ="Select m.Id_Matricula,concat( m.Nombres, \" \", m.Primer_Apellido, \" \",m.Segundo_Apellido ) as Nombre "+
                         "from matricula m join gradoseccion gs on m.idGradoSeccion = gs.IdGradoSeccion "+
                         "where m.idGradoSeccion = " + id_seccion;
            
            pst = getConnection().prepareStatement(sql);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                Matricula matricula = new Matricula();
                matricula.setId_Matricula(rs.getInt("Id_Matricula"));
                matricula.setNombres(rs.getString("Nombre"));
                lista_alumno.add(matricula);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_alumno;
    }
      
      
     public Matricula obtener_matricula_por_id(int id_matricula){
     Matricula matri = new  Matricula();
     PreparedStatement pst = null;
        try {
            String sql="select * from matricula where Id_Matricula = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_matricula);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                matri.setId_Matricula(rs.getInt("Id_Matricula"));
                matri.setAño(rs.getString("Año"));
                matri.setId_GradoSeccion(rs.getInt("idGradoSeccion"));
                matri.setPrimer_Apellido(rs.getString("Primer_Apellido"));
                matri.setSegundo_Apellido(rs.getString("Segundo_Apellido"));
                matri.setNombres(rs.getString("Nombres"));
                matri.setFecha_Nacimiento(rs.getString("Fecha_Nacimiento"));
                matri.setEdad(rs.getString("Edad"));
                matri.setSexo(rs.getString("Sexo"));
                matri.setMunicipio(rs.getString("Municipio"));
                matri.setDepartamento(rs.getString("Departamento"));
                matri.setRepite_Grado(rs.getString("Repite_Grado"));
                matri.setDocumentos_Presentados(rs.getString("Documentos_Presentados"));
                matri.setDireccion(rs.getString("Direccion_Particular"));
                matri.setTelefono(rs.getString("Numero_de_Telefono"));
                matri.setNIE(rs.getString("NIE"));
                matri.setNombre_Madre(rs.getString("Madre_Nombre"));
                matri.setTrabajo_Madre(rs.getString("Clase_de_Trabajo_Madre"));
                matri.setNombre_Padre(rs.getString("Padre_Nombre"));
                matri.setTrabajo_Padre(rs.getString("Clase_de_Trabajo_Padre"));
                matri.setParentesco(rs.getString("Parentesco"));
                matri.setNombre_Parentesco(rs.getString("Nombre_Parentesco"));
                matri.setTrabajo_Parentesco(rs.getString("Clase_de_Trabajo_Parentesco"));   
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return matri;      
    }
     
    public boolean actualizar (Matricula m){
     boolean resultado = false;
        PreparedStatement pst= null;
        try{
            String sql = "UPDATE `liceojcdp`.`matricula` SET Año = ?, idGradoSeccion = ?, Primer_Apellido = ?, Segundo_Apellido = ?, Nombres = ?,Fecha_Nacimiento = ? ,Edad = ?,Sexo = ?, Municipio = ?, Departamento = ?, Repite_Grado = ? ,Documentos_Presentados = ?, Direccion_Particular = ?, Numero_de_Telefono = ?, NIE = ?, Madre_Nombre = ?, Clase_de_Trabajo_Madre = ?, Padre_Nombre = ?, Clase_de_Trabajo_Padre = ?, Parentesco = ?, Nombre_Parentesco = ?,  Clase_de_Trabajo_Parentesco = ?  WHERE  Id_Matricula = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, m.getAño());
            pst.setInt(2, m.getId_GradoSeccion());
            pst.setString(3, m.getPrimer_Apellido());
            pst.setString(4, m.getSegundo_Apellido());
            pst.setString(5, m.getNombres());
            pst.setString(6, m.getFecha_Nacimiento());
            pst.setString(7, m.getEdad());
            pst.setString(8, m.getSexo());
            pst.setString(9, m.getMunicipio());
            pst.setString(10, m.getDepartamento());
            pst.setString(11, m.getRepite_Grado());
            pst.setString(12, m.getDocumentos_Presentados());
            pst.setString(13, m.getDireccion());
            pst.setString(14, m.getTelefono());
            pst.setString(15, m.getNIE());
            pst.setString(16, m.getNombre_Madre());
            pst.setString(17, m.getTrabajo_Madre());
            pst.setString(18, m.getNombre_Padre());
            pst.setString(19, m.getTrabajo_Padre());
            pst.setString(20, m.getParentesco());
            pst.setString(21, m.getNombre_Parentesco());
            pst.setString(22, m.getTrabajo_Parentesco());
            pst.setInt(23,m.getId_Matricula());
                
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
     
     public boolean eliminar_matricula(int id_matricula){
     PreparedStatement pst = null;
     boolean resultado = false;
        try {
            String sql="delete from matricula where Id_Matricula = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_matricula);
            resultado = pst.executeUpdate() >= 1;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
}

