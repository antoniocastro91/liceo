/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Direccion;

/**
 *
 * @author Victor
 */
public class Direccion {
    private Integer Id_Direccion;
    private String NomDireccion;
    private String ApeDireccion;
    private String Dui;
    private String Telefono;
    private String Domicilio;
    private String Usuario;
    private String Contraseña;
    private Integer Nivel;
    private String Estado;
    
    public Direccion(String NomDirector, String ApeDirector,String Dui, String Telefono, String Domicilio,
              String Usuario, String Contraseña, Integer Nivel, String Estado){
    this.NomDireccion = NomDirector;
    this.ApeDireccion = ApeDirector;
    this.Dui = Dui;
    this.Telefono = Telefono;
    this.Domicilio = Domicilio;
    this.Usuario = Usuario;
    this.Contraseña = Contraseña;
    this.Nivel = Nivel;
    this.Estado = Estado;
    }
 public Direccion(Integer id_direccion){
 this.Id_Direccion = id_direccion;
 }
 public Direccion(String usuario, String contraseña){
     this.Usuario   = usuario;
     this.Contraseña = contraseña;
 }
public Direccion(String Usuario){
    this.Usuario = Usuario;
}
 public Direccion(){
 }
    public Integer getId_Direccion() {
        return Id_Direccion;
    }

    public void setId_Direccion(Integer Id_Direccion) {
        this.Id_Direccion = Id_Direccion;
    }

    public String getNomDireccion() {
        return NomDireccion;
    }

    public void setNomDireccion(String NomDireccion) {
        this.NomDireccion = NomDireccion;
    }

    public String getApeDireccion() {
        return ApeDireccion;
    }

    public void setApeDireccion(String ApeDireccion) {
        this.ApeDireccion = ApeDireccion;
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

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public Integer getNivel() {
        return Nivel;
    }

    public void setNivel(Integer Nivel) {
        this.Nivel = Nivel;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
   
    
    
    
}
