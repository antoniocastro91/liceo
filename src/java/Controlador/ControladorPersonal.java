/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Personal.Personal;
import Modelo.Personal.ModeloDireccion;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Victor
 */
public class ControladorPersonal {
    ModeloDireccion md = new ModeloDireccion();
    public String error = "";

    public boolean insertar(Personal d){
        ModeloDireccion md = new ModeloDireccion();
        return md.insertardirector(d);
}
         public List<Personal> listar(){
            List<Personal> lista_direccion = new ArrayList<>();
            lista_direccion = this.md.listar_personal();
            return lista_direccion;
        }
      
        public boolean actualizar(Personal d){
        ModeloDireccion md = new ModeloDireccion();
        boolean result = md.actualizar(d);
        this.error = md.error;
        return result;
    }
    public boolean eliminar(int id_direccion){
        ModeloDireccion md = new ModeloDireccion();
        boolean result = md.eliminar_direccion(id_direccion);
        this.error = md.error;
        return result;
    }
    public Personal getDireccion(int id_direccion){
        return md.obtener_personal_por_id(id_direccion);
    } 
}
