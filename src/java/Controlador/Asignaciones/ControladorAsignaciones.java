/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador.Asignaciones;

import Include.Asignaciones.IncludeAsignaciones;
import Modelo.Asignaciones.ModeloAsignaciones;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Antonio Castro
 */
public class ControladorAsignaciones {
    ModeloAsignaciones ma = new ModeloAsignaciones();
    public boolean insertar(IncludeAsignaciones a){
        return ma.insertarasignaciones(a);
    }
    
    public List<IncludeAsignaciones> listar(int id_personal){
        List<IncludeAsignaciones> lista_asignaciones = new ArrayList<>();
        lista_asignaciones = this.ma.listar_materiaporasignaciones(id_personal);
          return lista_asignaciones;
    }
    public List<IncludeAsignaciones> listar_materiastodas(int id_personal){
        List<IncludeAsignaciones> lista_asignaciones = new ArrayList<>();
        lista_asignaciones = this.ma.listar_todasmaterias(id_personal);
          return lista_asignaciones;
    }
        public List<IncludeAsignaciones> listar_grado(int id_personal){
        List<IncludeAsignaciones> lista_grado = new ArrayList<>();
        lista_grado = this.ma.listar_asignacionesporgrados(id_personal);
          return lista_grado;
    }
        public List<IncludeAsignaciones> listar_gradotodos(int id_personal){
        List<IncludeAsignaciones> lista_grado = new ArrayList<>();
        lista_grado = this.ma.listar_todosgrados(id_personal);
          return lista_grado;
    }
}
