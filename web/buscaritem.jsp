<%@include file="funcoes.jsp"%>
<%@page import="Classes.Connectta"%>
<%
    
    String produto = request.getParameter("item");
    response.sendRedirect("index.jsp?resp=" + produto);

%>
