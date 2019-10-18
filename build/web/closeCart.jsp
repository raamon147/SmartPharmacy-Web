<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CarrinhoDAO"%>
<%
    String cpf = request.getParameter("cpf");
    String total = request.getParameter("total");
    String desc = request.getParameter("desc");
    
    ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
    ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");
    ArrayList<Float> desconto = (ArrayList) session.getAttribute("desconto");
    
    float ftotal = 0;
    float d = 0;
    
    if(cpf != null){
        
        d = Float.parseFloat(desc);
        
        ftotal = Float.parseFloat(total) - d;
        
        String res = new CarrinhoDAO().setOrderWCpf(cart, cartQtd, ftotal, cpf,desconto);
        
        if(res!= null){
            cart.clear();
            cartQtd.clear();
            desconto.clear();
        }
        
        response.sendRedirect("carrinho.jsp?pedido="+res);
        
    }else {
        
        d = Float.parseFloat(desc);
        
        ftotal = Float.parseFloat(total) - d;
        
        String res = new CarrinhoDAO().setOrder(cart, cartQtd, ftotal);
        
        if(res== "ult"){
            
        }else{
            cart.clear();
            cartQtd.clear();
            desconto.clear();
        }
        
        response.sendRedirect("carrinho.jsp?pedido="+res);
    }

%>
