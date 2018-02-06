/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Include.Usuario;

/**
 *
 * @author Antonio Castro
 */
public class Usuario {
    private Integer Id_Usuario;
    private String Usuario;
    private String Contraseña;
    private Integer Estado = 1;
    private Integer Id_Rol=1 ;    
    private Integer Id_Personal;
    private String NomUsuario;

    public String getNomUsuario() {
        return NomUsuario;
    }

    public void setNomUsuario(String NomUsuario) {
        this.NomUsuario = NomUsuario;
    }

    
    public Usuario(){}
    public Usuario(Integer id_usuario, String usuario, String contraseña, Integer estado, Integer id_rol, Integer id_personal){
            this.Id_Usuario = id_usuario;
            this.Usuario = usuario;
            this.Contraseña = contraseña;
            this.Estado = estado;
            this.Id_Rol = id_rol;
            this.Id_Personal = id_personal;
    }
    public Usuario( String usuario, String contraseña, Integer estado, Integer id_rol,Integer id_personal){
           this.Usuario = usuario;
           this.Contraseña = contraseña;
           this.Estado = estado;
           this.Id_Rol = id_rol;
           this.Id_Personal = id_personal;
    }
    public Usuario(String usuario, String contraseña){
            this.Usuario = usuario;
            this.Contraseña = contraseña;
    }
    public Usuario(String usuario){
            this.Usuario = usuario;
    }
    
    public Integer getId_Personal() {
        return Id_Personal;
    }

    public void setId_Personal(Integer Id_Personal) {
        this.Id_Personal = Id_Personal;
    }
    
    public Integer getId_Usuario() {
        return Id_Usuario;
    }

    public void setId_Usuario(Integer Id_Usuario) {
        this.Id_Usuario = Id_Usuario;
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

    public Integer getEstado() {
        return Estado;
    }

    public void setEstado(Integer Estado) {
        this.Estado = Estado;
    }

    public Integer getId_Rol() {
        return Id_Rol;
    }

    public void setId_Rol(Integer Id_Rol) {
        this.Id_Rol = Id_Rol;
    }
    
    
    
}
