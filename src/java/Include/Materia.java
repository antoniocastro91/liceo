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
public class Materia {
    private Integer idmateria;
    private String materia;

public Materia(){
       
    }
    public Materia(Integer idmateria,String materia){
        this.idmateria = idmateria;
        this.materia = materia;
    }

    public Integer getIdmateria() {
        return idmateria;
    }

    public void setIdmateria(Integer idmateria) {
        this.idmateria = idmateria;
    }

    public Materia(String materia){
        this.materia = materia;
    }

    /**
     * @return the materia
     */
    public String getMateria() {
        return materia;
    }

    /**
     * @param materia the materia to set
     */
    public void setMateria(String materia) {
        this.materia = materia;
    }

}

