/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Materia;
import Modelo.ModeloMateria;

/**
 *
 * @author Antonio Castro
 */
public class ControladorMaterias {
        public boolean insertar(Materia m){
        ModeloMateria mm = new ModeloMateria();
        return mm.insertarmaterias(m);
        }
        
        public boolean visualizar(Materia m){
        ModeloMateria mm = new ModeloMateria();
        return mm.visualizarmaterias(m);
        }
}
