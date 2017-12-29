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
public class Meses {
    private Integer Id_mes;
    private Integer Id_trimestre;
    private String Mes;
    
    
    
    public Meses(){}
     public Meses(Integer id_mes, Integer Trimestre, String Mes){
     this.Id_mes= id_mes;
     this.Id_trimestre = Trimestre;
     this.Mes = Mes;
     }
     public Meses(Integer Trimestre, String Mes){
     this.Id_trimestre = Trimestre;
     this.Mes = Mes;
     }

    
     public void setId_mes(Integer id_mes) {
        this.Id_mes = id_mes;
    }
    
    /**
     * @return the Mes
     */
    public Integer getId_mes() {
        return this.Id_mes;
    }
    
     public void setMes(String Mes) {
        this.Mes = Mes;
    }
    
    /**
     * @return the Mes
     */
    public String getMes() {
        return Mes;
    }
    
    /**
     * @return the Id_trimestre
     */
    public Integer getId_trimestre() {
        return Id_trimestre;
    }
    public void setId_trimestre(Integer id_trimestre) {
        this.Id_trimestre = id_trimestre;
    }

    
          

    
}