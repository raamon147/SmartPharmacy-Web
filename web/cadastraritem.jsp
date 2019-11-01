<%@page import="DAO.ProdutoDAO" %>
<%@page import="Classes.Produto" %>
<%
    try {
        String cod = request.getParameter("cadCod");
        String nome = request.getParameter("cadNome");
        String qtd = request.getParameter("cadQtd");
        String preco = request.getParameter("cadPreco");
        String fab = request.getParameter("cadFab");
        String prin = request.getParameter("cadPrin");
        String dos = request.getParameter("cadDos");
        String cat = request.getParameter("cadCat");
        String apr = request.getParameter("cadApr");

        Produto produto = new Produto();
        produto.setCod_prod(cod);
        produto.setNome_prod(nome);
        produto.setQtd_prod(Integer.parseInt(qtd));
        produto.setPreco_prod(Float.parseFloat(preco));
        produto.setFabr_prod(fab);
        produto.setPr_ativo(prin);
        produto.setDos_prod(dos);
        produto.setCategoria(cat);
        produto.setApresentacao(apr);

        String stts = new ProdutoDAO().insereProduto(produto);

        response.sendRedirect("caditem.jsp?status=" + stts);
    } catch (Exception e) {
        out.println("Erro "+ e.toString());
    }

%>

<%
   


%>