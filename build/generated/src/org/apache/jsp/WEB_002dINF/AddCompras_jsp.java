package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class AddCompras_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div id=\"wrapper\">\r\n");
      out.write("            <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\r\n");
      out.write("                <div class=\"navbar-header\">\r\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-ex1-collapse\">\r\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                        <span class=\"icon-bar\"></span>\r\n");
      out.write("                    </button>\r\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("                        <img src=\"images/logo.png\">\r\n");
      out.write("                    </a>\r\n");
      out.write("                </div>\r\n");
      out.write("          <ul class=\"nav navbar-right top-nav\">\r\n");
      out.write("                <li class=\"dropdown\">\r\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-user\"></i>&nbsp;Bienvenido(a):\r\n");
      out.write("                          ");
 
                        Integer valor = (Integer)getServletContext().getAttribute("admin");
                         if( valor == 1){
                        
      out.write(" \r\n");
      out.write("                        Administrador\r\n");
      out.write("                       ");
} else{
                        
      out.write(" \r\n");
      out.write("                        Empleado\r\n");
      out.write("                       ");
} 
      out.write("\r\n");
      out.write("                        <b class=\"caret\"></b></a>\r\n");
      out.write("                    <ul class=\"dropdown-menu\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"");
      out.print(request.getContextPath());
      out.write("/LogoutServlet\"><i class=\"fa fa-fw fa-power-off\"></i>Cerrar Sesi&oacute;n</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("             \r\n");
      out.write("                <div class=\"collapse navbar-collapse navbar-ex1-collapse\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav side-nav\">\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"LoginServlet\">\r\n");
      out.write("                                <i class=\"fa fa-fw fa-pie-chart\"></i> Clientes                                                   \r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li> \r\n");
      out.write("                         <li>\r\n");
      out.write("                        <a href=\"membresias.jsp\"><i class=\"fa fa-fw fa-cog\"></i> Membresias\r\n");
      out.write("                        </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        ");
 
                         if( valor == 1){
                        
      out.write("  \r\n");
      out.write("                        <li>\r\n");
      out.write("                          <a href=\"empleados\"><i class=\"fa fa-fw fa-user-md\"></i> Empleados\r\n");
      out.write("                          </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li  class=\"active\">\r\n");
      out.write("                          <a href=\"compras\"><i class=\"fa fa-fw fa-book\"></i> Compras  \r\n");
      out.write("                               <svg xmlns=\"http://www.w3.org/2000/svg\" version=\"1.1\" class=\"svg-triangle  extended\">                    \r\n");
      out.write("                                <polygon style=\"border-color: white;\" points=\"22,20 -5,40 0,0\"></polygon>\r\n");
      out.write("                                </svg>\r\n");
      out.write("                          </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                         <li>\r\n");
      out.write("                          <a href=\"deudas\"><i class=\"fa fa-fw fa-money\"></i> Cuentas por Pagar\r\n");
      out.write("                          </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                          <li>\r\n");
      out.write("                          <a href=\"ventas\"><i class=\"fa fa-fw fa-calculator\"></i> Ventas\r\n");
      out.write("                          </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                          <a href=\"cobros\"><i class=\"fa fa-fw fa-check\"></i> Cuentas por Cobrar\r\n");
      out.write("                          </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                          <a href=\"servicios\"><i class=\"fa fa-fw fa-bell\"></i> Servicios Básicos</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                         <li>\r\n");
      out.write("                          <a href=\"capital\"><i class=\"fa fa-fw fa-bank\"></i> Capital</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                         <li>\r\n");
      out.write("                          <a href=\"balance\"><i class=\"fa fa-fw fa-pie-chart\"></i>  Balance</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        ");
}
                        
      out.write(" \r\n");
      out.write("                        \r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("            <div id=\"page-wrapper\">\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("                    ");
conexion.ConexionJDBC con = new conexion.ConexionJDBC();
          Connection  cn2 = con.conectar();//se conecto a la base de datos
            String sql2="SELECT SUM(cantidad) AS TOTAL FROM public.compras;";     
            Statement st2;//preparando envio de consulta select
            
                try {
                   st2 = cn2.createStatement();
                   ResultSet r=st2.executeQuery(sql2);//resultset 
      out.write("   \r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                        <div class=\"panel panel-yellow\">\r\n");
      out.write("                            <div class=\"panel-heading h145\">\r\n");
      out.write("                                <div class=\"row vertical\">\r\n");
      out.write("                                    <div class=\"col-xs-5\">\r\n");
      out.write("                                        <i class=\"fa fa-users fa-4x\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-xs-7 bleft\">\r\n");
      out.write("                                        <div class=\"huge\">");
out.println(r.getString("Total"));
      out.write("</div>\r\n");
      out.write("                                        <div>Total de Usuarios</div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                                  </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write(" <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                        <div class=\"panel panel-red\">\r\n");
      out.write("                            <div class=\"panel-heading h145\">\r\n");
      out.write("                                <div class=\"row vertical\">\r\n");
      out.write("                                    <div class=\"col-xs-5\">\r\n");
      out.write("                                        <i class=\"fa fa-mobile fa-5x\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-xs-7 bleft\">\r\n");
      out.write("                                        <div class=\"huge\">1205</div>\r\n");
      out.write("                                        <div>Total de Sesiones</div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                                  </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                     <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                        <div class=\"panel panel-green\">\r\n");
      out.write("                            <div class=\"panel-heading h145\">\r\n");
      out.write("                                <div class=\"row vertical\">\r\n");
      out.write("                                    <div class=\"col-xs-5\">\r\n");
      out.write("                                        <i class=\"fa fa-home fa-4x\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-xs-7 bleft\">\r\n");
      out.write("                                        <div class=\"huge\">1501</div>\r\n");
      out.write("                                        <div>Total de Visitas</div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                                  </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                     <div class=\"col-lg-3 col-md-6\">\r\n");
      out.write("                        <div class=\"panel panel-primary\">\r\n");
      out.write("                            <div class=\"panel-heading h145\">\r\n");
      out.write("                                <div class=\"row vertical\">\r\n");
      out.write("                                    <div class=\"col-xs-5\">\r\n");
      out.write("                                        <i class=\"fa fa-clock-o fa-4x\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"col-xs-7 bleft\">\r\n");
      out.write("                                        <div class=\"huge\">1021</div>\r\n");
      out.write("                                        <div>Minutos de Sesión</div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                                                  </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                         ");
 } catch (SQLException ex) {//captura error de existir alguno.
                    System.out.println("error: "+ex );
     }
      out.write("     \r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-lg-9\">\r\n");
      out.write("                            <h1 class=\"page-header\" style=\"margin-top:0;\">\r\n");
      out.write("                                <i class=\"fa pg fa-fw fa-book\"></i> Administraci&oacute;n de Compras\r\n");
      out.write("                            </h1>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"col-lg-3\">\r\n");
      out.write("                          <button type=\"button\" id=\"save-notify\" name=\"regresar\" class=\"col-lg-12 t5 btn-left btn btn-default\" data-target=\"#agregarcompra\" data-toggle=\"modal\">\r\n");
      out.write("                                <span class=\"glyphicon glyphicon-plus-sign\" aria-hidden=\"true\"></span>\r\n");
      out.write("                                Agregar Compra\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div id=\"page-wrapper\">\r\n");
      out.write("                        <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"row gray-row\">\r\n");
      out.write("                                <article class=\"center2\" >\r\n");
      out.write("                                     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "tableCompras.jsp", out, false);
      out.write(" \r\n");
      out.write("                                </article>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("<!-- Modals -->\r\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "deleteCompra.jsp", out, false);
      out.write("\r\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "addCompra.jsp", out, false);
      out.write("\r\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "readCompra.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
