<%@include file="funcoes.jsp"%>
<%@page import="Classes.Connectta"%>
<%
    
    String produto = request.getParameter("item");
    session.setAttribute("resp", produto);
    response.sendRedirect("index.jsp?resp=" + produto);

%>