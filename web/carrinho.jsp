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
                                <th class="actions"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%          CarrinhoDAO ca = new CarrinhoDAO();

                                ResultSet rs = ca.carrinholista();
                                while (rs.next()) {
                                    out.print("<tr>");
                                    out.print("<td>" + rs.getInt("codprod") + "</td>");
                                    out.print("<td>" + rs.getString("prod") + "</td>");
                                    out.print("<td><input type='text' value = " + rs.getInt("qtd") + " size = '2'></td>");
                                    out.print("<td>" + rs.getDouble("valor") + "</td>");
                                    out.print("<td class='actions'>");
                                    out.print("<button type='submit' class='btn btn-danger btn-md' p-3 name='cod' value='" + rs.getString("codprod") + "'>X</button>");
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
                    <%                                 rs = ca.valortotal();

                        while (rs.next()) {
                            if (rs.getString("total") != null) {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$:" + rs.getString("total") + ",00</h1> </div>");
                            } else {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$: 0,00</h1> </div>");
                            }
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
