/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Materias;

/**
 *
 * @author Antonio Castro
 */
public class Materia {
    private Integer Id_Materia;
    private String Materia;

public Materia(){
       
    }
    public Materia(String materia){
        
        this.Materia = materia;
    }
    public Materia(Integer idmateria,String materia){
        this.Id_Materia = idmateria;
        this.Materia = materia;
    }

    public Integer getId_Materia() {
        return Id_Materia;
    }

    public void setId_Materia(Integer Id_Materia) {
        this.Id_Materia = Id_Materia;
    }

    public String getMateria() {
        return Materia;
    }

    public void setMateria(String Materia) {
        this.Materia = Materia;
    }
    
    
}

