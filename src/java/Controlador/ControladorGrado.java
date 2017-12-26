/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Grado;
import Modelo.ModeloGrado;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Antonio Castro
 */
public class ControladorGrado {
    ModeloGrado mg = new ModeloGrado();
     public String error = "";
    public boolean insertar(Grado g){
        ModeloGrado mg = new ModeloGrado();
        return mg.insertargrado(g);
        }
      public List<Grado> listar(){
            List<Grado> lista_grados = new ArrayList<>();
            lista_grados = this.mg.listar_Grados();
            return lista_grados;
        }
      
        public boolean actualizar(Grado g){
        ModeloGrado mg = new ModeloGrado();
        boolean result = mg.actualizar(g);
        this.error = mg.error;
        return result;
    }
    public boolean eliminar(int id_grado){
        ModeloGrado mu = new ModeloGrado();
        boolean result = mu.eliminar_grado(id_grado);
        this.error = mu.error;
        return result;
    }
    public Grado getGrado(int id_grado){
        return mg.obtener_grado_por_id(id_grado);
    }
    
}
