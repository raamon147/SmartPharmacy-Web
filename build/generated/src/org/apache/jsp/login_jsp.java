package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.UsuarioDAO;
import Classes.Usuario;

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<link href=\"CSS/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\r\n");
      out.write("<link href=\"CSS/login.css\" rel=\"stylesheet\">\r\n");
      out.write("<script src=\"JS/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"JS/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"wrapper fadeInDown\">\r\n");
      out.write("    <div id=\"formContent\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"fadeIn first\" style=\"font-size: 40px; margin: 5px;\"><br/>\r\n");
      out.write("            <strong><font COLOR=\"red\">Smart</strong>Pharmacy<br/>\r\n");
      out.write("        </div><br/>\r\n");
      out.write("\r\n");
      out.write("        <form method=\"post\" action=\"login.jsp\">\r\n");
      out.write("            <input type=\"text\" id=\"login\" class=\"fadeIn second\" name=\"login\" placeholder=\"Usuario\">\r\n");
      out.write("            <input type=\"password\" id=\"password\" class=\"fadeIn third\" name=\"senha\" placeholder=\"Senha\">\r\n");
      out.write("            <input type=\"submit\" class=\"fadeIn fourth\" value=\"Acessar\" name=\"btnlogin\">\r\n");
      out.write("\r\n");
      out.write("        </form>                    \r\n");
      out.write("\r\n");
      out.write("        ");

            String usuario = request.getParameter("login");
            String senha = request.getParameter("senha");
            if (usuario != null && senha != null && !usuario.isEmpty() && !senha.isEmpty()) {
                Usuario user = new Usuario();
                user.setUsuario(usuario);
                user.setSenha(senha);

                String resp = new UsuarioDAO().logar(user);
                String key ="";
                if (resp.equalsIgnoreCase("conectado")) {
                    
                    key = new UsuarioDAO().getKey(user);
                    session.setAttribute("usuario", usuario);
                    session.setAttribute("senha", senha);
                    session.setAttribute("key", key);
                    response.sendRedirect("index.jsp");
                } else if(resp.equalsIgnoreCase("nconectado")){
                    out.println("Usuario não encontrado!");
                } else {
                    out.println(resp);
                }

            } else if ((String) session.getAttribute("usuario") != null) {
                response.sendRedirect("index.jsp");

            }


        
      out.write("\r\n");
      out.write("        <div id=\"formFooter\">\r\n");
      out.write("            <a class=\"underlineHover\" href=\"newSenha.jsp\">Esqueci a senha</a>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
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
