/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import Include.Alumno;
import Modelo.ModeloAlumno;
/**
 *
 * @author Antonio Castro
 */
public class ControladorAlumno {
    public boolean insertar(Alumno a){
        ModeloAlumno ma = new ModeloAlumno();
        return ma.insertaralumno(a);
    }
}
