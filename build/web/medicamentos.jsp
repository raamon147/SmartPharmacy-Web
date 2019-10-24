
<%@page import="DAO.ProdutoDAO"%>
<%@page import="Classes.Produto"%>
<%@page import="java.util.ArrayList"%>
<%
    String medicamento = request.getParameter("medicamento");
    ArrayList<Produto> produtos = new ProdutoDAO().getProdutosNome(medicamento);
    String html = "";
    for (Produto produto : produtos) {
        html += "<a style='cursor:pointer;' class='list-group-item list-group-item-action'";
        html += " onclick=\"javascript:Ver('" + produto.getNome_prod() + "','" +produto.getNome_prod()+" "+ produto.getDos_prod() + " " + produto.getFabr_prod() + "')\">";
        html += produto.getNome_prod()+" "+ produto.getDos_prod() + " " + produto.getFabr_prod() + "</a>";
        
    }
    out.println(html);
%>