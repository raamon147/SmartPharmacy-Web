<%@page import="Classes.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%
        String req = request.getParameter("func2");
        String res = "";

        String cod = request.getParameter("cadCod");
        String qtd = request.getParameter("cadQtd");

        Produto prod = new Produto();
        prod.setCod_prod(cod);
        prod.setQtd_prod(Integer.parseInt(qtd));

        res = new ProdutoDAO().alterarProdFun(prod);
        response.sendRedirect("edititem.jsp?res=" + res);
%>