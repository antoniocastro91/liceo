 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include;

/**
 *
 * @author Victor
 */
public class Profesores {
    private String NomProfesor;
    private String ApeProfesor;
    private String Telefono;
    private String Domicilio;
    private String Dui;
    private String Nip;
    private String Usuario;
    private String Contraseña;
    private String Nivel;
    private String Estado;
            
     public Profesores(String NomProfesor, String ApeProfesor, String Telefono, String Domicilio,
            String Dui, String Nip, String Usuario, String Contraseña, String Nivel, String Estado){
    this.NomProfesor = NomProfesor;
    this.ApeProfesor = ApeProfesor;
    this.Telefono = Telefono;
    this.Domicilio = Domicilio;
    this.Dui = Dui;
    this.Nip = Nip;
    this.Usuario = Usuario;
    this.Contraseña = Contraseña;
    this.Nivel = Nivel;
    this.Estado = Estado;
    }
     public Profesores(String usuario, String contraseña){
         this.Usuario = usuario;
         this.Contraseña = contraseña;
         
     }
 public Profesores(String usuario){
        this.Usuario = usuario;
    }
    public String getNomProfesor() {
        return NomProfesor;
    }

    public void setNomProfesor(String NomProfesor) {
        this.NomProfesor = NomProfesor;
    }

    public String getApeProfesor() {
        return ApeProfesor;
    }

    public void setApeProfesor(String ApeProfesor) {
        this.ApeProfesor = ApeProfesor;
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

    public String getDui() {
        return Dui;
    }

    public void setDui(String Dui) {
        this.Dui = Dui;
    }

    public String getNip() {
        return Nip;
    }

    public void setNip(String Nip) {
        this.Nip = Nip;
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

    public String getNivel() {
        return Nivel;
    }

    public void setNivel(String Nivel) {
        this.Nivel = Nivel;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }
    
  
       
    
}
