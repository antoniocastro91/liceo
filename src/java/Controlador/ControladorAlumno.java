/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import Include.Alumno;
import Include.Materia;
import Modelo.ModeloAlumno;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Antonio Castro
 */
public class ControladorAlumno {
    ModeloAlumno ma = new ModeloAlumno();
    String error ="";
    public boolean insertar(Alumno a){
        ModeloAlumno ma = new ModeloAlumno();
        return ma.insertaralumno(a);
    }
    
         public List<Alumno> listar_alumnos(){
            List<Alumno> lista_alumno= new ArrayList<>();
            lista_alumno = this.ma.listar_Alumno();
            return lista_alumno;
        }
             public List<Alumno> listar_alumnos_primergrado(){
            List<Alumno> lista_alumno_primergr= new ArrayList<>();
            lista_alumno_primergr = this.ma.listar_Alumno_por_seccion(1);
            return lista_alumno_primergr;
        }
             
        public List<Alumno> listar_alumnos_por_seccion(int id_seccion){
            List<Alumno> lista_alumnos= new ArrayList<>();
            lista_alumnos = this.ma.listar_Alumno_por_seccion(id_seccion);
            return lista_alumnos;
        }
}
