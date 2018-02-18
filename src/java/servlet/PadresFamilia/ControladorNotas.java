/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.PadresFamilia;

/**
 *
 * @author Antonio Castro
 */
public class ControladorNotas {
   public String error;
    ModeloNotas mn = new ModeloNotas();
    public boolean validar(IncludePadres cn){
        boolean autenticado = mn.autentication(cn);
        error = mn.error;
        return autenticado;
    } 
    public boolean insertar(IncludePadres ip){
      boolean registrar = mn.insertarusuario(ip);
        error = mn.error;
        return registrar;
        
    }
        public String getViewUser(IncludePadres u){
        String htmlcode = "";
        htmlcode += "<b><font color=black><p>Bienvenido</font> " + "<font color=orange> " + u.getUsuario() + "</font></b></p>";
        return htmlcode;
    } 
}
