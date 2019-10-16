<%@page import="DAO.ConvenioDAO"%>
<%@page import="Classes.Convenio"%>
<%
    String nome = request.getParameter("nomeConv");
    String num = request.getParameter("numConv");
    String descM = request.getParameter("descMed");
    
    Convenio con = new Convenio();
    con.setNome_conv(nome);
    con.setCod_conv(num);
    con.setDesc(Integer.parseInt(descM));
    
    String res = "";
    
    res = new ConvenioDAO().cadConvenio(con);
    
    response.sendRedirect("cadconvenio.jsp?res="+res);

%>