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
                        <li class="active">
                          <a href="servicios"><i class="fa fa-fw fa-bell"></i> Servicios Básicos
                          <svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="svg-triangle  extended">                    
                                <polygon style="border-color: white;" points="22,20 -5,40 0,0"></polygon>
                                </svg>
                          </a>
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
                    <div class="row">
                        <div class="col-lg-9">
                            <h1 class="page-header" style="margin-top:0;">
                                <i class="fa pg fa-fw fa-bell"></i> Administraci&oacute;n de Servicios
                            </h1>
                        </div>

                        <div class="col-lg-3">
                          <button type="button" id="save-notify" name="regresar" class="col-lg-12 t5 btn-left btn btn-default" data-target="#agregarventa" data-toggle="modal">
                                <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
                                Agregar Venta
                            </button>
                        </div>
                    </div>
                    <div id="page-wrapper">
                        <div class="container-fluid">

                            <div class="row gray-row">
                                <article class="center2" >
                                     <jsp:include page="tableServicios.jsp" /> 
                                </article>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="footer.jsp" />
                </div>
            </div>
        </div>
<!-- Modals -->
 <jsp:include page="deleteServicio.jsp" />
 <jsp:include page="addServicio.jsp" />
 <jsp:include page="readServicio.jsp" />
    </body>

</html>
