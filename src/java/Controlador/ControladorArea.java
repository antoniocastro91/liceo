/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Include.Area;
import Modelo.ModeloArea;
import java.util.ArrayList;
import java.util.List;
/**

/**
 *
 * @author Antonio Castro
 */
public class ControladorArea {
        ModeloArea ma = new ModeloArea();
     public String error = "";

       public List<Area> listar_area(){
            List<Area> lista_area = new ArrayList<>();
            lista_area = this.ma.listar_Areas();
            return lista_area;
        }

}
