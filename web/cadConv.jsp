<%@page import="DAO.ConvenioDAO"%>
<%@page import="Classes.Convenio"%>
<%
    String nome = request.getParameter("nomeConv");
    String num = request.getParameter("numConv");
    String descM = request.getParameter("descMed");
    String descP = request.getParameter("descPerf");
    
    Convenio con = new Convenio();
    con.setNome_conv(nome);
    con.setCod_conv(num);
    con.setDesc_med(Float.parseFloat(descM));
    con.setDesc_perf(Float.parseFloat(descP));
    
    String res = "";
    
    res = new ConvenioDAO().cadConvenio(con);
    
    response.sendRedirect("cadconvenio.jsp?res="+res);

%>