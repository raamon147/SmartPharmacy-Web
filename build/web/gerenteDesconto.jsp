<%@page import="java.util.ArrayList"%>
<%
    String desc = request.getParameter("apply");
    ArrayList desconto = (ArrayList) session.getAttribute("desconto");
    
    
    if(desc != null){
        if(desconto.isEmpty()){
            desconto.add(Double.parseDouble(desc));
        } else {
            desconto.set(0, Double.parseDouble(desc));
        }
        response.sendRedirect("carrinho.jsp");
    }

%>