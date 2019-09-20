<%@page import="DAO.ClienteDAO" %>

<%
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String endereco = request.getParameter("endereco");
String dtnasc = request.getParameter("dtnasc");
String tel = request.getParameter("tel");
ClienteDAO c = new ClienteDAO();
String res = "";

res = c.inserirCliente(nome, endereco, dtnasc, cpf, tel);

response.sendRedirect("cadcliente.jsp?res="+res);

%>