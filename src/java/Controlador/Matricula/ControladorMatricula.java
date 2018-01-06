/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Matricula;

import Include.Alumno;
import Include.Matricula.Matricula;
import Modelo.Matricula.ModeloMatricula;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorMatricula {
    ModeloMatricula ma = new ModeloMatricula();
   public String error ="";
    
    public boolean insertar(Matricula m){
        ModeloMatricula ma = new ModeloMatricula();
        return ma.insertarmatricula(m);
    }

    public List<Matricula> listar(){
        List<Matricula> lista_direccion = new ArrayList<>();
        lista_direccion = this.ma.listar_Matricula();
        return lista_direccion;
    }
    public boolean actualizar(Matricula m){
    ModeloMatricula ma = new ModeloMatricula();
    boolean result = ma.actualizar(m);
    this.error = ma.error;
    return result;
    }
    public boolean eliminar(int id_matricula){
        ModeloMatricula ma = new ModeloMatricula();
        boolean result = ma.eliminar_matricula(id_matricula);
        this.error = ma.error;
        return result;
    }
    public Matricula getDireccion(int id_matricula){
        return ma.obtener_matricula_por_id(id_matricula);
    }

    public List<Matricula> listar_matricula_por_grado(int id_seccion){
        List<Matricula> lista_matriculas= new ArrayList<>();
        lista_matriculas = this.ma.listar_Alumno_por_seccion(id_seccion);
        return lista_matriculas;
    }
}
