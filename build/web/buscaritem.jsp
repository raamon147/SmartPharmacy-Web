<%@include file="funcoes.jsp"%>
<%
    
    String produto = request.getParameter("item");
    session.setAttribute("resp", produto);
    response.sendRedirect("index.jsp?resp=" + produto);

%>