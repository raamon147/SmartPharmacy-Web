<%@page import="java.util.ArrayList"%>
<%
    String desc = request.getParameter("apply");
    String total = request.getParameter("total");
    ArrayList desconto = (ArrayList) session.getAttribute("desconto");

    float fDesc = 0;
    float tot = 0;

    if (desc != null && total != null) {
        fDesc = Float.parseFloat(desc) * 0.1f;
        tot = Float.parseFloat(total);

        if (fDesc > (tot - ((tot * 50) / 100))) {
            response.sendRedirect("carrinho.jsp?descErro=erro");;
        } else {
            if (desconto.isEmpty()) {
                desconto.add(Float.parseFloat(desc));
            } else {
                desconto.set(0, Float.parseFloat(desc));
            }
            response.sendRedirect("carrinho.jsp");
        }

    }

%>