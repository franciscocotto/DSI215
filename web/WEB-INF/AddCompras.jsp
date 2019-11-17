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
                        <li  class="active">
                          <a href="compras"><i class="fa fa-fw fa-book"></i> Compras  
                               <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="svg-triangle  extended">                    
                                <polygon style="border-color: white;" points="22,20 -5,40 0,0"></polygon>
                                </svg>
                          </a>
                        </li>
                         <li>
                          <a href="deudas"><i class="fa fa-fw fa-money"></i> Cuentas por Pagar
                          </a>
                        </li>
                          <li>
                          <a href="ventas"><i class="fa fa-fw fa-calculator"></i> Ventas
                          </a>
                        </li>
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
                         <li>
                          <a href="balance"><i class="fa fa-fw fa-pie-chart"></i>  Balance</a>
                        </li>
                        <%}
                        %> 
                        
                    </ul>
                </div>
            </nav>
            <div id="page-wrapper">
                <div class="container-fluid">
                    <%conexion.ConexionJDBC con = new conexion.ConexionJDBC();
          Connection  cn2 = con.conectar();//se conecto a la base de datos
           String sql3="Select count(id_compras), Sum(cantidad), cast(SUM(precio) as DECIMAL(18,2)), cast(SUM(total_deuda) as DECIMAL(18,2)) as sumprice from public.compras";
           int sum = 0;
           Statement st2;               
                try {
                   st2 = cn2.createStatement();
                   ResultSet r=st2.executeQuery(sql3);
                          if(r.next()){
                               int c = r.getInt(1);
                               sum = sum + c;
                               String str = Double.toString(sum);
                            //  String sum = r.getString("sumprice");//resultset %>   
                    <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-gift fa-4x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge"><%out.println(r.getString(1));%></div>
                                        <div>Total de Compras Realizadas</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>

                 <div class="col-lg-3 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-shopping-cart fa-5x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge"><%out.println(r.getString(2));%></div>
                                        <div>Total de Items Comprados</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-money fa-4x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge">$<%out.println(r.getString(3));%></div>
                                        <div>Total de Dinero Gastado</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                     <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading h145">
                                <div class="row vertical">
                                    <div class="col-xs-4">
                                        <i class="fa fa-clock-o fa-4x"></i>
                                    </div>
                                    <div class="col-xs-8 bleft">
                                        <div class="huge"><%out.println(r.getString(4));%></div>
                                        <div>Total de Dinero 
                                            <br> por Pagar</div>
                                    </div>
                                </div>
                            </div>
                                                  </div>
                    </div>
                </div>
                         <%} } catch (SQLException ex) {//captura error de existir alguno.
                    System.out.println("error: "+ex );
     }%>     
                    <div class="row">
                        <div class="col-lg-9">
                            <h1 class="page-header" style="margin-top:0;">
                                <i class="fa pg fa-fw fa-book"></i> Administraci&oacute;n de Compras
                            </h1>
                        </div>

                        <div class="col-lg-3">
                          <button type="button" id="save-notify" name="regresar" class="col-lg-12 t5 btn-left btn btn-default" data-target="#agregarcompra" data-toggle="modal">
                                <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                Agregar Compra
                            </button>
                        </div>
                        <div class="col-lg-12">                      
                           <fieldset>
                            <p>Formas de Pago: 1 = Contado ; 2 = Cr&eacute;dito</p>
                           </fieldset>
                        </div>
                    </div>
                    <div id="page-wrapper">
                        <div class="container-fluid">

                            <div class="row gray-row">
                                <article class="center2" >
                                     <jsp:include page="tableCompras.jsp" /> 
                                </article>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="footer.jsp" />
                </div>
            </div>
        </div>
<!-- Modals -->
 <jsp:include page="deleteCompra.jsp" />
 <jsp:include page="addCompra.jsp" />
 <jsp:include page="readCompra.jsp" />
    </body>

</html>
