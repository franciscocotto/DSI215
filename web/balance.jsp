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
        <title>Balance</title>
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
       <jsp:include page="WEB-INF/AddBalance.jsp" />
        <!--llama todos los script-->
        <script src="js/scripts.js"></script>
        <script>   
//            script para edita datos de tabla en modal
      $(document).ready(function(){
   $('#tab1').DataTable({
      responsive: true,
      searching: false,
       lengthChange: false,
      info: false,
      paging: false,
      order: false
   });

   $('#tab2').DataTable({
      responsive: true,
      searching: false,
       lengthChange: false,
      info: false,
      paging: false,
      order: false
   });
   
   $('#tab3').DataTable({
      responsive: true,
      searching: false,
      lengthChange: false,
      info: false,
      paging: false,
      order: false
   });
   
   $('#tab4').DataTable({
      responsive: true,
      searching: false,
      lengthChange: false,
      info: false,
      paging: false,
      order: false
   });
   $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
      $($.fn.dataTable.tables(true)).DataTable()
         .columns.adjust()
         .responsive.recalc();
   });   
   
});
        </script>
    </body>
</html>
