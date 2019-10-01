<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CarrinhoDAO"%>
<%
    String cpf = request.getParameter("cpf");
    String total = request.getParameter("total");
    
    ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
    ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");
    
    float ftotal = 0;
    
    if(cpf != null){
        
        ftotal = Float.parseFloat(total);
        
        String res = new CarrinhoDAO().setOrderWCpf(cart, cartQtd, ftotal, cpf);
        
        if(res.equalsIgnoreCase("ok")){
            cart.clear();
            cartQtd.clear();
        }
        
        response.sendRedirect("carrinho.jsp?pedido="+res);
        
    }else {
        ftotal = Float.parseFloat(total);
        
        String res = new CarrinhoDAO().setOrder(cart, cartQtd, ftotal);
        
        if(res.equalsIgnoreCase("ok")){
            cart.clear();
            cartQtd.clear();
        }
        
        response.sendRedirect("carrinho.jsp?pedido="+res);
    }

%>
