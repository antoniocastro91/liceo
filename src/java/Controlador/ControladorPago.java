/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Include.IncludePagos;
import Modelo.ModeloPago;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorPago {
    ModeloPago mp = new ModeloPago();
    public String error = "";

    public boolean insertar(IncludePagos p){
       return mp.insertarpagos(p);
    }
    public List<IncludePagos> listar(){
       List<IncludePagos> lista_pago = new ArrayList<>();
       lista_pago = this.mp.listar_Pagos();
       return lista_pago;
    }
      
    public boolean actualizar(IncludePagos p){
        boolean result = mp.actualizar(p);
        this.error = mp.error;
        return result;
    }
    public boolean eliminar(int id_pago){
        boolean result = mp.eliminar_pagos(id_pago);
        this.error = mp.error;
        return result;
    }
    public IncludePagos getPago(int id_pago){
        return mp.obtener_pago_por_id(id_pago);
    }
}
