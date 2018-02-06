/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Personal.Personal;
import Include.Materias.Materia;
import Modelo.Materia.ModeloMateria;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorMaterias {
    ModeloMateria mm = new ModeloMateria();
    String error = "";
        public boolean insertar(Materia m){
        ModeloMateria mm = new ModeloMateria();
        return mm.insertarmaterias(m);
        }
        
      public List<Materia> listar_materias(){
            List<Materia> lista_materia = new ArrayList<>();
            lista_materia = this.mm.listar_Materia();
            return lista_materia;
        }
}
