package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.String;
import java.util.List;
import java.util.ArrayList;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import Classes.Conexao;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import Classes.Produto;
import DAO.CarrinhoDAO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    public ResultSet buscartexto(String produto) {
        try {
            Connection conn = Conexao.getConexao();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM produto WHERE nome_prod like ?");
            ps.setString(1, "%" + produto + "%");
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }



  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/funcoes.jsp");
  }

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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/bootstrap.min.css\">\r\n");
      out.write("        <title>SmartPharmacy</title>\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\"><strong><font COLOR=\"red\">Smart</strong>Pharmacy</font></a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\"\r\n");
      out.write("                aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\r\n");
      out.write("            <div class=\"navbar-nav\">\r\n");
      out.write("                ");

                    try{
                    String key = (String) session.getAttribute("key");
                    
                
      out.write("\r\n");
      out.write("                ");
if(key.equals("2")){
      out.write("\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle active\"  href=\"#\" id=\"navbarDropdownMenuLink\"\r\n");
      out.write("                       data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                        Administrador\r\n");
      out.write("                    </a>\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"dropdown-menu\"  aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("                        <a class=\"dropdown-item disabled\"  href=\"caditem.jsp\">Adicionar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item \" href=\"edititem.jsp\">Listar/Editar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item disabled\"  href=\"cadconvenio.jsp\">Cadastrar Convênios</a>\r\n");
      out.write("                        <a class=\"dropdown-item disabled\"  href=\"cadfuncionario.jsp\">Cadastrar Usuarios</a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                ");
} else {
      out.write("\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle active\"  href=\"#\" id=\"navbarDropdownMenuLink\"\r\n");
      out.write("                       data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                        Administrador\r\n");
      out.write("                    </a>\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"dropdown-menu\"  aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("                        <a class=\"dropdown-item \"  href=\"caditem.jsp\">Adicionar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item \" href=\"edititem.jsp\">Listar/Editar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item \"  href=\"cadconvenio.jsp\">Cadastrar Convênios</a>\r\n");
      out.write("                        <a class=\"dropdown-item\"  href=\"cadfuncionario.jsp\">Cadastrar Usuarios</a>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                ");
}}catch(Exception f){
                    
                }
      out.write("\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle active\" href=\"#\" id=\"navbarDropdownMenuLink\"\r\n");
      out.write("                       data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                        Serviços\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"cadcliente.jsp\">Cadastrar Cliente</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"formaplicacao.jsp\">Cadastrar Aplicação</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle active\" href=\"#\" id=\"navbarDropdownMenuLink\"\r\n");
      out.write("                       data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                        Relatórios\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"relatorioaplicacao.jsp\">Relatórios Aplicações</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    <a class=\"nav-link active\" href=\"logout.jsp\">Sair</a>\r\n");
      out.write("                </li>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("</head>\r\n");
      out.write("</html>\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script src=\"JS/popper.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            function selector() {\r\n");
      out.write("                $(\".alert\").removeClass('hidden');\r\n");
      out.write("                window.setTimeout(function () {\r\n");
      out.write("                    $(\".alert\").fadeTo(500, 0).slideUp(500, function () {\r\n");
      out.write("                        $(this).remove();\r\n");
      out.write("                    });\r\n");
      out.write("                }, 1000);\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </script>   \r\n");
      out.write("        <script src=\"js/jsbuscar.js\" type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

            try {
                String usuario = (String) session.getAttribute("usuario");
                if (usuario == null) {
                    response.sendRedirect("login.jsp");
                }
            } catch (Exception e) {
                response.sendRedirect("login.jsp");
            }

            ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
            ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");
            if (cart == null && cartQtd == null) {
                cart = new ArrayList<String>();
                cartQtd = new ArrayList<Integer>();
                session.setAttribute("cart", cart);
                session.setAttribute("cartQtd", cartQtd);
            }
        
      out.write("\r\n");
      out.write("        <br/>\r\n");
      out.write("\r\n");
      out.write("        <div style=\"margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;\">\r\n");
      out.write("\r\n");
      out.write("            <form method=\"post\" action=\"buscaritem.jsp\">\r\n");
      out.write("                <div class=\"input-group md-form form-sm form-2 pl-0\">\r\n");
      out.write("                    <input class=\"form-control my-0 py-1 red-border\" id=\"prod\" type=\"text\" placeholder=\"Digite o nome do produto\"\r\n");
      out.write("                           aria-label=\"Search\" onkeyup=\"pesquisar()\" autocomplete=\"off\" name=\"item\">\r\n");
      out.write("                    \r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("            <form method=\"post\" action=\"addtocart.jsp\">\r\n");
      out.write("                <div id=\"list\" class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"table-responsive col-md-12\">\r\n");
      out.write("                        <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th>Codigo</th>\r\n");
      out.write("                                    <th>Produto</th>\r\n");
      out.write("                                    <th>Principio Ativo</th>\r\n");
      out.write("                                    <th>Dosagem</th>\r\n");
      out.write("                                    <th>Fabricante</th>\r\n");
      out.write("                                    <th>Preço</th>\r\n");
      out.write("                                    <th class=\"actions\">Ações</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            \r\n");
      out.write("                            <tbody id=\"listaprodutos\">\r\n");
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("\r\n");
      out.write("                        ");
                            String res = request.getParameter("cart");

                            if (res != null) {
                                if (res.equalsIgnoreCase("ok")) {
                        
      out.write("<div class=\"alert alert-success hidden\" role=\"alert\">\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\r\n");
      out.write("                            Produto Adicionado ao Carrinho\r\n");
      out.write("                        </div> \r\n");
      out.write("                        <script>$(selector).click();</script>");

                        } else if (res.equalsIgnoreCase("fail")) {
                            out.println("<div class='alert alert-danger' role='alert'> Erro ao Adicionar</div>");
                        } else if (res.equalsIgnoreCase("exist")) {
      out.write("\r\n");
      out.write("                        <div class=\"alert alert-danger hidden\" role=\"alert\">\r\n");
      out.write("                            <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\r\n");
      out.write("                            Esse Produto ja esta no carrinho\r\n");
      out.write("                        </div> \r\n");
      out.write("                        <script>$(selector).click();</script>");


                                } else {
                                }
                            }
                        
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("\r\n");
      out.write("            <a class=\"btn btn-primary\" href=\"carrinho.jsp\" role=\"button\">Abrir Carrinho</a>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
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
