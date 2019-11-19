<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <div id="wrapper">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="images/logo.png">
                    </a>
                </div>
          <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp;Bienvenido(a):
                          <% 
                        Integer valor = (Integer)getServletContext().getAttribute("admin");
                         if( valor == 1){
                        %> 
                        Administrador
                       <%} else{
                        %> 
                        Empleado
                       <%} %>
                        <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<%=request.getContextPath()%>/LogoutServlet"><i class="fa fa-fw fa-power-off"></i>Cerrar Sesi&oacute;n</a>
                        </li>
                    </ul>
                </li>
            </ul>
             
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <a href="LoginServlet">
                                <i class="fa fa-fw fa-pie-chart"></i> Clientes                                                   
                            </a>
                        </li> 
                         <li>
                        <a href="membresias.jsp"><i class="fa fa-fw fa-cog"></i> Membresias
                        </a>
                        </li>
                        <% 
                         if( valor == 1){
                        %>  
                        <li>
                          <a href="empleados"><i class="fa fa-fw fa-user-md"></i> Empleados
                          </a>
                        </li>
                        <li >
                          <a href="compras"><i class="fa fa-fw fa-book"></i> Compras                              
                          </a>
                        </li>
                         <li>
                          <a href="deudas"><i class="fa fa-fw fa-money"></i> Cuentas por Pagar
                          </a>
                        </li>
                                <%}  %>  

                          <li>
                          <a href="ventas"><i class="fa fa-fw fa-calculator"></i> Ventas                        
                          </a>
                        </li>
                           <% 
                         if( valor == 1){
                        %> 
                        <li>
                          <a href="cobros"><i class="fa fa-fw fa-check"></i> Cuentas por Cobrar
                          </a>
                        </li>
                        <li>
                          <a href="servicios"><i class="fa fa-fw fa-bell"></i> Servicios Básicos</a>
                        </li>
                         <li>
                          <a href="capital"><i class="fa fa-fw fa-bank"></i> Capital</a>
                        </li>
                         <li class="active">
                          <a href="balance"><i class="fa fa-fw fa-pie-chart"></i>  Balance
                           <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="svg-triangle  extended">                    
                                <polygon style="border-color: white;" points="22,20 -5,40 0,0"></polygon>
                                </svg>
                          </a>
                        </li>
                        <%}
                        %> 
                        
                    </ul>
                </div>
            </nav>
            <div id="page-wrapper">
                <div class="container-fluid">
                        <% 
                         if( valor == 1){
                        %>  
                    
                    
                                        <%conexion.ConexionJDBC con = new conexion.ConexionJDBC();
          Connection  cn2 = con.conectar();//se conecto a la base de datos
           String sql3="Select count(id_ventas), Sum(cantidad), cast(SUM(precio) as DECIMAL(18,2)),  cast(SUM(total_pago) as DECIMAL(18,2)) as sumprice from public.ventas";
           int sum = 0;
           Statement st2;               
                try {
                   st2 = cn2.createStatement();
                   ResultSet r=st2.executeQuery(sql3);
                       if(r.next()){
                          
                            //  String sum = r.getString("sumprice");//resultset   
                            %>  
                         
                            
                    <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-money fa-4x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$<%out.println(r.getString(2)!= null ? r.getString(2) : '0');%></div>
                                        <div>Total Cuentas por Cobrar</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>

                 <div class="col-lg-3 col-md-6">
                        <div class="panel panel-warning">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-money fa-5x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$<%out.println(r.getString(2)!= null ? r.getString(2) : '0');%></div>
                                       <div>Total Cuentas por Pagar</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <div class="panel panel-danger">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-money fa-4x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$<%out.println(r.getString(3)!= null ? r.getString(3) : '0');%></div>
                                        <div>Total de Ingresos Membresias</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <div class="panel panel-info">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-money fa-4x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$<%out.println(r.getString(4)!= null ? r.getString(4) : '0') ;%></div>
                                        <div>Total de Dinero 
                                            <br> de Capital</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                </div>
                         <%}} catch (SQLException ex) {//captura error de existir alguno.
                    System.out.println("error: "+ex );
     }%>  
     
      <%}
                        %> 
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header" style="margin-top:0;">
                                <i class="fa pg fa-fw fa-pie-chart"></i> Balances
                            </h1>
                        </div>
                    </div>
                    <div id="page-wrapper">
                        <div class="container-fluid">

                            <div class="row gray-row">
                                <article class="center2" >
                                    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#example2-tab1" aria-controls="example2-tab1" role="tab" data-toggle="tab">Balance de Comprobaci&oacute;n</a></li>
        <li role="presentation"><a href="#example2-tab2" aria-controls="example2-tab2" role="tab" data-toggle="tab">Estado de Resultados</a></li>
        <li role="presentation"><a href="#example2-tab3" aria-controls="example2-tab3" role="tab" data-toggle="tab">Estado de Capital</a></li>
        <li role="presentation"><a href="#example2-tab4" aria-controls="example2-tab4" role="tab" data-toggle="tab">Balance General</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane fade in active" id="example2-tab1">
            <hr>
            <table id="tab1" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>

                     <tr>
                        <td>Ventas</td>
                        <td></td>
                        <td></td>   
                    </tr>
                             
                     <tr>
                        <td>Cuentas por Cobrar</td>
                        <td></td>
                        <td></td>   
                    </tr>                    
                     <tr>
                        <td>Servicios B&aacute;sicos</td>
                        <td></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Compras</td>
                        <td></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Cuentas por Pagar</td>
                        <td></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Capital</td>
                        <td></td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td>IVA Credito Fiscal</td>
                        <td></td>
                        <td></td>   
                    </tr>
                      <tr>
                        <td>IVA Debito Fiscal</td>
                        <td></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Salarios</td>
                        <td></td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td align="right"><strong>TOTAL</strong></td>
                        <td></td>
                        <td></td>   
                    </tr>
                </tbody>
            </table>
             <hr>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="example2-tab2">
            <hr>
            <table id="tab2" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Ventas</td>
                        <td></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Salarios</td>
                        <td></td>
                        <td></td>   
                    </tr>
                     <tr>
                        <td>Servicios B&aacute;sicos</td>
                        <td></td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td align="right"><strong>TOTAL</strong></td>
                        <td></td>
                        <td></td>   
                    </tr>
                </tbody>
            </table>
            <hr>
        </div>
          <div role="tabpanel" class="tab-pane fade" id="example2-tab3">
            <hr>
            <table id="tab3" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Capital</td>
                        <td></td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td align="right"><strong>TOTAL</strong></td>
                        <td></td>
                        <td></td>   
                    </tr>
                </tbody>
            </table>
            <hr>
        </div>
          <div role="tabpanel" class="tab-pane fade" id="example2-tab4">
            <hr>
            <table id="tab4" class="table2 tabler2 table-striped table-bordered table-condensed" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th colspan="2" style="font-size: 10pt"><strong>ACTIVOS</strong></th>
                        <th colspan="2" style="font-size: 10pt"><strong>PASIVOS</strong></th>
                    </tr>
                    <tr>
                        <th>CUENTAS</th>
                        <th>DEBE</th>
                        <th>CUENTAS</th>
                        <th>HABER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Ventas</td>
                        <td></td>
                        <td>Cuentas por Pagar</td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td>Cuentas por Cobrar</td>
                        <td></td>
                        <td>IVA Debito Fiscal</td>
                        <td></td>   
                    </tr>
                      <tr>
                        <td>IVA Credito Fiscal</td>
                        <td></td>
                        <td>Salarios</td>
                        <td></td>   
                    </tr>
                      <tr>
                        <td>Compras</td>
                        <td></td>
                        <td style="background: #28a1f6; color:white"><strong>PATRIMONIO</strong></td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td>Compras</td>
                        <td></td>
                        <td>Capital</td>
                        <td></td>   
                    </tr>
                    <tr>
                        <td align="right"><strong>TOTAL</strong></td>
                        <td></td>
                       <td align="right"><strong>TOTAL</strong></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <hr>
        </div>
        
    </div>
                                </article>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="footer.jsp" />
                </div>
            </div>
        </div>  
    </body>

</html>
