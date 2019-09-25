package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ModelList_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>www.tech-freaks.in - Model List</title>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\n");
      out.write("</head>\n");
      out.write(" \n");
      out.write("<body>\n");
      out.write("<p><font size=\"3\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Model List\n");
      out.write("  </strong></font></p>\n");
      out.write("<a href=\"/ShoppingCart.jsp\" mce_href=\"ShoppingCart.jsp\">View Cart</a>\n");
      out.write("<p/>    \n");
      out.write("<table width=\"75%\" border=\"1\">\n");
      out.write("  <tr>\n");
      out.write("    <td><form name=\"modelDetail1\" method=\"POST\" action=\"servlet/CartController\">\n");
      out.write(" <font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Model:</strong>\n");
      out.write("        TF-Model1</font><input type=\"hidden\" name=\"modelNo\" value=\"TF-MODEL1\">\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Description:</strong>\n");
      out.write("        Tech-Freaks imaginary model 1. </font><input type=\"hidden\" name=\"description\" value=\"Tech-Freaks imaginary model 1.\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Quantity:<input type=\"text\" size=\"2\" value=\"1\" name=\"quantity\"></strong></font></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Price:</strong>\n");
      out.write("        $10.00</font><input type=\"hidden\" name=\"price\" value=\"10\"></p><input type=\"hidden\" name=\"action\" value=\"add\"><input type=\"submit\" name=\"addToCart\" value=\"Add To Cart\">\n");
      out.write("      </form></td>\n");
      out.write("    <td><form name=\"modelDetail2\" method=\"POST\" action=\"servlet/CartController\"><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Model</strong>:\n");
      out.write("      TF-Model2 </font><input type=\"hidden\" name=\"modelNo\" value=\"TF-MODEL2\">\n");
      out.write("<font face=\"Verdana, Arial, Helvetica, sans-serif\">\n");
      out.write("      <p><font size=\"2\"><strong>Description</strong>: Tech-Freaks imaginary model\n");
      out.write("        2. </font><input type=\"hidden\" name=\"description\" value=\"Tech-Freaks imaginary model 2.\"></p>\n");
      out.write("      <p><font size=\"2\"><strong>Quantity</strong>: <input type=\"text\" size=\"2\" value=\"1\" name=\"quantity\"></font></p>\n");
      out.write("      <p><font size=\"2\"><strong>Price</strong>: $20.00<input type=\"hidden\" name=\"price\" value=\"20\"></font></p>\n");
      out.write("           <input type=\"hidden\" name=\"action\" value=\"add\">\n");
      out.write("             <input type=\"submit\" name=\"addToCart\" value=\"Add To Cart\">\n");
      out.write("      </font></form></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td><form name=\"modelDetail3\" method=\"POST\" action=\"servlet/CartController\"><p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Model:</strong>\n");
      out.write("        TF-Model3</font><input type=\"hidden\" name=\"modelNo\" value=\"TF-MODEL3\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Description:</strong>\n");
      out.write("        Tech-Freaks imaginary model 3. </font><input type=\"hidden\" name=\"description\" value=\"Tech-Freaks imaginary model 3.\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Quantity:</strong></font> <input type=\"text\" size=\"2\" value=\"1\" name=\"quantity\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Price: $30.00</strong></font><input type=\"hidden\" name=\"price\" value=\"30\"></p>        <input type=\"hidden\" name=\"action\" value=\"add\">\n");
      out.write("        <input type=\"submit\" name=\"addToCart\" value=\"Add To Cart\">\n");
      out.write("</form></td>\n");
      out.write("    <td><form name=\"modelDetail4\" method=\"POST\" action=\"servlet/CartController\"><p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Model</strong>:\n");
      out.write("        TF-Model4</font><input type=\"hidden\" name=\"modelNo\" value=\"TF-MODEL4\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Description</strong>:\n");
      out.write("        Tech-Freaks imaginary model 4. </font><input type=\"hidden\" name=\"description\" value=\"Tech-Freaks imaginary model 4.\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Quantity</strong>:</font> <input type=\"text\" size=\"2\" value=\"1\" name=\"quantity\"></p>\n");
      out.write("      <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Price</strong>: $40.00</font><input type=\"hidden\" name=\"price\" value=\"40\"></p>\n");
      out.write("   <input type=\"hidden\" name=\"action\" value=\"add\"><input type=\"submit\" name=\"addToCart\" value=\"Add To Cart\"></form></td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("<p> </p>\n");
      out.write("</body>\n");
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
