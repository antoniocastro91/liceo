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
public class IncludePagos {
    private Integer IdPago;
    private Integer Id_Alummo;
    private Integer Estado;
    private String Nombre;

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }
    
    
    public IncludePagos(){};
    public IncludePagos(Integer IdPago,Integer  Id_Alumno, Integer Estado){
    this.IdPago = IdPago;
    this.Id_Alummo = Id_Alumno;
    this.Estado = Estado;
    };
    public IncludePagos(Integer  Id_Alumno, Integer Estado){
    this.Id_Alummo = Id_Alumno;
    this.Estado = Estado;
    };
    public Integer getIdPago() {
        return IdPago;
    }

    public void setIdPago(Integer IdPago) {
        this.IdPago = IdPago;
    }

    public Integer getId_Alummo() {
        return Id_Alummo;
    }

    public void setId_Alummo(Integer Id_Alummo) {
        this.Id_Alummo = Id_Alummo;
    }

    public Integer getEstado() {
        return Estado;
    }

    public void setEstado(Integer Estado) {
        this.Estado = Estado;
    }
    
    
    
}
