package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import Classes.Connectta;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import Classes.Connectta;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    private Connection conn;
    Connectta c = new Connectta();
    public ResultSet buscartexto(String produto) {
                        try {
                            conn = c.conectar();
                            PreparedStatement ps = conn.prepareStatement("select * from produto where produto like ?");
                            ps.setString(1, "%" + produto + "%");
                            ResultSet rs;
                            rs = ps.executeQuery();
                            return rs;
                            
                        } catch (Exception e) {
                            return null;
                        }
    }
    
     public String inserir(int codigo, String produto, double preco, String status,int id_categoria) {
        
        try {
            conn = c.conectar();
            String inserir = "INSERT INTO produto (codigo, produto, preco, status,id_categoria) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(inserir);
            conn.prepareStatement(inserir);
            ps.setInt(1, codigo);
            ps.setString(2, produto);
            ps.setDouble(3, preco);
            ps.setString(4, status);
            ps.setInt(5, id_categoria);
            ps.executeUpdate();
            return "true";
        } catch (SQLException e) {
          return "false";
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
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\"\r\n");
      out.write("              integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
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
      out.write("                        <a class=\"dropdown-item disabled\"  href=\"caditem.jsp?status\">Adicionar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item disabled\" href=\"edititem.jsp\">Listar/Editar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item disabled\" href=\"#\">Alterar Status</a>\r\n");
      out.write("                        <a class=\"dropdown-item disabled\"  href=\"cadconvenio.jsp\">Cadastrar Convênios</a>\r\n");
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
      out.write("                        <a class=\"dropdown-item \"  href=\"caditem.jsp?status\">Adicionar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item \" href=\"edititem.jsp\">Listar/Editar Produtos</a>\r\n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Alterar Status</a>\r\n");
      out.write("                        <a class=\"dropdown-item \"  href=\"cadconvenio.jsp\">Cadastrar Convênios</a>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("                ");
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
      out.write("                        <a class=\"dropdown-item disabled\" href=\"#\">Relatórios Gerenciais</a>\r\n");
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
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("    <body>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"JS/jquery-ui.css\" />\r\n");
      out.write("        <script src=\"JS/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/jquery-1.9.1.js\"></script>\r\n");
      out.write("        <script src=\"JS/jquery-ui.js\"></script>\r\n");
      out.write("        ");

            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) {
                response.sendRedirect("login.jsp");
            } else {
            }
        
      out.write("\r\n");
      out.write("        <script language=\"javascript\" type=\"text/javascript\">\r\n");
      out.write("            $(document).ready(function(){\r\n");
      out.write("                $(\"#auto\").autocomplete(\"get.jsp\", {\r\n");
      out.write("\t\t\t\t   width:auto,\r\n");
      out.write("\t\t\t\t   selectFirst: false\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>  \r\n");
      out.write("        <br/>\r\n");
      out.write("\r\n");
      out.write("        <form method=\"post\" action=\"buscaritem.jsp\">\r\n");
      out.write("            <div class=\"input-group md-form form-sm form-2 pl-0\">\r\n");
      out.write("                <input id=\"auto\" name=\"auto\"  class=\"form-control\" type=\"text\" placeholder=\"Digite o nome do produto\"\r\n");
      out.write("                       aria-label=\"Search\" name=\"item\">\r\n");
      out.write("                <div id=\"country\"></div>\r\n");
      out.write("                <div class=\"input-group-append\">\r\n");
      out.write("                    <input type=\"submit\" class=\"btn btn-primary\" id=\"btnBuscarProd\" value=\"Buscar\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br><br>\r\n");
      out.write("        </form>\r\n");
      out.write("        <div id=\"list\" class=\"row\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"table-responsive col-md-12\">\r\n");
      out.write("                <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                    <thead>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>Codigo</th>\r\n");
      out.write("                            <th>Produto</th>\r\n");
      out.write("                            <th>Categoria</th>\r\n");
      out.write("                            <th>Status</th>\r\n");
      out.write("                            <th>Preço</th>\r\n");
      out.write("                            <th class=\"actions\">Ações</th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("                        ");

                            /*  String produto = request.getParameter("resp");
                             ResultSet rs = buscartexto(produto);
                             if(rs.wasNull()){
                             out.println("nulo");
                             } else {
                             while (rs.next()) {
                             out.print("<tr>");
                             out.print("<td>"+rs.getString("codigo")+"</td>");
                             out.print("<td>"+rs.getString("produto")+"</td>");
                             out.print("<td>"+rs.getString("preco")+"</td>");
                             out.print("<td>"+rs.getString("status")+"</td>");
                             out.print("<td>"+rs.getString("id_categoria")+"</td>");
                             out.print("<td class='actions'>");
                             out.print("<a class='btn btn-success btn-xs disabled' p-3 href='view.jsp'>Adicionar no Carrinho</a> ");
                             out.print("<a class='btn btn-warning btn-xs disabled' href='edit.jsp'>Editar</a> ");
                             out.print("<a class='btn btn-danger btn-xs disabled'  href='#' data-toggle='modal' data-target='delete-modal'>Excluir</a> ");
                             out.print("</td>");
                             out.print("</tr>");
                             }
                             } */
                        
      out.write("\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\".carrinho\">Abrir Carrinho</button>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"modal fade carrinho\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myLargeModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("            <div class=\"modal-dialog modal-lg\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("                    <h1 style=\"text-align: center; padding: 2px;\">Carrinho de compras</h1>\r\n");
      out.write("                    <div id=\"list\" class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"table-responsive col-md-12\">\r\n");
      out.write("                            <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th>Codigo</th>\r\n");
      out.write("                                        <th>Produto</th>\r\n");
      out.write("                                        <th>Categoria</th>\r\n");
      out.write("                                        <th>Quantidade</th>\r\n");
      out.write("                                        <th>Preço</th>\r\n");
      out.write("                                        <th class=\"actions\"></th>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td>1001</td>\r\n");
      out.write("                                        <td>Dipirona Gotas</td>\r\n");
      out.write("                                        <td>Medicamento</td>\r\n");
      out.write("                                        <td><input type=\"text\" class=\"md-form\" size=\"1\" name=\"qtd\" value=\"1\"></td>\r\n");
      out.write("                                        <td>R$ 5,99</td>\r\n");
      out.write("                                        <td class=\"actions\">\r\n");
      out.write("                                            <a class=\"btn btn-danger btn-xs disabled\"  href=\"#\" data-toggle=\"modal\" data-target=\"#delete-modal\">X</a>\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("                            </table>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <h1 class=\"display-4 float-right col-md-5\"><div>Total: R$: 5,99 </div></h1><br/>\r\n");
      out.write("                            <div class=\"p-1 float-right\"> <a class=\"btn btn-success disabled m-1\" href=\"carrinho.jsp\">Finalizar Compra</a>\r\n");
      out.write("                                <a class=\"btn btn-warning float-right m-1\" href=\"index.jsp\">Voltar</a></div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"float-right col-md m-1\" style=\"width: 300px; height: 200px;\">\r\n");
      out.write("                                <h3 style=\"text-align: center\">Desconto Convenio</h3><br>\r\n");
      out.write("                                <label for=\"numConv\">Numero</label>\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" id=\"numConv\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\"\r\n");
      out.write("                integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"\r\n");
      out.write("                integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("            jQuery(function () {\r\n");
      out.write("                $(\"#auto\").autocomplete(\"List.jsp\");\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
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
