/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Calificaciones.Calificaciones;
import Modelo.Calificaciones.ModeloCalificaciones;
import java.util.List;

/**
 *
 * @author Victor
 */
public class ControladorCalificaciones {
    String error = "";
    ModeloCalificaciones mc = new ModeloCalificaciones();
     public boolean insertar(Calificaciones c){
        return mc.insertarcalificaciones(c);
      
    }
     
     public List<Calificaciones> listar_calificaciones(String nie, String id_meses, String anio){
        return mc.listar_calificaciones(nie, id_meses, anio);
      
    }
}  