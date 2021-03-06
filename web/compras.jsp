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
         <% // Para fijar una variable en un jsp
           application.getAttribute("admin"); 
             // Para leerla en otro o el mismo JSP
                Integer valor = (Integer)application.getAttribute("admin");
        %>
        <!--include que muestra los datos de las membresias-->
       <jsp:include page="WEB-INF/AddCompras.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
       $( "a.edit" ).each(function(index) { 
           $(this).on("click", function(){
            var myModal = $('#readcompra');
            var currentTR = $(this).closest('tr');
            var nombre = currentTR.find("td.nombre").text();
            var cod = currentTR.find("td.cod").text();
            var descripcion = currentTR.find("td.descripcion").text();
            var cantidad = currentTR.find("td.cantidad").text();
             var precio = currentTR.find("td.precio").text().replace("$", "");
             var pago = currentTR.find("td.pago").text();
         
           //enviar datos a modal
            $('.addcodigo', myModal).val(cod);
            $('.addnombre', myModal).val(nombre);
            $('.adddescripcion', myModal).val(descripcion);
            $('.addcantidad', myModal).val(cantidad);
            $('.addprecio', myModal).val(precio);
            if(pago==="1\n"){
                $('.addpago', myModal).prop('selectedIndex',0);
            }
            else if(pago==="2\n"){
              $('.addpago', myModal).prop('selectedIndex',1);
            }
             //mostrar modal
            myModal.modal({ show: true });
              return false;
            });
          });
          
          //script que permite eliminar registros
          $('a.delete').on('click', function() {
            var myModal = $('#confirmDelete');
             //capturar datos desde tabla
            var currentTR = $(this).closest('tr');
            var cod = currentTR.find("td.cod").text();
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
        </script>
    </body>
</html>
