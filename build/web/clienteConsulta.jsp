<%@page import="DAO.ClienteDAO"%>
<%
    String cpf = request.getParameter("cpf");
    int pontos;

    if (cpf != null) {
        pontos = new ClienteDAO().getPontosCpf(cpf);

        if (String.valueOf(pontos) != null) {
            if (pontos == -1) {
                response.sendRedirect("carrinho.jsp?ponto=erro");
            } else if (pontos == -2) {
                response.sendRedirect("carrinho.jsp?ponto=nexist");
            } else {
                response.sendRedirect("carrinho.jsp?ponto=" + pontos);
            }
        }

    }


%>
