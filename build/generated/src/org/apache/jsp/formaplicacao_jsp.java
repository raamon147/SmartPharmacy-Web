package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class formaplicacao_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');
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
      out.write("﻿<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/bootstrap.min.css\">\r\n");
      out.write("        <title>SmartPharmacy</title>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("            $(document).ready(function () {\r\n");
      out.write("                $(\"#data\").datepicker({dateFormat: 'dd/mm/yy'});\r\n");
      out.write("                //esconde o retorno da pesquisa do paciente\r\n");
      out.write("                $(\"#form1\").click(function () {\r\n");
      out.write("                    $(\"#resultado\").hide();\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("                $(\"#nm_paciente\").keyup(function () {\r\n");
      out.write("                    paciente = $(\"#nm_paciente\").val();\r\n");
      out.write("                    $.ajax({\r\n");
      out.write("                        url: \"ajax/paciente.jsp\",\r\n");
      out.write("                        type: \"post\",\r\n");
      out.write("                        data: {\r\n");
      out.write("                            \"nm_paciente\": paciente,\r\n");
      out.write("                        },\r\n");
      out.write("                        success: function (data) {\r\n");
      out.write("                            $(\"#resultado\").html(data);\r\n");
      out.write("                            $(\"#resultado\").show();\r\n");
      out.write("                        }\r\n");
      out.write("                    })\r\n");
      out.write("                });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                $(\"#btnGravar\").click(function () {\r\n");
      out.write("                    $.ajax({\r\n");
      out.write("                        url: \"ajax/gravaragendamento.jsp\",\r\n");
      out.write("                        type: \"post\",\r\n");
      out.write("                        data: $(\"#form1\").serialize(),\r\n");
      out.write("                        success: function (data) {\r\n");
      out.write("                            if (data.sucesso) {\r\n");
      out.write("                                alert(data.mensagem);\r\n");
      out.write("                                $('#form1').each(function () {\r\n");
      out.write("                                    this.reset();\r\n");
      out.write("                                });\r\n");
      out.write("                            }\r\n");
      out.write("                            else {\r\n");
      out.write("                                alert(data.mensagem);\r\n");
      out.write("                            }\r\n");
      out.write("                        }\r\n");
      out.write("                    })\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div style=\"margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;\">\r\n");
      out.write("            <h2 style=\"color: red\"><b>Nova </b>Aplicação</h2><br/>\r\n");
      out.write("            <form method=\"post\" action=\"aplicacao.jsp\">\r\n");
      out.write("                <div class=\"form-row\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-group col-md-6\">\r\n");
      out.write("                        <label for=\"inputName4\">Nome</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" id=\"inputnome\" name=\"nome\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-6\">\r\n");
      out.write("                        <label for=\"inputName4\">CPF</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"cpf\" required onkeypress=\"$(this).mask('000.000.000-00');\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"inputZip\">Data de Nascimento</label>\r\n");
      out.write("                        <input type=\"text\" name=\"dtnasc\" class=\"form-control\" required onkeypress=\"$(this).mask('00/00/0000')\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <label for=\"inputAddress\">Endereço</label>\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"endereco\" required id=\"inputAddress\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-row\">\r\n");
      out.write("                    <div class=\"form-group col-md-6\">\r\n");
      out.write("                        <label for=\"inputMed\">Medicamento</label>\r\n");
      out.write("                        <input type=\"text\" class=\"form-control\" name=\"medicamento\" required id=\"inputMed\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-4\">\r\n");
      out.write("                        <label for=\"inputApli\">Tipo Aplicação</label>\r\n");
      out.write("                        <select id=\"inputApli\" class=\"form-control\" required name=\"tipo\">\r\n");
      out.write("                            <option selected>Intramuscular</option>\r\n");
      out.write("                            <option>Subcutânea</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"form-group col-md-2\">\r\n");
      out.write("                        <label for=\"dtApli\">Data da Aplicação</label>\r\n");
      out.write("                        <input type=\"text\" name=\"data\" id=\"data\" class=\"form-control\" required onkeypress=\"$(this).mask('00/00/0000')\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                   \r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\" id=\"btnCadAplic\">Cadastrar</button>\r\n");
      out.write("            </form>\r\n");
      out.write("            <form method=\"post\" action=\"getaplicacao.jsp\" target=\"_blank\">\r\n");
      out.write("            ");

                String res = request.getParameter("res");
                String id = request.getParameter("id");
                if (res != null) {
                    if (res.equalsIgnoreCase("true")) {
                        out.println("<div class='alert alert-success' role='alert'>Aplicação Cadastrada</td> </div>");
                        out.println("<button type='submit' name='id'  value=" + request.getParameter("id") + ">Imprimir</button>");
                        
                        
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>Erro ao Cadastrar</div>");
                    }
                }
            
      out.write("\r\n");
      out.write("            </form>\r\n");
      out.write("            <script src=\"JS/jquery-3.3.1.slim.min.js\"></script>\r\n");
      out.write("            <script src=\"JS/popper.min.js\" ></script>\r\n");
      out.write("            <script src=\"JS/bootstrap.min.js\"></script>\r\n");
      out.write("            <script src=\"JS/jquery.mask.min.js\"></script>\r\n");
      out.write("            <script src=\"js/jquery-ui.js\"></script>\r\n");
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
