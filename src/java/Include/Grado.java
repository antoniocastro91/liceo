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
public class Grado {
    private Integer Id_Grado;
    private String grado;
    private String seccion;
    
    public Grado(String grado, String seccion){
        this.grado = grado;
        this.seccion= seccion;
    }
    public Grado(Integer idgrado){
    
    this.Id_Grado = idgrado;
    }
    
    public Grado()
            {
                
            }

    public Integer getId_Grado() {
        return Id_Grado;
    }

    public void setId_Grado(Integer Id_Grado) {
        this.Id_Grado = Id_Grado;
    }

    public String getGrado() {
        return grado;
    }

    public void setGrado(String grado) {
        this.grado = grado;
    }

    public String getSeccion() {
        return seccion;
    }

    public void setSeccion(String seccion) {
        this.seccion = seccion;
    }
   
}
