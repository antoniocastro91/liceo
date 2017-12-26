/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Calificaciones;
import Modelo.ModeloCalificaciones;

/**
 *
 * @author Victor
 */
public class ControladorCalificaciones {
     public boolean insertar(Calificaciones c){
                 ModeloCalificaciones mc = new ModeloCalificaciones();
        return mc.insertarcalificaciones(c);
      
}
}  