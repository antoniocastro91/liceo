/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Direccion.Direccion;
import Modelo.Direccion.ModeloDireccion;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Victor
 */
public class ControladorDireccion {
    ModeloDireccion md = new ModeloDireccion();
    public String error = "";

    public boolean insertar(Direccion d){
        ModeloDireccion md = new ModeloDireccion();
        return md.insertardirector(d);
}
         public List<Direccion> listar(){
            List<Direccion> lista_direccion = new ArrayList<>();
            lista_direccion = this.md.listar_Direccion();
            return lista_direccion;
        }
      
        public boolean actualizar(Direccion d){
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
    public Direccion getDireccion(int id_direccion){
        return md.obtener_direccion_por_id(id_direccion);
    }
         public String getViewUser(Direccion d){
         String htmlcode = "";
         htmlcode += "<b> <p> Bienvenido " + d.getUsuario() + "</b></p>" +"<a href='CerrarSesion'> Cerrar Sesion</a> ";
        return htmlcode;
    } 
}
