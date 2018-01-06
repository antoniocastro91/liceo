/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Seccion;

/**
 *
 * @author Antonio Castro
 */
public class Seccion {
    private Integer Id_Seccion;
    private String Seccion;

    
    public Seccion(){}
    
    public Seccion(Integer idseccion, String seccion){
        this.Id_Seccion = idseccion;
        this.Seccion = seccion;
    }
     public Seccion(Integer idseccion){
        this.Id_Seccion = idseccion;
     }
      public Seccion(String seccion){
        this.Seccion = seccion;
    }
    public Integer getId_Seccion() {
        return Id_Seccion;
    }

    public void setId_Seccion(Integer Id_Seccion) {
        this.Id_Seccion = Id_Seccion;
    }

    public String getSeccion() {
        return Seccion;
    }

    public void setSeccion(String Seccion) {
        this.Seccion = Seccion;
    }
    
    
    
    
}
