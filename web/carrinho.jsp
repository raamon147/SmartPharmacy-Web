<%@page import="Classes.Conexao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.Connectta"%>
<%@include file="menu.jsp"%>
<%@include file="funcoes.jsp"%>
<%@page import="DAO.CarrinhoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
    </head>
    <body>

        <form method="post" action="removecarrinho.jsp">
            <h1 style="text-align: center; padding: 2px;">Carrinho de compras</h1>
            <div id="list" class="row">

                <div class="table-responsive col-md-12">
                    <table class="table table-striped" cellspacing="0" cellpadding="0">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Produto</th>
                                <th>Quantidade</th>
                                <th>Preço</th>
                                <th>Total</th>
                                <th class="actions"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Connection con = Conexao.getConexao();
                                PreparedStatement ps = null;
                                String sql = "";
                                ArrayList cart = (ArrayList) session.getAttribute("cart");

                                ArrayList<Produto> lista = new ArrayList<Produto>();
                                ArrayList<Float> listaTotal = new ArrayList<Float>();
                                for (int i = 0; i < cart.size(); i++) {
                                    sql = "SELECT * FROM produto WHERE cod_prod = ?";
                                    ps = con.prepareStatement(sql);
                                    ps.setString(1, String.valueOf(cart.get(i)));

                                    ResultSet r = ps.executeQuery();
                                    Produto prod = new Produto();

                                    if (r.first()) {
                                        prod.setCod_prod(r.getString("cod_prod"));
                                        prod.setNome_prod(r.getString("nome_prod"));
                                        prod.setQtd_prod(1);
                                        prod.setPreco_prod(r.getFloat("preco_prod"));

                                    }

                                    lista.add(lista.size(), prod);
                                    listaTotal.add(listaTotal.size(), prod.getPreco_prod());

                                }
                                for (Produto p : lista) {
                                    out.print("<tr>");
                                    out.print("<td>" + p.getCod_prod() + "</td>");
                                    out.print("<td>" + p.getNome_prod() + "</td>");
                                    out.print("<td><input type='text' value = " + p.getQtd_prod() + " size = '2'></td>");
                                    out.print("<td>" + p.getPreco_prod() + "</td>");
                                    out.print("<td>" + (p.getPreco_prod()*p.getQtd_prod()) + "</td>");
                                    out.print("<td class='actions'>");
                                    out.print("<button type='submit' class='btn btn-danger btn-md' p-3 name='cod' value='" + p.getCod_prod() + "'>Remover</button>");
                                    out.print("&nbsp;&nbsp;&nbsp;");
                                    out.print("<button type='submit' class='btn btn-warning btn-md' p-3 name='cod' value='" + p.getCod_prod() + "'>Alterar</button>");
                                    out.print("</td>");
                                    out.print("</tr>");
                                }
                            %>
                        </tbody>
                    </table>

                </div>
            </div>
            <div class="container">
                <div class="row">
                    <%
                        try {
                            float total = 0;
                            for (int i = 0; i < listaTotal.size(); i++) {
                                total += listaTotal.get(i);
                            }
                            if (total != 0) {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$" + String.format("%.2f",total)+ "</h1> </div>");
                            } else {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$ 0,00</h1> </div>");
                            }
                        } catch (Exception e) {
                            out.println("<h1 class='display-4 float-right col-md-5'><div>"+e.toString()+"</h1> </div>");
                        }
                    %> 

                    <div class="p-1 float-right"> <a class="btn btn-success disabled m-1" href="carrinho.jsp">Finalizar Compra</a>
                        <a class="btn btn-warning float-right m-1" href="index.jsp">Voltar</a></div>

                    <div class="float-right col-md m-1" style="width: 300px; height: 200px;">
                        <h3 style="text-align: center">Desconto Convenio</h3><br>
                        <label for="numConv">Numero</label>
                        <input type="text" class="form-control" id="numConv">
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
