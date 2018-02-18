/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Controlador.Conexion;
import Include.IncludePagos;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ModeloPago extends Conexion{
      private Conexion c = new Conexion();
      public String error = "";
   
    public boolean insertarpagos(IncludePagos p){
    boolean flag = false;
     PreparedStatement pst = null;
     try{
        String sql="insert into cancelaciones (Id_Matricula, Estado) values (?,?)";
         pst = getConnection().prepareStatement(sql);
            pst.setInt(1, p.getId_Alummo());
            pst.setInt(2, p.getEstado());

      if(pst.executeUpdate() == 1){
            flag = true;
             }
        
        }catch (Exception e) {
             System.err.println(e.getMessage());
        }finally{
            try {
                if(getConnection()!= null) getConnection().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
    return flag;
        }
      public List<IncludePagos> listar_Pagos() {
        List<IncludePagos> lista_pago = new ArrayList<>();
        try {
            Statement statement = this.c.getConnection().createStatement();
            ResultSet rs = statement.executeQuery("select c.*, concat(m.Nombres, \" \", m.Primer_Apellido, \" \", m.Segundo_Apellido) as nombre from cancelaciones c join matricula m  on m.Id_Matricula = c.Id_Matricula");
            while (rs.next()) {
                IncludePagos pagos = new IncludePagos();
                pagos.setIdPago(rs.getInt("Id_Pago"));
                pagos.setNombre(rs.getString("nombre"));
                pagos.setEstado(rs.getInt("Estado"));
                lista_pago.add(pagos);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista_pago;
    }
       
 public IncludePagos obtener_pago_por_id(int id_pago){
     IncludePagos pagos = new  IncludePagos();
     PreparedStatement pst = null;
        try {
            String sql="select * from cancelaciones where Id_Pago = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_pago);
            pst.executeQuery();
            ResultSet rs = pst.getResultSet();
            while (rs.next()) {
                pagos.setIdPago(rs.getInt("Id_Pago"));
                pagos.setId_Alummo(rs.getInt("Id_Matricula"));
                pagos.setEstado(rs.getInt("Estado"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return pagos;      
    }
     
public boolean actualizar (IncludePagos p){
     boolean resultado = false;
        PreparedStatement pst= null;
        try{
            String sql = "";
                sql = "update cancelaciones set Id_Matricula = ?, Estado = ? where Id_Pago = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setInt(1, p.getId_Alummo());
                pst.setInt(2, p.getEstado());
                pst.setInt(3, p.getIdPago());
            
            if(pst.executeUpdate() >= 1){
                resultado = true;
                this.error = "No error";
            }else{
                this.error = "Error";
                resultado = false;
            }
        }catch (Exception e) {
            this.error = e.getMessage();
             System.err.println(e.getMessage());
        }finally{
            try {
                if(getConnection()!= null) getConnection().close();
                if(pst != null) pst.close();
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        }
        return resultado;      
    }
     
     public boolean eliminar_pagos(int id_pago){
     PreparedStatement pst = null;
     boolean resultado = false;
        try {
            String sql="delete from cancelaciones where Id_Pago = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id_pago);
            resultado = pst.executeUpdate() >= 1;
        } catch (SQLException e) {
            e.printStackTrace();
            this.error = e.getMessage();
        }
        return resultado;
    }
     
     
}
