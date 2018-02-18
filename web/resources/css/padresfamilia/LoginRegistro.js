$(function()
{
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
       }, submitHandler:function(form){
             var data =  $("#frm-login").serialize();
                 $.post('LoginPadres', data, function(res, est, jqXHR){
               if(res == "ok"){
                  alert("Bienvenido padre de familia, presione aceptar para ser redireccionado al MenuPirncipal");
                     setTimeout(function(){
                        window.location = "Vistas/Principal/PadresFamilia/Principal.jsp";    
                    },100);
                }else{
                    alert("Usuario y/o Clave invalido");
                    }
                 });
                 
                }
      }), $('#frm-registrousuario').validate({
          
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
       }, submitHandler:function(form){
             var data =  $("#frm-registrousuario").serialize();
                 $.post('UsuariosPadres_Insertar', data, function(res, est, jqXHR){
               if(res == "1"){
                  alert("Registro insertado, presione aceptar");
                     setTimeout(function(){
                        window.location = "Vistas/Principal/PadresFamilia/RegistrarsePadresFamilia.jsp";    
                    },100);
                    }else{
                        alert("Usuario y/o Clave invalido");
                        }
                     });
                }
     });
       
  // constants
  var SHOW_CLASS = 'show',
      HIDE_CLASS = 'hide',
      ACTIVE_CLASS = 'active';
  
  $( '.tabs' ).on( 'click', 'li a', function(e){
    e.preventDefault();
    var $tab = $( this ),
         href = $tab.attr( 'href' );
  
     $( '.active' ).removeClass( ACTIVE_CLASS );
     $tab.addClass( ACTIVE_CLASS );
  
     $( '.show' )
        .removeClass( SHOW_CLASS )
        .addClass( HIDE_CLASS )
        .hide();
    
      $(href)
        .removeClass( HIDE_CLASS )
        .addClass( SHOW_CLASS )
        .hide()
        .fadeIn( 550 );
  });
})(jQuery );