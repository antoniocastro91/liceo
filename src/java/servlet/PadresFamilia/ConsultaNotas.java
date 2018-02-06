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
public class ConsultaNotas {
    private String NIE;

    public String getNIE() {
        return NIE;
    }

    public void setNIE(String NIE) {
        this.NIE = NIE;
    }
    
    public ConsultaNotas(){}
    public ConsultaNotas(String nie){
    this.NIE = nie;
    }
    
}
