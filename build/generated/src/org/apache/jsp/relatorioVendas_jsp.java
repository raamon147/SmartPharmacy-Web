package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.CompraDAO;
import Classes.Compra;
import DAO.RankingDAO;
import Classes.RankingVenda;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.util.ArrayList;
import DAO.AplicacaoDAO;

public final class relatorioVendas_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("﻿<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/bootstrap.min.css\">\r\n");
      out.write("        <title>SmartPharmacy</title>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div style=\"margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;\">\r\n");
      out.write("            <h2 style=\"color: red\"><b>Consultar </b>Vendas</h2><br/>\r\n");
      out.write("            <nav>\r\n");
      out.write("                <div class=\"nav nav-tabs\" id=\"nav-tab\" role=\"tablist\">\r\n");
      out.write("                    <a class=\"nav-item nav-link active\" id=\"nav-prod-tab\" data-toggle=\"tab\" href=\"#nav-prod\" role=\"tab\" aria-controls=\"nav-prod\" aria-selected=\"true\">RANKING PRODUTOS MAIS VENDIDOS</a>\r\n");
      out.write("                    <a class=\"nav-item nav-link\" id=\"nav-cup-tab\" data-toggle=\"tab\" href=\"#nav-cup\" role=\"tab\" aria-controls=\"nav-cup\" aria-selected=\"false\">CUPOM DE COMPRAS FINALIZADAS</a></div>\r\n");
      out.write("            </nav>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"tab-content\" id=\"nav-tabContent\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"tab-pane fade show active\" id=\"nav-prod\" role=\"tabpanel\" aria-labelledby=\"nav-prod-tab\" style=\"padding: 10px;\">\r\n");
      out.write("                    <div class=\"form-row\">\r\n");
      out.write("                        <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th>Posição</th>\r\n");
      out.write("                                    <th>Nome</th>\r\n");
      out.write("                                    <th>Preço</th>\r\n");
      out.write("                                    <th>Quantidade</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                ");

                                    ArrayList<RankingVenda> lista = new RankingDAO().getRanking();
                                    int index = 1;
                                    for (RankingVenda r : lista) {
                                        out.println("<tr>");
                                        out.println("<td>" + (index++) + "°</td>");
                                        out.println("<td>" + r.getNome() + "</td>");
                                        out.println("<td>" + r.getPreco() + "</td>");
                                        out.println("<td>" + r.getQtd() + "</td>");
                                        out.println("</tr>");
                                    }

                                
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"tab-pane fade\" id=\"nav-cup\" role=\"tabpanel\" aria-labelledby=\"nav-cup-tab\" style=\"padding: 10px;\">\r\n");
      out.write("                    <div class=\"form-row\">\r\n");
      out.write("                        <table class=\"table table-striped\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <th>Data</th>\r\n");
      out.write("                                    <th>Total</th>\r\n");
      out.write("                                    <th>Código</th>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                ");
                               ArrayList<Compra> lis = new CompraDAO().getList();
                                    for (Compra c : lis) {
                                        out.println("<tr>");
                                        out.println("<td>" + c.getDataCompra() + "</td>");
                                        out.println("<td>" + c.getTotal() + "</td>");
                                        out.println("<td><a target='_blank' href='geracupom.jsp?cod_compra=" + c.getCodigo() + "'>" + c.getCodigo() + "</a></td>");
                                        out.println("</tr>");
                                    }

                                
      out.write("\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                        </table>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script src=\"JS/jquery-3.3.1.slim.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/popper.min.js\" ></script>\r\n");
      out.write("        <script src=\"JS/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"JS/jquery.mask.min.js\"></script>\r\n");
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
