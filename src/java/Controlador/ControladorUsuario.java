/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Include.Usuario.Usuario;
import Modelo.Usuarios.ModeloUsuario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorUsuario {
    public String error;
     int id_usuario = 1;

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }
    ModeloUsuario mu = new ModeloUsuario();
    public boolean validar(Usuario u){
        boolean autenticado = mu.autentication(u);
        error = mu.error;
        return autenticado;
    }
    public boolean insertar(Usuario u){
        ModeloUsuario ma = new ModeloUsuario();
        return ma.insertarusuario(u);
    }

    public List<Usuario> listar(){
        List<Usuario> lista_usuario = new ArrayList<>();
        lista_usuario = this.mu.listar_Usuario();
        return lista_usuario;
    }
    public boolean actualizar(Usuario u){
        ModeloUsuario ma = new ModeloUsuario();
        boolean result = ma.actualizar(u);
        this.error = ma.error;
        return result;
    } 
     public boolean eliminar(int id_usuario){
        boolean result = mu.eliminar_usuarios(id_usuario);
        this.error = mu.error;
        return result;
    }
      public Usuario getUsuario(int id_usuario){
        return mu.obtener_usuario_por_id(id_usuario);
    }
    public String getViewUser(Usuario u){
        String htmlcode = "";
        htmlcode += "<br><b><font color=blue><p> Bienvenido  </font>"+ u.getUsuario() + "</b></p>";
        return htmlcode;
    } 
}
