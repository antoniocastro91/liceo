/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Calificaciones;

/**
 *
 * @author Victor
 */
public class Calificaciones {
    private double Nota1;
    private double Nota2;
    private double Nota3;
    private double Promedio;
    private Integer Id_Alumno;
    private Integer Id_Grado;
    private Integer Id_Materia;
    private Integer Id_Trimestre;
    private Integer Id_Profesor;

    public Calificaciones(double Nota1, double Nota2, double Nota3, double Promedio,
            Integer Id_Alumno, Integer Id_Grado, Integer Id_Materia, Integer Id_Trimestre, Integer Id_Profesor){
        this.Nota1 = Nota1;
        this.Nota2 = Nota2;
        this.Nota3 = Nota3;
        this.Promedio = Promedio;
        this.Id_Alumno = Id_Alumno;
        this.Id_Grado = Id_Grado;
        this.Id_Materia = Id_Materia;
        this.Id_Trimestre = Id_Trimestre;
        this.Id_Profesor = Id_Profesor; 
    }
    
    public double getNota1() {
        return Nota1;
    }

    public void setNota1(double Nota1) {
        this.Nota1 = Nota1;
    }

    public double getNota2() {
        return Nota2;
    }

    public void setNota2(double Nota2) {
        this.Nota2 = Nota2;
    }

    public double getNota3() {
        return Nota3;
    }

    public void setNota3(double Nota3) {
        this.Nota3 = Nota3;
    }

    public double getPromedio() {
        return Promedio;
    }

    public void setPromedio(double Promedio) {
        this.Promedio = Promedio;
    }

    public Integer getId_Alumno() {
        return Id_Alumno;
    }

    public void setId_Alumno(Integer Id_Alumno) {
        this.Id_Alumno = Id_Alumno;
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

    public Integer getId_Trimestre() {
        return Id_Trimestre;
    }

    public void setId_Trimestre(Integer Id_Trimestre) {
        this.Id_Trimestre = Id_Trimestre;
    }

    public Integer getId_Profesor() {
        return Id_Profesor;
    }

    public void setId_Profesor(Integer Id_Profesor) {
        this.Id_Profesor = Id_Profesor;
    }
    
    
    
    
}
