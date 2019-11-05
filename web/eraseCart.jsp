<%@page import="java.util.ArrayList"%>
<%
    ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
    ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");
    ArrayList<Double> desconto = (ArrayList) session.getAttribute("desconto");
    
    if(cart.size() != 0 || cartQtd.size() != 0 || desconto.size() != 0){
        cart.clear();
        cartQtd.clear();
        desconto.clear();
        
    }
    
    response.sendRedirect("carrinho.jsp");


%>