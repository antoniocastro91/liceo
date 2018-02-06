/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Personal;

/**
 *
 * @author Victor
 */
public class Personal {
    private Integer Id_Personal;
    private String Nombre;
    private String Apellido;
    private String Dui;
    private String Telefono;
    private String Domicilio;
    private String nip;
    private Integer Id_Area;
    private String idarea;

    public String getIdarea() {
        return idarea;
    }

    public void setIdarea(String idarea) {
        this.idarea = idarea;
    }

    
    public Personal(String Nombre, String Apellido,String Dui, String Telefono, String Domicilio,
              String nip, Integer idarea, String idearea){
    this.Nombre = Nombre;
    this.Apellido = Apellido;
    this.Dui = Dui;
    this.Telefono = Telefono;
    this.Domicilio = Domicilio;
    this.nip = nip;
    this.Id_Area = idarea;
    this.idarea = idearea;

    }
    public Personal(String Nombre, String Apellido,String Dui, String Telefono, String Domicilio,
              String nip, String idarea){
    this.Nombre = Nombre;
    this.Apellido = Apellido;
    this.Dui = Dui;
    this.Telefono = Telefono;
    this.Domicilio = Domicilio;
    this.nip = nip;
    this.idarea = idarea;

    }
 public Personal(Integer id_personal){
    this.Id_Personal = id_personal;
    }

 public Personal(){
 }

    public Integer getId_Personal() {
        return Id_Personal;
    }

    public void setId_Personal(Integer Id_Personal) {
        this.Id_Personal = Id_Personal;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }


    public String getDui() {
        return Dui;
    }

    public void setDui(String Dui) {
        this.Dui = Dui;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDomicilio() {
        return Domicilio;
    }

    public void setDomicilio(String Domicilio) {
        this.Domicilio = Domicilio;
    }

    public String getNip() {
        return nip;
    }

    public void setNip(String nip) {
        this.nip = nip;
    }

    public Integer getId_area() {
        return Id_Area;
    }

    public void setId_area(Integer id_area) {
        this.Id_Area = id_area;
    }


    
    
    
}
