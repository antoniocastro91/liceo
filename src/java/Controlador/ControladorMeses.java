/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Meses;
import Modelo.ModeloMeses;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorMeses {
    ModeloMeses mm = new ModeloMeses();
    String error ="";
    
    public boolean insertar(Meses m){
        boolean flag;
        mm = new ModeloMeses();
       return mm.insertarmes(m);
       
    }
    
         public List<Meses> listar_meses_por_trimestre(int id_trimestre){
            List<Meses> lista_meses= new ArrayList<>();
            lista_meses = this.mm.listar_meses_por_trimestre(id_trimestre);
            return lista_meses;
        }
}
