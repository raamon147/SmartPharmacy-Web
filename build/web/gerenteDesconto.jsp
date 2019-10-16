<%@page import="java.util.ArrayList"%>
<%
    String desc = request.getParameter("apply");
    ArrayList desconto = (ArrayList) session.getAttribute("desconto");
    
    
    if(desc != null){
        if(desconto.isEmpty()){
            desconto.add(Float.parseFloat(desc));
        } else {
            desconto.set(0, Float.parseFloat(desc));
        }
        response.sendRedirect("carrinho.jsp");
    }

%>