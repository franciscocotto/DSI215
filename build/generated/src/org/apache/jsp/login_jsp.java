package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\t\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("       \t<title>Login</title>\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"css/sb-admin.css\" rel=\"stylesheet\">\t\n");
      out.write("       <link href=\"css/login.css\" rel=\"stylesheet\">\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\n");
      out.write("<div class=\"logo2\">\n");
      out.write("\t<img src=\"../../images/logopeque.png\" alt=\"\" height=\"45px\">\n");
      out.write("</div>\n");
      out.write("   <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12 heightlogin\" >\n");
      out.write("            <div class=\"pr-wrap\">\n");
      out.write("                <div class=\"pass-reset\">\n");
      out.write("                    <label>\n");
      out.write("                        Favor Ingresa Tu Correo Electr&oacute;nico  </label>\n");
      out.write("                    <input type=\"email\" placeholder=\"Correo Electrónico\" />\n");
      out.write("                    <input type=\"submit\" value=\"Enviar\" class=\"pass-reset-submit btn btn-success btn-sm\" />\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <form id=\"loginform\" class=\"login\" action=\"authenticate.php\" method=\"post\">\n");
      out.write("                    <label>Usuario:</label>\n");
      out.write("                <input type=\"text\" placeholder=\"Usuario\" name=\"username\" required maxlength=\"60\" minlength=\"3\"/>\n");
      out.write("                 <label>Contraseña:</label>\n");
      out.write("                <input type=\"password\" name=\"password\" placeholder=\"Contraseña\" required maxlength=\"60\" minlength=\"3\"/>\n");
      out.write("                <input type=\"submit\" id=\"ingress\" value=\"Ingresar\" class=\"btn btn-success btn-sm\" />\n");
      out.write("                <div class=\"remember-forgot\">\n");
      out.write("                    <div class=\"row col-lg-12\">\n");
      out.write("                            <a href=\"#\" class=\"forgot-pass\">Olvid&eacute; la Contraseña</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"posted-by\">\n");
      out.write("                <h5 style=\"margin-bottom:0 !important\">© Yummy Refresqueria - 2019</h5>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t <script src=\"js/scripts.js\"></script>\n");
      out.write("   \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write(" $(document).ready(function () {\n");
      out.write("    $('.forgot-pass').click(function(event) {\n");
      out.write("      $(\".pr-wrap\").toggleClass(\"show-pass-reset\");\n");
      out.write("    }); \n");
      out.write("\n");
      out.write(" $('#busqueda-input').click(function () {\n");
      out.write("        $(\"#search-bit\").validate();\n");
      out.write("    });\n");
      out.write("// funcion para ingresar a pagina principal\n");
      out.write(" $('#ingress').click(function () {\n");
      out.write("        $(\"#loginform\").validate();\n");
      out.write("        var form = $(\"#loginform\");\n");
      out.write("        if (!$('#loginform').valid()) {     \n");
      out.write("            BootstrapDialog.danger('Favor Completar los Campos Requeridos');\n");
      out.write("              $(\"#search-bit\").submit();\n");
      out.write("            return\n");
      out.write("        } else {\n");
      out.write("          Redirect();\n");
      out.write("        };\n");
      out.write("    });\n");
      out.write("\n");
      out.write("function Redirect() {\n");
      out.write("    window.location=\"index.html\";\n");
      out.write(" }\n");
      out.write("\n");
      out.write("});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\t</body>\n");
      out.write("</html>");
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
