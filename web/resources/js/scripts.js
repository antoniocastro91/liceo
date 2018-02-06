$(function()
{   //Formulario login
   $('#frm-login').validate({
      rules:{
           usuario:{
               required : true
           },
           clave:{
               required: true
          
           }
       },
       messages:{
            usuario : {
                required: "El campo usuario es obligatorio"
            },
            clave:{
                required : "El campo password es obligatorio"
              
            }
       },
       submitHandler:function(form){
            var data =  $("#frm-login").serialize();
            $.post('Login', data, function(res, est, jqXHR){
                if(res === '1'){
                     
                    alert("Bienvenido admin, presione aceptar para ser redireccionado al MenuPirncipal");
                     setTimeout(function(){
                        window.location = "Vistas/Principal/Principal.jsp";    
                    },100);
                     
               }else if(res === '2'){
                   
                      alert("Bienvenido usuario,presione aceptar para ser redireccionado al MenuPirncipal")
                      window.location = "Vistas/Principal/Principal.jsp";    
                    
                }else{
                    alert("Credenciales invalidas");
                }
            });
        
        }
    });
});