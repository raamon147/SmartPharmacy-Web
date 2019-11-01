<%@include file="funcoes.jsp"%>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    String produto = request.getParameter("item");

    ResultSet rs = buscartexto(produto);
    while (rs.next()) {

        out.print("<tr>");
        out.print("<td>" + rs.getString("cod_prod") + "</td>");
        out.print("<td>" + rs.getString("nome_prod") + "</td>");
        out.print("<td>" + rs.getString("apr_prod") + "</td>");
        out.print("<td>" + rs.getString("pr_ativo") + "</td>");
        out.print("<td>" + rs.getString("dos_prod") + "</td>");
        out.print("<td>" + rs.getString("fabr_prod") + "</td>");
        out.print("<td>R$ " + rs.getString("preco_prod") + "</td>");
        out.print("<td class='actions'>");
        if(Integer.parseInt(rs.getString("qtd_prod"))<=0){
            out.println("<button type='button' class='btn btn-danger disabled'>Produto Indisponivel</button>");
        }else{
        out.print("<button type='submit' class='btn btn-success btn-md' p-3 name='cod' value='" + rs.getString("cod_prod") + "'>Adicionar ao carrinho</button>");}
        out.print("</td>");
        out.print("</tr>");
    }


%>