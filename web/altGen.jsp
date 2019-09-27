<%@page import="Classes.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%
    Produto prod = new Produto();
    String req = request.getParameter("func");
    String res = "";

    String cod = request.getParameter("cadCod");
    String nome = request.getParameter("cadNome");
    String qtd = request.getParameter("cadQtd");
    String preco = request.getParameter("cadPreco");
    String dos = request.getParameter("cadDos");
    String fab = request.getParameter("cadFab");
    String prin = request.getParameter("cadPrin");

    prod.setCod_prod(cod);
    prod.setNome_prod(nome);
    prod.setQtd_prod(Integer.parseInt(qtd));
    prod.setPreco_prod(Float.parseFloat(preco));
    prod.setDos_prod(dos);
    prod.setFabr_prod(fab);
    prod.setPr_ativo(prin);

    if (req != null) {
        if (req.equalsIgnoreCase("alterar")) {
            res = new ProdutoDAO().alterarProd(prod);
            response.sendRedirect("edititem.jsp?rest=" + res);
        } else if (req.equalsIgnoreCase("excluir")) {
            res = new ProdutoDAO().excluirProd(cod);
            response.sendRedirect("edititem.jsp?rest=" + res);
        }
    }

%>