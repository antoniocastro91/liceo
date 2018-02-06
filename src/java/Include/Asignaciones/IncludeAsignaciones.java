/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Asignaciones;

/**
 *
 * @author Antonio Castro
 */
public class IncludeAsignaciones {
    private Integer Id_Asignaciones;
    private Integer Id_Grado;
    private Integer Id_Materia;
    private Integer Id_Personal;
    private String NomMateria;
    private String NomGrado;

    public String getNomMateria() {
        return NomMateria;
    }

    public void setNomMateria(String NomMateria) {
        this.NomMateria = NomMateria;
    }
    
    public IncludeAsignaciones(){}
    public IncludeAsignaciones(Integer idasignaciones, Integer idgrado, Integer idmateria,Integer idpersonal){
    this.Id_Asignaciones = idasignaciones;
    this.Id_Grado = idgrado;
    this.Id_Materia = idmateria;
    this.Id_Personal = idpersonal;
    }
    public IncludeAsignaciones( Integer idgrado, Integer idmateria,Integer idpersonal, String nommateria){
    
    this.Id_Grado = idgrado;
    this.Id_Materia = idmateria;
    this.Id_Personal = idpersonal;
    this.NomMateria = nommateria;
    }

    public String getNomGrado() {
        return NomGrado;
    }

    public void setNomGrado(String NomGrado) {
        this.NomGrado = NomGrado;
    }
    public IncludeAsignaciones( Integer idgrado, Integer idmateria,Integer idpersonal){
    
    this.Id_Grado = idgrado;
    this.Id_Materia = idmateria;
    this.Id_Personal = idpersonal;

    }
    public Integer getId_Asignaciones() {
        return Id_Asignaciones;
    }

    public void setId_Asignaciones(Integer Id_Asignaciones) {
        this.Id_Asignaciones = Id_Asignaciones;
    }

    public Integer getId_Grado() {
        return Id_Grado;
    }

    public void setId_Grado(Integer Id_Grado) {
        this.Id_Grado = Id_Grado;
    }

    public Integer getId_Materia() {
        return Id_Materia;
    }

    public void setId_Materia(Integer Id_Materia) {
        this.Id_Materia = Id_Materia;
    }

    public Integer getId_Personal() {
        return Id_Personal;
    }

    public void setId_Personal(Integer Id_Personal) {
        this.Id_Personal = Id_Personal;
    }
    
    
}
