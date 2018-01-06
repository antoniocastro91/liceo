/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.GradoSeccion;


import Include.GradoSeccion.GradoSeccion;
import Modelo.ModeloGradoSeccion.ModeloGradoSeccion;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorGradoSeccion {
     ModeloGradoSeccion mgs = new ModeloGradoSeccion();
     public String error = "";
        public List<GradoSeccion> listar_gradoseccion(){
            List<GradoSeccion> lista_seccion = new ArrayList<>();
            lista_seccion = this.mgs.listar_GradosSeccion();
            return lista_seccion;
        }
            public List<GradoSeccion> listar_gradoseccionSeccions(){
            List<GradoSeccion> lista_seccion = new ArrayList<>();
            lista_seccion = this.mgs.listar_GradosSeccions();
            return lista_seccion;
        }
        
      
}
