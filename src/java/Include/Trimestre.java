/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include;

/**
 *
 * @author Antonio Castro
 */
public class Trimestre {
    private Integer Id_Trimestre;
    private String Trimestre;
    private String Mes;
    
    
    
    public Trimestre(){}
     public Trimestre(Integer Idtrimestre, String Trimestre, String Mes){
     this.Id_Trimestre = Idtrimestre;
     this.Trimestre = Trimestre;
     this.Mes = Mes;
     }
     public Trimestre(String Trimestre, String Mes){
     this.Trimestre = Trimestre;
     this.Mes = Mes;
     }

    public Integer getId_Trimestre() {
        return Id_Trimestre;
    }

    public void setId_Trimestre(Integer Id_Trimestre) {
        this.Id_Trimestre = Id_Trimestre;
    }

    public String getTrimestre() {
        return Trimestre;
    }

    public void setTrimestre(String Trimestre) {
        this.Trimestre = Trimestre;
    }

    public String getMes() {
        return Mes;
    }

    public void setMes(String Mes) {
        this.Mes = Mes;
    }
          

    
}
