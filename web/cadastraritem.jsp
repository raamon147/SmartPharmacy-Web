<%@include file="funcoes.jsp"%>
<%
response.sendRedirect("caditem.jsp?ok=" + inserir(Integer.parseInt(request.getParameter("codigo")), request.getParameter("produto"),Double.parseDouble(request.getParameter("preco")),request.getParameter("status"),Integer.parseInt(request.getParameter("idcateg"))));
%>