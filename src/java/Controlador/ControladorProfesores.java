/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Profesores.Profesores;

import Modelo.Profesores.ModeloProfesores;

/**
 *
 * @author Victor
 */
public class ControladorProfesores {
       ModeloProfesores mp = new ModeloProfesores();
      public boolean insertar(Profesores p){
  
        return mp.insertarprofesores(p);
}
        public Profesores getProfesor(int id_profesor){
        return mp.obtener_profesor_por_id(id_profesor);
    }
     public String getViewUser(Profesores p){
         String htmlcode = "";
         htmlcode += "<b> <p> Bienvenido " + p.getUsuario() + "</b></p>" +"<a href='CerrarSesion'> Cerrar Sesion</a> ";
        return htmlcode;
    } 
}
