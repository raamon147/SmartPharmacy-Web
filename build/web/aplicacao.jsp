<%@page import="DAO.AplicacaoDAO" %>

<%
String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String endereco = request.getParameter("endereco");
String nascimento = request.getParameter("dtnasc");
String tipo = request.getParameter("tipo");
String medicamento = request.getParameter("medicamento");
String data = request.getParameter("data");
AplicacaoDAO a = new AplicacaoDAO();
String res = "";

res = a.inserirAplicacao(cpf, nome, nascimento, endereco, tipo, medicamento, data);

response.sendRedirect("formaplicacao.jsp?res="+res);

%>