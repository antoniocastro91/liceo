/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Grado.Grado;
import Include.Seccion.Seccion;
import Modelo.Grado.ModeloGrado;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Antonio Castro
 */
public class ControladorGrado {
    ModeloGrado mg = new ModeloGrado();
     public String error = "";
    public boolean insertar(Grado g, Seccion s){
        ModeloGrado mg = new ModeloGrado();
        return mg.insertargrado(g, s);
        }
      public List<Grado> listar(){
            List<Grado> lista_grados = new ArrayList<>();
            lista_grados = this.mg.listar_Grados();
            return lista_grados;
        }
       public List<Seccion> listar_se(){
            List<Seccion> lista_seccion = new ArrayList<>();
            lista_seccion = this.mg.listar_Seccion();
            return lista_seccion;
        }
      
      
        public boolean actualizar(Grado g, Seccion s){
        ModeloGrado mg = new ModeloGrado();
        boolean result = mg.actualizar(g, s);
        this.error = mg.error;
        return result;
    }
    public boolean eliminar(int id_grado){
        ModeloGrado mu = new ModeloGrado();
        boolean result = mu.eliminar_grado(id_grado);
        this.error = mu.error;
        return result;
    }
      public boolean eliminar_se(int id_seccion){
        ModeloGrado mu = new ModeloGrado();
        boolean result = mu.eliminar_seccion(id_seccion);
        this.error = mu.error;
        return result;
    }
    public Grado getGrado(int id_grado){
        return mg.obtener_grado_por_id(id_grado);
    }
    public Seccion getSeccion(int id_seccion){
        return mg.obtener_seccion_por_id(id_seccion);
    }
    
}
