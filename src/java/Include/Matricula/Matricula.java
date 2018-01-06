/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Matricula;

/**
 *
 * @author Antonio Castro
 */
public class Matricula {
    private Integer Id_Matricula;
    private String Año;
    private Integer Id_GradoSeccion;
    private String Grado;
    private String Seccion;
    private String Primer_Apellido;
    private String Segundo_Apellido;
    private String Nombres;
    private String Fecha_Nacimiento;
    private String Edad;
    private String Sexo;
    private String Municipio;
    private String Departamento;
    private String Repite_Grado;
    private String Documentos_Presentados;
    private String Direccion;
    private String Telefono;
    private String NIE;
    private String Nombre_Madre;
    private String Trabajo_Madre;
    private String Nombre_Padre;
    private String Trabajo_Padre;
    private String Parentesco;
    private String Nombre_Parentesco;
    private String Trabajo_Parentesco;

    public Matricula(){}
    
    public Matricula(Integer Id_Matricula, String Año,Integer idgradoseccion, String Primer_Apellido, String Segundo_Apellido,String Nombres,String Fecha_Nacimiento,String Edad ,String Sexo,String Municipio,String Departamento,String Repite_Grado,String Documentos_Presentados,  String Direccion,String Telefono,String NIE ,String Nombre_Madre, String Trabajo_Madre,String Nombre_Padre, String Trabajo_Padre, String Parentesco,String Nombre_Parentesco,String Trabajo_Parentesco){
    this.Id_Matricula = Id_Matricula;
    this.Año = Año;
    this.Id_GradoSeccion = idgradoseccion;
    this.Primer_Apellido = Primer_Apellido ;
    this.Segundo_Apellido = Segundo_Apellido ;
    this.Nombres = Nombres;
    this.Fecha_Nacimiento = Fecha_Nacimiento ;
    this.Edad = Edad ;
    this.Sexo = Sexo;
    this.Municipio = Municipio ;
    this.Departamento = Departamento ;
    this.Repite_Grado = Repite_Grado;
    this.Documentos_Presentados = Documentos_Presentados;
    this.Direccion = Direccion ;
    this.Telefono = Telefono;
    this.NIE = NIE;
    this.Nombre_Madre =Nombre_Madre ;
    this.Trabajo_Madre = Trabajo_Madre ;
    this.Nombre_Padre = Nombre_Padre ;
    this.Trabajo_Padre =Trabajo_Padre ;
    this.Parentesco = Parentesco;
    this.Nombre_Parentesco = Nombre_Parentesco;
    this.Trabajo_Parentesco = Trabajo_Parentesco ;
    
    }
        
    public Matricula( String año,Integer idgradoseccion, String primer_apellido, String segundo_apellido,String nombres,String fecha_nacimiento,String edad ,String sexo,String municipio,String departamento,String repite_grado,String documentos_presentados,  String direccion,String telefono, String NIE,String nombre_madre, String trabajo_madre, String nombre_padre, String trabajo_padre, String parentesco,String nombre_parentesco,String trabajo_parentesco){

    this.Año = año;
    this.Id_GradoSeccion = idgradoseccion;
    this.Primer_Apellido = primer_apellido;
    this.Segundo_Apellido = segundo_apellido ;
    this.Nombres = nombres;
    this.Fecha_Nacimiento = fecha_nacimiento ;
    this.Edad = edad ;
    this.Sexo = sexo;
    this.Municipio = municipio ;
    this.Departamento = departamento ;
    this.Repite_Grado = repite_grado;
    this.Documentos_Presentados = documentos_presentados;
    this.Direccion = direccion ;
    this.Telefono = telefono;
    this.NIE = NIE;
    this.Nombre_Madre = nombre_madre ;
    this.Trabajo_Madre = trabajo_madre ;
    this.Nombre_Padre = nombre_padre ;
    this.Trabajo_Padre = trabajo_padre ;
    this.Parentesco = parentesco;
    this.Nombre_Parentesco = nombre_parentesco;
    this.Trabajo_Parentesco = trabajo_parentesco ;
    
    }

   public Matricula( String año,String primer_apellido, String segundo_apellido,String nombres,String fecha_nacimiento,String edad ,String sexo,String municipio,String departamento,String repite_grado,String documentos_presentados,  String direccion,String telefono, String NIE,String nombre_madre, String trabajo_madre, String nombre_padre, String trabajo_padre, String parentesco,String nombre_parentesco,String trabajo_parentesco){

    this.Año = año;
    this.Primer_Apellido = primer_apellido;
    this.Segundo_Apellido = segundo_apellido ;
    this.Nombres = nombres;
    this.Fecha_Nacimiento = fecha_nacimiento ;
    this.Edad = edad ;
    this.Sexo = sexo;
    this.Municipio = municipio ;
    this.Departamento = departamento ;
    this.Repite_Grado = repite_grado;
    this.Documentos_Presentados = documentos_presentados;
    this.Direccion = direccion ;
    this.Telefono = telefono;
    this.NIE = NIE;
    this.Nombre_Madre = nombre_madre ;
    this.Trabajo_Madre = trabajo_madre ;
    this.Nombre_Padre = nombre_padre ;
    this.Trabajo_Padre = trabajo_padre ;
    this.Parentesco = parentesco;
    this.Nombre_Parentesco = nombre_parentesco;
    this.Trabajo_Parentesco = trabajo_parentesco ;
    
    }

    public Integer getId_Matricula() {
        return Id_Matricula;
    }

    public void setId_Matricula(Integer Id_Matricula) {
        this.Id_Matricula = Id_Matricula;
    }
    
    public String getAño() {
        return Año;
    }

    public void setAño(String Año) {
        this.Año = Año;
    }

    public Integer getId_GradoSeccion() {
        return Id_GradoSeccion;
    }

    public void setId_GradoSeccion(Integer Id_GradoSeccion) {
        this.Id_GradoSeccion = Id_GradoSeccion;
    }

    public String getGrado() {
        return Grado;
    }

    public void setGrado(String Grado) {
        this.Grado = Grado;
    }

    public String getSeccion() {
        return Seccion;
    }

    public void setSeccion(String Seccion) {
        this.Seccion = Seccion;
    }

    public String getPrimer_Apellido() {
        return Primer_Apellido;
    }

    public void setPrimer_Apellido(String Primer_Apellido) {
        this.Primer_Apellido = Primer_Apellido;
    }

    public String getSegundo_Apellido() {
        return Segundo_Apellido;
    }

    public void setSegundo_Apellido(String Segundo_Apellido) {
        this.Segundo_Apellido = Segundo_Apellido;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getSexo() {
        return Sexo;
    }

    public void setSexo(String Sexo) {
        this.Sexo = Sexo;
    }

    public String getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(String Municipio) {
        this.Municipio = Municipio;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public String getRepite_Grado() {
        return Repite_Grado;
    }

    public void setRepite_Grado(String Repite_Grado) {
        this.Repite_Grado = Repite_Grado;
    }

    public String getDocumentos_Presentados() {
        return Documentos_Presentados;
    }

    public void setDocumentos_Presentados(String Documentos_Presentados) {
        this.Documentos_Presentados = Documentos_Presentados;
    }

    public String getDireccion() {
        return Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getNIE() {
        return NIE;
    }

    public void setNIE(String NIE) {
        this.NIE = NIE;
    }

   
    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getNombre_Madre() {
        return Nombre_Madre;
    }

    public void setNombre_Madre(String Nombre_Madre) {
        this.Nombre_Madre = Nombre_Madre;
    }

    public String getTrabajo_Madre() {
        return Trabajo_Madre;
    }

    public void setTrabajo_Madre(String Trabajo_Madre) {
        this.Trabajo_Madre = Trabajo_Madre;
    }

    public String getNombre_Padre() {
        return Nombre_Padre;
    }

    public void setNombre_Padre(String Nombre_Padre) {
        this.Nombre_Padre = Nombre_Padre;
    }

    public String getTrabajo_Padre() {
        return Trabajo_Padre;
    }

    public void setTrabajo_Padre(String Trabajo_Padre) {
        this.Trabajo_Padre = Trabajo_Padre;
    }

    public String getParentesco() {
        return Parentesco;
    }

    public void setParentesco(String Parentesco) {
        this.Parentesco = Parentesco;
    }

    public String getNombre_Parentesco() {
        return Nombre_Parentesco;
    }

    public void setNombre_Parentesco(String Nombre_Parentesco) {
        this.Nombre_Parentesco = Nombre_Parentesco;
    }

    public String getTrabajo_Parentesco() {
        return Trabajo_Parentesco;
    }

    public void setTrabajo_Parentesco(String Trabajo_Parentesco) {
        this.Trabajo_Parentesco = Trabajo_Parentesco;
    }
    
    
    
    
    
}
