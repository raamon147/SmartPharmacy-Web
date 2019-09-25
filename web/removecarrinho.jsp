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
        
        ArrayList cart = (ArrayList) session.getAttribute("cart");
        
        if(cart.contains(cod)){
            cart.remove(cod);
        }

        response.sendRedirect("carrinho.jsp?status=ok");
    } catch (Exception e) {
        out.println("Erro "+ e.toString());
    }
%>