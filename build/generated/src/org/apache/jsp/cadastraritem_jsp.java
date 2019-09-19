package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.ProdutoDAO;
import Classes.Produto;

public final class cadastraritem_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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

    try {
        String cod = request.getParameter("cadCod");
        String nome = request.getParameter("cadNome");
        String qtd = request.getParameter("cadQtd");
        String preco = request.getParameter("cadPreco");
        String fab = request.getParameter("cadFab");
        String prin = request.getParameter("cadPrin");
        String dos = request.getParameter("cadDos");

        Produto produto = new Produto();
        produto.setCod_prod(cod);
        produto.setNome_prod(nome);
        produto.setQtd_prod(Integer.parseInt(qtd));
        produto.setPreco_prod(Float.parseFloat(preco));
        produto.setFabr_prod(fab);
        produto.setPr_ativo(prin);
        produto.setDos_prod(dos);

        String stts = new ProdutoDAO().insereProduto(produto);

        response.sendRedirect("caditem.jsp?status=" + stts);
    } catch (Exception e) {
        out.println("Erro "+ e.toString());
    }


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
