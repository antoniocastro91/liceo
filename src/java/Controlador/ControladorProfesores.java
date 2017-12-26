/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Profesores;

import Modelo.ModeloProfesores;

/**
 *
 * @author Victor
 */
public class ControladorProfesores {
      public boolean insertar(Profesores p){
        ModeloProfesores mp = new ModeloProfesores();
        return mp.insertarprofesores(p);
}
    
}
