<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.CarrinhoDAO" %>
<%@page import="Classes.ItemCarrinho" %>
<%@page import="Classes.Conexao" %>

<%
    try {
        String cod = request.getParameter("cod");

        ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
        ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");

        int nQtd = 0;
        if (cod != null) {
            if (cart.contains(cod)) {
                int n = cart.indexOf(cod);
                if (n != -1) {
                    cart.remove(cod);
                    cartQtd.remove(n);
                }

            }
        }

        response.sendRedirect("carrinho.jsp?status=ok");
    } catch (Exception e) {
        out.println("Erro " + e.toString());
    }
%>