<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.CarrinhoDAO" %>
<%@page import="Classes.ItemCarrinho" %>
<%@page import="Classes.Conexao" %>

<%
try {
        int cod = Integer.parseInt(request.getParameter("cod"));
        

        ItemCarrinho produto = new ItemCarrinho();
        produto.setCodprod(cod);

        String stts = new CarrinhoDAO().deletaProduto(produto);

        response.sendRedirect("carrinho.jsp?status=" + stts);
    } catch (Exception e) {
        out.println("Erro "+ e.toString());
    }
%>