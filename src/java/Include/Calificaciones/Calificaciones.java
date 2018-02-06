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
    private Integer Id_Matricula;
    private Integer Id_Grado;
    private Integer Id_Materia;
    private Integer Id_Mes;
    private Integer Id_Personal;
    private String Anio;
    private String Nombre;
    private String Materia;
    private String NIE;
    private String Mes;
    

    public String getMes() {
        return Mes;
    }

    public void setMes(String Mes) {
        this.Mes = Mes;
    }

    public String getNIE() {
        return NIE;
    }

    public void setNIE(String NIE) {
        this.NIE = NIE;
    }

    public String getMateria() {
        return Materia;
    }

    public void setMateria(String Materia) {
        this.Materia = Materia;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        this.Nombre = nombre;
    }

    public Calificaciones(double Nota1, double Nota2, double Nota3, double Promedio,
            Integer Id_Matricula, Integer Id_Grado, Integer Id_Materia, Integer Id_Trimestre, Integer Id_Personal, String año){
        this.Nota1 = Nota1;
        this.Nota2 = Nota2;
        this.Nota3 = Nota3;
        this.Promedio = Promedio;
        this.Id_Matricula = Id_Matricula;
        this.Id_Grado = Id_Grado;
        this.Id_Materia = Id_Materia;
        this.Id_Mes = Id_Trimestre;
        this.Id_Personal = Id_Personal; 
        this.Anio = año; 
    }
    
    public Calificaciones(){
        
    }
    
    public String getAnio() {
        return Anio;
    }

    public void setAnio(String Anio) {
        this.Anio = Anio;
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

    public Integer getId_Matricula() {
        return Id_Matricula;
    }

    public void setId_Matricula(Integer Id_Matricula) {
        this.Id_Matricula = Id_Matricula;
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

    public Integer getId_Mes() {
        return Id_Mes;
    }

    public void setId_Mes(Integer Id_Mes) {
        this.Id_Mes = Id_Mes;
    }

    public Integer getId_Personal() {
        return Id_Personal;
    }

    public void setId_Personal(Integer Id_Personal) {
        this.Id_Personal = Id_Personal;
    }
    
    
    
    
}
