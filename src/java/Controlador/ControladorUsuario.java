/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Profesores;
import Modelo.ModeloUsuario;

/**
 *
 * @author Antonio Castro
 */
public class ControladorUsuario {
        public boolean validar(Profesores p){
        ModeloUsuario mu = new ModeloUsuario();
        return mu.autentication(p);
    }
}
