<%-- 
    Document   : index
    Created on : 12-nov-2018, 23:40:36
    Author     : Angel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Membresia</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">
    </head> 
    <body>
        <!--include que muestra los datos de las membresias-->
       <jsp:include page="WEB-INF/AddMembresias.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
       $( "a.edit" ).each(function(index) { 
           $(this).on("click", function(){
            var myModal = $('#readmembresia');
            var currentTR = $(this).closest('tr');
            var nombre = currentTR.find("td.nombre").text();
            var cod = currentTR.find("td.codigo").text();
            var descripcion = currentTR.find("td.descripcion").text();
            var costo = currentTR.find("td.costo").text().replace("$", "");
            var get=currentTR.find("td.beneficios").text().replace("\n", "");
            var beneficios = get.split(",");
            $.each(beneficios, function( index, beneficio ) {                            
                 $(":checkbox[value='"+$.trim(beneficio)+"']").prop("checked","true");
            });
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            $('.addnombre', myModal).val(nombre);
            $('.adddescripcion', myModal).val(descripcion);
            $('.addcosto', myModal).val(costo);
             myModal.modal({ show: true });
                
              return false;
            });
         });
          
          //eliminando checkbox en modal al cerrar
           $("#readmembresia").on('hidden.bs.modal', function () {
                   $('input[type="checkbox"]').prop("checked", false);
                   location.reload();
            });
        //eliminando checkbox en modal al cerrar
           $("#agregarmembresia").on('hidden.bs.modal', function () {
                   $('input[type="checkbox"]').prop("checked", false);
            });
           //asignado values  checkbox en modal al abrir 
            $("#readmembresia" ).on('show.bs.modal', function(){
                $('.c1').val("Baile");
                $('.c2').val("Yoga");
                $('.c3').val("Spinning");
                $('.c4').val("Tae Bo");
                $('.c5').val("Uso Ilimitado de Gimnasio");
                $('.c6').val("Entrenamiento Funcional");
                $('.c7').val("Parqueo Gratis");
                $('.c8').val("Yoga");
                select();
            });
        //eliminando registros
          $('a.delete').on('click', function() {
            var myModal = $('#confirmDelete');
             //capturar datos desde tabla
            var currentTR = $(this).closest('tr');
            var cod = currentTR.find("td.codigo").text();
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            //mostrar modal
            myModal.modal({ show: true });
              return false;
            });
            
            //mascara para dinero
        $(function() {
            $('#money').maskMoney();
        });
       //script para selecionar all checkbox 
      $('.check-all').checkAll();

         
        </script>
    </body>
</html>
