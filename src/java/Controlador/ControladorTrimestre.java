
package Controlador;

import Include.Trimestre;
import Modelo.ModeloTrimestre;
import java.util.ArrayList;
import java.util.List;

public class ControladorTrimestre {
     ModeloTrimestre ma = new ModeloTrimestre();
    String error ="";
    
    public boolean insertar(Trimestre t){
        boolean flag;
        ModeloTrimestre ma = new ModeloTrimestre();
       return ma.insertartrimestre(t);
       
    }
    
         public List<Trimestre> listar_trimestre(){
            List<Trimestre> lista_trimestre= new ArrayList<>();
            lista_trimestre = this.ma.listar_trimestre();
            return lista_trimestre;
        }
}
