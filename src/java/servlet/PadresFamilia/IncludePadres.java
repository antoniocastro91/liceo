/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.PadresFamilia;

/**
 *
 * @author Antonio Castro
 */
public class IncludePadres {
    private Integer Id_Usuario;
    private String Usuario;
    private String Clave;

    public IncludePadres(){}
    public IncludePadres(Integer id_usuario, String usuario, String clave){
    this.Id_Usuario = id_usuario;
    this.Usuario = usuario;
    this.Clave = clave;
    }
    public IncludePadres(String usuario, String clave){
    this.Usuario = usuario;
    this.Clave = clave;
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

    public String getClave() {
        return Clave;
    }

    public void setClave(String Clave) {
        this.Clave = Clave;
    }
    
    
}
