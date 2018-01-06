/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.Profesores.Profesores;
import Include.Usuario.Usuario;
import Modelo.Usuarios.ModeloUsuario;

/**
 *
 * @author Antonio Castro
 */
public class ControladorUsuario {
        public String error;
        public boolean validar(Usuario u){
            ModeloUsuario mu = new ModeloUsuario();
            boolean autenticado = mu.autentication(u);
            error = mu.error;
            return autenticado;
    }
        
        public String getViewUser(Usuario u){
            String htmlcode = "";
            htmlcode += "<b> <p> Bienvenido " + u.getUsuario() + "</b></p>" +"<a href='CerrarSesion'> Cerrar Sesion</a> ";
        return htmlcode;
    } 
}
