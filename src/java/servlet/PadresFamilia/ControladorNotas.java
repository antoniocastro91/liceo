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
    public boolean validar(ConsultaNotas cn){
        boolean autenticado = mn.autentication(cn);
        error = mn.error;
        return autenticado;
    } 
}
