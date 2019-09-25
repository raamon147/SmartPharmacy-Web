<%@page import="java.util.ArrayList"%>
<%
    String id = request.getParameter("cod");
    
    ArrayList cart = (ArrayList) session.getAttribute("cart");
    try {

        if (id != null && !id.isEmpty()) {
            if (cart.isEmpty()) {
                cart.add(id);
                response.sendRedirect("index.jsp?cart=ok");
            } else if (cart.contains(id)) {
                response.sendRedirect("index.jsp?cart=exist");
            } else {
                cart.add(cart.size(), id);
                response.sendRedirect("index.jsp?cart=ok");
            }

        } else {
            response.sendRedirect("index.jsp?cart=fail");
        }
    } catch (Exception e) {
        response.sendRedirect("index.jsp?cart=" + cart.get(1));
    }
%>