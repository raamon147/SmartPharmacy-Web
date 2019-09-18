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
      out.write("<!DOCTYPE html>\n");
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<link href=\"login.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"wrapper fadeInDown\">\n");
      out.write("    <div id=\"formContent\">\n");
      out.write("\n");
      out.write("        <div class=\"fadeIn first\" style=\"font-size: 40px; margin: 5px;\"><br/>\n");
      out.write("            <strong><font COLOR=\"red\">Smart</strong>Pharmacy<br/>\n");
      out.write("        </div><br/>\n");
      out.write("\n");
      out.write("        <form method=\"post\" action=\"login.jsp\">\n");
      out.write("            <input type=\"text\" id=\"login\" class=\"fadeIn second\" name=\"login\" placeholder=\"Usuario\">\n");
      out.write("            <input type=\"password\" id=\"password\" class=\"fadeIn third\" name=\"senha\" placeholder=\"Senha\">\n");
      out.write("            <input type=\"submit\" class=\"fadeIn fourth\" value=\"Acessar\" name=\"btnlogin\">\n");
      out.write("            \n");
      out.write("        </form>\n");

String usuario = request.getParameter("login");
String senha = request.getParameter("senha");
if(usuario != null && senha!= null && !usuario.isEmpty() && !senha.isEmpty()){
    session.setAttribute("usuario", usuario);
    session.setAttribute("senha", senha);
    response.sendRedirect("index.jsp");
}else if((String)session.getAttribute("usuario") != null){
    response.sendRedirect("index.jsp");
    
}



      out.write("\n");
      out.write("        <div id=\"formFooter\">\n");
      out.write("            <a class=\"underlineHover\" href=\"\">Esqueci a senha</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
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
