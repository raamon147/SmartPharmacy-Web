<%@page import="java.util.ArrayList"%>
<%
    String id = request.getParameter("cod");
    String prod =(String) session.getAttribute("resp");
    ArrayList cart = (ArrayList) session.getAttribute("cart");
    ArrayList cartQtd = (ArrayList) session.getAttribute("cartQtd");
    try {

        if (id != null && !id.isEmpty()) {
            if (cart.isEmpty() && cartQtd.isEmpty()) {
                cart.add(id);
                cartQtd.add(1);
                response.sendRedirect("index.jsp?cart=ok&resp="+prod);
            } else if (cart.contains(id)) {
                response.sendRedirect("index.jsp?cart=exist&resp="+prod);
            } else {
                cart.add(cart.size(), id);
                cartQtd.add(cartQtd.size(),1);
                response.sendRedirect("index.jsp?cart=ok&resp="+prod);
            }

        } else {
            response.sendRedirect("index.jsp?cart=fail");
        }
    } catch (Exception e) {
        response.sendRedirect("index.jsp?cart=" +e.toString());
    }
%>