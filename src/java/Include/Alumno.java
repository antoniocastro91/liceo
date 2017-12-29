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
public class Alumno {
    private String nombre;
    private String apellido;
    private Integer nie;
    private Integer edad;
    private String fechanacimiento;
    private String nombreencargado;
    private String apellidoencargado;
    private String dui;
    private String telefono;
    private String domicilio;
    private Integer idgrado;
    
    public Alumno(String nombre, String apellido, Integer nie, Integer edad, String fechanacimiento, String nombreencargado, String apellidoencargado, String dui, String telefono, String domicilio, Integer idgrado){
    this.nombre= nombre;
    this.apellido = apellido;
    this.nie = nie;
    this.edad = edad;
    this.fechanacimiento = fechanacimiento;
    this.nombreencargado = nombreencargado;
    this.apellidoencargado = apellidoencargado;
    this.dui = dui;
    this.telefono = telefono;
    this.domicilio = domicilio;
    this.idgrado=idgrado;
    }
    public Alumno(){
    }
    public Alumno(String nombre){
    this.nombre = nombre;
    }
    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * @param apellido the apellido to set
     */
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    /**
     * @return the nie
     */
    public Integer getNie() {
        return nie;
    }

    /**
     * @param nie the nie to set
     */
    public void setNie(Integer nie) {
        this.nie = nie;
    }

    /**
     * @return the edad
     */
    public Integer getEdad() {
        return edad;
    }

    /**
     * @param edad the edad to set
     */
    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    /**
     * @return the fechanacimiento
     */
    public String getFechanacimiento() {
        return fechanacimiento;
    }

    /**
     * @param fechanacimiento the fechanacimiento to set
     */
    public void setFechanacimiento(String fechanacimiento) {
        this.fechanacimiento = fechanacimiento;
    }

    /**
     * @return the nombreencargado
     */
    public String getNombreencargado() {
        return nombreencargado;
    }

    /**
     * @param nombreencargado the nombreencargado to set
     */
    public void setNombreencargado(String nombreencargado) {
        this.nombreencargado = nombreencargado;
    }

    /**
     * @return the apellidoencargado
     */
    public String getApellidoencargado() {
        return apellidoencargado;
    }

    /**
     * @param apellidoencargado the apellidoencargado to set
     */
    public void setApellidoencargado(String apellidoencargado) {
        this.apellidoencargado = apellidoencargado;
    }

    /**
     * @return the dui
     */
    public String getDui() {
        return dui;
    }

    /**
     * @param dui the dui to set
     */
    public void setDui(String dui) {
        this.dui = dui;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the domicilio
     */
    public String getDomicilio() {
        return domicilio;
    }

    /**
     * @param domicilio the domicilio to set
     */
    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    /**
     * @return the idgrado
     */
    public Integer getIdgrado() {
        return idgrado;
    }

    /**
     * @param idgrado the idgrado to set
     */
    public void setIdgrado(Integer idgrado) {
        this.idgrado = idgrado;
    }
    
}

