$(function()
{   //Formulario login
   $('#frm-login').validate({
      rules:{
           nie:{
               required : true
           }
       },
       messages:{
            nie : {
                required: "El campo NIE es obligatorio"
            }
       },
       submitHandler:function(form){
            var data =  $("#frm-login").serialize();
            $.post('LoginPadres', data, function(res, est, jqXHR){
                if(res == "ok"){
                  alert("Bienvenido padre de familia, presione aceptar para ser redireccionado al MenuPirncipal");
                     setTimeout(function(){
                        window.location = "Vistas/Principal/PadresFamilia/Notas.jsp";    
                    },100);
                     
                }else{
                    alert("NIE invalido");
                }
            });
        
        }
    });
});
