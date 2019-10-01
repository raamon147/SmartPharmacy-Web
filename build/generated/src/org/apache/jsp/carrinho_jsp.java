package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Classes.Conexao;
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

public final class carrinho_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Carrinho</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <form method=\"post\" action=\"removecarrinho.jsp\">\r\n");
      out.write("            <h1 style=\"text-align: center; padding: 2px;\">Carrinho de compras</h1>\r\n");
      out.write("            <div style=\"margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;\">\r\n");
      out.write("                <div id=\"list\" class=\"row\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"table-responsive col-md-12\">\r\n");
      out.write("                        <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th>Codigo</th>\r\n");
      out.write("                                    <th>Produto</th>\r\n");
      out.write("                                    <th>Quantidade</th>\r\n");
      out.write("                                    <th>Preço</th>\r\n");
      out.write("                                    <th>Total</th>\r\n");
      out.write("                                    <th class=\"actions\"></th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                ");

                                    ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
                                    ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");

                                    ArrayList<Produto> lista = new CarrinhoDAO().getCart(cart, cartQtd);

                                    float totalItens = 0;

                                    for (int i = 0; i < lista.size(); i++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(i).getCod_prod() + "</td>");
                                        out.print("<td>" + lista.get(i).getNome_prod() + "</td>");
                                        out.print("<td><input id='" + lista.get(i).getCod_prod() + "' name='qtdProd' type='text' value = " + cartQtd.get(i) + " size = '2'></td>");
                                        out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod()) + "</td>");
                                        out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod() * cartQtd.get(i)) + "</td>");
                                        out.print("<td class='actions'>");
                                        out.print("<button type='submit' class='btn btn-danger btn-md' p-3 name='cod' value='" + lista.get(i).getCod_prod() + "'>Remover</button>");
                                        out.print("&nbsp;&nbsp;&nbsp;");
                                        out.print("</td>");
                                        out.print("</tr>");

                                        totalItens += lista.get(i).getPreco_prod() * cartQtd.get(i);
                                    }
                                
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                        ");

                            String desc = request.getParameter("apply");

                            if (desc != null) {
                                float fdesc = Float.valueOf(desc);
                                totalItens = totalItens - ((totalItens * fdesc) / 100);
                                response.sendRedirect("carrinho.jsp?total=" + totalItens);
                            }

                            String tt = request.getParameter("total");

                            if (tt != null) {
                                float tTotal = Float.parseFloat(tt);

                                totalItens = tTotal;

                                if (totalItens != 0) {
                                    out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$" + String.format("%.2f", totalItens) + "</h1> ");
                                    out.println("<input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;<input type='button' class='btn btn-success ' id='btnFin' value='Finalizar Compra'>");

                                } else {
                                    out.println("<h1 class='display-4 float-right col-md-5'><div>Não há itens no carrinho</h1> <input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                }
                            } else if (totalItens != 0) {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$" + String.format("%.2f", totalItens) + "</h1> ");
                                out.println("<input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                out.println("&nbsp;&nbsp;&nbsp;&nbsp;<input type='button' class='btn btn-success ' id='btnFin' value='Finalizar Compra'>");

                            } else {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Não há itens no carrinho</h1> <input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                            }


                        
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </form>\r\n");
      out.write("        <div style=\"margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px; width: 40%\">\r\n");
      out.write("            <h3>Descontos</h3>\r\n");
      out.write("            <nav>\r\n");
      out.write("                <div class=\"nav nav-tabs\" id=\"nav-tab\" role=\"tablist\">\r\n");
      out.write("                    <a class=\"nav-item nav-link active\" id=\"nav-conv-tab\" data-toggle=\"tab\" href=\"#nav-conv\" role=\"tab\" aria-controls=\"nav-conv\" aria-selected=\"true\">DESCONTO DE CONVÊNIO</a>\r\n");
      out.write("                    <a class=\"nav-item nav-link\" id=\"nav-cpf-tab\" data-toggle=\"tab\" href=\"#nav-cpf\" role=\"tab\" aria-controls=\"nav-cpf\" aria-selected=\"false\">DESCONTO CPF</a>\r\n");
      out.write("                    <a class=\"nav-item nav-link\" id=\"nav-gerente-tab\" data-toggle=\"tab\" href=\"#nav-gerente\" role=\"tab\" aria-controls=\"nav-gerente\" aria-selected=\"false\">DESCONTO DO GERENTE</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </nav>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"tab-content\" id=\"nav-tabContent\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"tab-pane fade show active\" id=\"nav-conv\" role=\"tabpanel\" aria-labelledby=\"nav-conv-tab\" style=\"padding: 10px;\">\r\n");
      out.write("                    <div class=\"form-row\">\r\n");
      out.write("                        <div class=\"form-group col-md-4 \">\r\n");
      out.write("                            <label for=\"numConv\">Numero de identificação</label>\r\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"numConv\">\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group col-md-4 \">\r\n");
      out.write("                            <label for=\"btnConvenio\">&nbsp;&nbsp;&nbsp;</label>\r\n");
      out.write("                            <input type=\"button\" value=\"Aplicar ao Total\" id=\"btnConvenio\" class=\"form-control btn btn-primary float-right\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"tab-pane fade\" id=\"nav-cpf\" role=\"tabpanel\" aria-labelledby=\"nav-cpf-tab\" style=\"padding: 10px;\">\r\n");
      out.write("                    <div class=\"form-row\">\r\n");
      out.write("                        <div class=\"form-group col-md-4 \">\r\n");
      out.write("                            <label for=\"numCPF\">Numero do CPF</label>\r\n");
      out.write("                            <input type=\"text\" onkeypress=\"$(this).mask('000.000.000-00');\" class=\"form-control\" id=\"numCPF\">\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group col-md-4 \">\r\n");
      out.write("                            <label for=\"btnCPF\">&nbsp;&nbsp;&nbsp;</label>\r\n");
      out.write("                            <input type=\"button\" value=\"Aplicar ao Total\" id=\"btnCPF\" class=\"form-control btn btn-primary float-right\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"tab-pane fade\" id=\"nav-gerente\" role=\"tabpanel\" aria-labelledby=\"nav-gerente-tab\" style=\"padding: 10px;\">\r\n");
      out.write("                    <div class=\"form-row\">\r\n");
      out.write("                        <div class=\"form-group col-md-4 \">\r\n");
      out.write("                            <label for=\"numGerente\">Desconto do Gerente</label>\r\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"numGerente\">\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group col-md-4 \">\r\n");
      out.write("                            <label for=\"btnGerente\">&nbsp;&nbsp;&nbsp;</label>\r\n");
      out.write("                            <input type=\"button\" value=\"Aplicar ao Total\" id=\"btnGerente\" class=\"form-control btn btn-primary float-right\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"JS/jquery-3.3.1.slim.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/popper.min.js\" ></script>\r\n");
      out.write("        <script src=\"JS/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/jquery.mask.min.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("\r\n");
      out.write("                                $(\"#btnGerente\").click(function () {\r\n");
      out.write("                                    var desc = $(\"#numGerente\").val();\r\n");
      out.write("\r\n");
      out.write("                                    document.location.href = \"carrinho.jsp?apply=\" + desc;\r\n");
      out.write("\r\n");
      out.write("                                })\r\n");
      out.write("\r\n");
      out.write("                                $(document).on('keypress', ':input:not(text):not([type=submit])', function (e) {\r\n");
      out.write("                                    if (e.which == 13)\r\n");
      out.write("                                        e.preventDefault();\r\n");
      out.write("                                });\r\n");
      out.write("\r\n");
      out.write("                                $(\"#btnVoltar\").click(function () {\r\n");
      out.write("                                    document.location.href = \"index.jsp\";\r\n");
      out.write("                                })\r\n");
      out.write("\r\n");
      out.write("                                jQuery('input[type=\"text\"]').keypress(function (event) {\r\n");
      out.write("                                    var cod = $(this).attr(\"id\");\r\n");
      out.write("                                    var qtd = $(this).val();\r\n");
      out.write("                                    var keycode = (event.keyCode ? event.keyCode : event.which);\r\n");
      out.write("                                    if (keycode == '13') {\r\n");
      out.write("                                        document.location.href = \"carrinho.jsp?change=\" + cod + \"&qtd=\" + qtd;\r\n");
      out.write("                                        ");
                String change = request.getParameter("change");
                                            String qtd = request.getParameter("qtd");
                                            int nQtd = 0;
                                            if (change != null) {
                                                if (cart.contains(change)) {
                                                    int n = cart.indexOf(change);
                                                    if (n != -1) {
                                                        cartQtd.set(n, Integer.parseInt(qtd));
                                                        response.sendRedirect("carrinho.jsp?nchange=ok");
                                                    }
                                                }
                                            }

                                        
      out.write("\r\n");
      out.write("                                    }\r\n");
      out.write("\r\n");
      out.write("                                });\r\n");
      out.write("                                \r\n");
      out.write("                                $(\"#btnFin\").click(function(){\r\n");
      out.write("                                    var cpf = \"\";\r\n");
      out.write("                                    var res = confirm(\"Deseja inserir o cpf na compra?\");\r\n");
      out.write("                                    if(res){\r\n");
      out.write("                                        cpf = prompt(\"Digite o cpf\");\r\n");
      out.write("                                    } else {\r\n");
      out.write("                                        \r\n");
      out.write("                                    }\r\n");
      out.write("                                        \r\n");
      out.write("                                \r\n");
      out.write("                                })\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
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
