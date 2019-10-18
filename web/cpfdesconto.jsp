<%@page import="java.util.ArrayList"%>
<%
    String desc = request.getParameter("apply");
    String total = request.getParameter("total");
    ArrayList desconto = (ArrayList) session.getAttribute("desconto");

    double fDesc = 0;
    double tot = 0;
    double value = 0;
    
    if (desc != null && total != null) {
        fDesc = Double.parseDouble(desc);
        tot = Double.parseDouble(total);
        
        
        value = ((fDesc*0.10) /tot)*100;
        
        
        
        
        if (fDesc*0.10 > (tot / 2)) {
            response.sendRedirect("carrinho.jsp?descErro=erro");;
        } else {
            if (desconto.isEmpty()) {
                desconto.add(value);
            } else {
                desconto.set(0, value);
            }
            response.sendRedirect("carrinho.jsp");
        }

    }

%>