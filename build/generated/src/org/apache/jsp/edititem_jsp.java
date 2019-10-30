package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import DAO.ProdutoDAO;
import Classes.Produto;
import Classes.Conexao;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public final class edititem_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/menu.jsp");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/bootstrap.min.css\">\r\n");
      out.write("        <title>SmartPharmacy</title>\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("        <a class=\"navbar-brand\" href=\"index.jsp\" title=\"Ir para a página inicial\"><strong><font COLOR=\"red\">Smart</strong>Pharmacy</font></a>\r\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\"\r\n");
      out.write("                aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("        </button>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\r\n");
      out.write("            <div class=\"navbar-nav\">\r\n");
      out.write("                ");

                    int cont = 0;
                    try{
                        ArrayList<String> cart2 = (ArrayList) session.getAttribute("cart");
                        cont = cart2.size();
                    }catch(Exception a){
                        
                    }
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
      out.write("                        \r\n");
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
      out.write("                <a class=\"nav-link active\" href=\"index.jsp\" style=\"color: black\">Inicio</a>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                    \r\n");
      out.write("                    <a class=\"nav-link dropdown-toggle active\"  href=\"#\" id=\"navbarDropdownMenuLink\"\r\n");
      out.write("                       data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                        \r\n");
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
      out.write("                        <a class=\"dropdown-item\" href=\"relatorioVendas.jsp\">Relatórios Vendas</a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </li>\r\n");
      out.write("               \r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("                \r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("                \r\n");
      out.write("        <form action=\"carrinho.jsp\" method=\"post\"> \r\n");
      out.write("            \r\n");
      out.write("            <input type=image src=\"shopping-cart.png\" width=\"30\" height=\"=30\" title=\"Abrir Carrinho\" style=\"float: left; margin-top: 10px;\">\r\n");
      out.write("            <a class=\"nav-link active\" href=\"carrinho.jsp\" style=\"color: red; float: left\">");
      out.print(cont);
      out.write("</a>\r\n");
      out.write("            </form>\r\n");
      out.write("                <a class=\"nav-link active\" href=\"logout.jsp\" style=\"color: black\">Sair</a>\r\n");
      out.write("    </nav>\r\n");
      out.write("</head>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("﻿<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <title>SmartPharmacy</title>\r\n");
      out.write("\r\n");
      out.write("        <style>\r\n");
      out.write("            table{\r\n");
      out.write("                border-collapse: collapse;\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                border: 1px solid #666;\r\n");
      out.write("            }\r\n");
      out.write("            thead{\r\n");
      out.write("                background: #ccc url(IMG/bar.gif) repeat-x left center;\r\n");
      out.write("                border-top: 1px solid #a5a5a5;\r\n");
      out.write("                border-bottom: 1px solid #a5a5a5;\r\n");
      out.write("            }\r\n");
      out.write("            tr:hover {\r\n");
      out.write("                color: #00f;\r\n");
      out.write("            }\r\n");
      out.write("            thead tr:hover {\r\n");
      out.write("                background-color: transparent;\r\n");
      out.write("                color: inherit;\r\n");
      out.write("            }\r\n");
      out.write("            tr:nth-child(even) {\r\n");
      out.write("                background-color: #fff;\r\n");
      out.write("            }\r\n");
      out.write("            th {\r\n");
      out.write("                font-weight: normal;\r\n");
      out.write("                text-align: left;\r\n");
      out.write("            }\r\n");
      out.write("            th, td {\r\n");
      out.write("                padding: 0.1em 1em;\r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body><br/>\r\n");
      out.write("        <div style=\"margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;\">    \r\n");
      out.write("            <h2 style=\"color: red;padding: 10px;\"><b>Lista </b>de Produtos</h2>\r\n");
      out.write("            <div class=\"table-responsive col-md-12\">\r\n");
      out.write("                <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                    <thead>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>Código</th>\r\n");
      out.write("                            <th>Nome</th>\r\n");
      out.write("                            <th>Preço</th>\r\n");
      out.write("                            <th>Fabricante</th>\r\n");
      out.write("                            <th>Principio Ativo</th>\r\n");
      out.write("                            <th>Dosagem</th>\r\n");
      out.write("                            <th>Quantidade</th>\r\n");
      out.write("                            <th>Categoria</th>\r\n");
      out.write("                            <th>Status</th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </thead>\r\n");
      out.write("                    <tbody>\r\n");
      out.write("\r\n");
      out.write("                        ");

                            try {
                                ArrayList<Produto> lista = new ProdutoDAO().getProdutos();
                                for(Produto p : lista){
                                    out.println("<tr>");
                                    out.println("<td><a href='edititem.jsp?cod=" + p.getCod_prod() + "'>" + p.getCod_prod()+ "</a></td>");
                                    out.println("<td>" + p.getNome_prod() + "</td>");
                                    out.println("<td>" + p.getPreco_prod() + "</td>");
                                    out.println("<td>" + p.getFabr_prod() + "</td>");
                                    out.println("<td>" + p.getPr_ativo() + "</td>");
                                    out.println("<td>" + p.getDos_prod() + "</td>");
                                    out.println("<td>" + p.getQtd_prod() + "</td>");
                                    out.println("<td>" + p.getCategoria() + "</td>");
                                    if(p.getQtd_prod() == 0){
                                        out.println("<td>INDISPONIVEL</td>");
                                        
                                    } else{
                                       out.println("<td>DISPONIVEL</td>"); 
                                    }
                                    out.println("</tr>");
                                }
                            } catch (Exception e) {
                                out.print(e.toString());
                            }

                        
      out.write("\r\n");
      out.write("                    <input type='hidden' id='altValue' name='altValue'>\r\n");
      out.write("                    </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div style=\"margin: 40px;padding: 20px; background-color: #f8f9fa;border-radius: 10px;\">\r\n");
      out.write("            <h2 style=\"color: red;\"><b>Editar </b>  Produtos</h2>\r\n");
      out.write("            ");
 String key = (String) session.getAttribute("key");
                Produto prod = new Produto();
                String cod = (String) request.getParameter("cod");
                if (cod != null) {
                    prod = new ProdutoDAO().consultaProd(cod);
                } else {
                    prod.setCod_prod("");
                    prod.setNome_prod("");
                    prod.setQtd_prod(0);
                    prod.setPreco_prod(0);
                    prod.setDos_prod("");
                    prod.setFabr_prod("");
                    prod.setPr_ativo("");
                    prod.setCategoria("");
                }

                String res = (String) request.getParameter("res");
                if (res != null) {
                    if (res.equals("okalt")) {
                        out.println("<div class='alert alert-success' role='alert'>Produto Alterado com Sucesso</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>" + res + "</div>");
                    }
                }

            
      out.write("\r\n");
      out.write("            ");
if (key.equals("1")) {
      out.write("\r\n");
      out.write("            <h5>Clique no codigo do Produto acima para começar a alterar</h5>\r\n");
      out.write("            <form method=\"POST\" action=\"altGen.jsp\">\r\n");
      out.write("                <div class=\"form-row\">\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadCod\">Codigo</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" required=\"\" id=\"inputCod\" name=\"cadCod\" readonly value=\"");
      out.print(prod.getCod_prod());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-5\">\r\n");
      out.write("                        <label for=\"cadNome\">Produto</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" required=\"\" id=\"inputNomeProd\" name=\"cadNome\" value=\"");
      out.print(prod.getNome_prod());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadQtd\">Quantidade</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" required=\"\" id=\"inputPreco\"  name=\"cadQtd\" value=\"");
      out.print(prod.getQtd_prod());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadPreco\">Preço</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" required=\"\" id=\"inputPreco\" onkeypress=\"$(this).mask('000000000000000.00', {reverse: true});\" name=\"cadPreco\" value=\"");
      out.print(prod.getPreco_prod());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-row\">\r\n");
      out.write("                    <div class=\"form-group col-md-3\">\r\n");
      out.write("                        <label for=\"cadFab\">Fabricante</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" required=\"\" id=\"inputPreco\" name=\"cadFab\" value=\"");
      out.print(prod.getFabr_prod());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label for=\"cadPrin\">Principio Ativo</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" required=\"\" id=\"inputPreco\" name=\"cadPrin\" value=\"");
      out.print(prod.getPr_ativo());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadDos\">Dosagem</label>\r\n");
      out.write("                        <input type=\"search\" class=\"form-control\" required=\"\" id=\"inputDosagem\" name=\"cadDos\" value=\"");
      out.print(prod.getDos_prod());
      out.write("\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadCat\">Categoria</label>\r\n");
      out.write("                        <select class=\"form-control\" id=\"inputCat\" name=\"cadCat\">\r\n");
      out.write("                            <option value=\"Medicamento\">Medicamento</option>\r\n");
      out.write("                            <option value=\"Outros\">Outros</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <input type=\"hidden\" name=\"func\" value=\"\" id=\"func\">\r\n");
      out.write("\r\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" id=\"alt\" name=\"func\" value=\"alterar\">Alterar</button>\r\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" id=\"exc\" name=\"func\" value=\"excluir\" >Excluir</button>\r\n");
      out.write("            </form>\r\n");
      out.write("            ");
} else {
      out.write("\r\n");
      out.write("            <form method=\"POST\" action=\"altFun.jsp\">\r\n");
      out.write("                <div class=\"form-row\">\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadCod\">Codigo</label>\r\n");
      out.write("                        <input type=\"text\" value=\"");
      out.print(prod.getCod_prod());
      out.write("\" class=\"form-control\" id=\"inputCod\" name=\"cadCod\" readonly>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"cadQtd\">Quantidade</label>\r\n");
      out.write("                        <input type=\"text\" value=\"");
      out.print(prod.getQtd_prod());
      out.write("\" class=\"form-control\" id=\"inputPreco\"  name=\"cadQtd\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <input type=\"hidden\" name=\"func2\" value=\"\" id=\"func2\">\r\n");
      out.write("                <button type=\"submit\" id='alt2' class=\"btn btn-primary\" name=\"alt2\" id=\"btnAlt\">Alterar</button>\r\n");
      out.write("            </form>\r\n");
      out.write("            ");
}
      out.write("\r\n");
      out.write("            ");

                String rest = (String) request.getParameter("rest");
                if (rest != null) {
                    if (rest.equals("ok")) {
                        out.println("<div class='alert alert-success' role='alert'>Produto Deletado com Sucesso</div>");

                    } else if (rest.equals("okalt")) {
                        out.println("<div class='alert alert-success' role='alert'>Produto Alterado com Sucesso</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>" + rest + "</div>");
                    }
                }

            
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"JS/jquery-3.3.1.slim.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/popper.min.js\" ></script>\r\n");
      out.write("        <script src=\"JS/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/jquery.mask.min.js\"></script>\r\n");
      out.write("        <script>\r\n");
      out.write("            jQuery(function () {\r\n");
      out.write("                $(\"#alt\").click(function () {\r\n");
      out.write("                    $('#func').val(\"alterar\");\r\n");
      out.write("                })\r\n");
      out.write("\r\n");
      out.write("                $(\"#exc\").click(function () {\r\n");
      out.write("                    $(\"#func\").val(\"excluir\");\r\n");
      out.write("                })\r\n");
      out.write("\r\n");
      out.write("                $(\"#alt2\").click(function () {\r\n");
      out.write("                    $('#func2').val(\"alterar\");\r\n");
      out.write("                })\r\n");
      out.write("            })\r\n");
      out.write("        </script>\r\n");
      out.write("    </body>\r\n");
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
