<%@page import="Classes.Conexao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
                                ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
                                ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");

                                ArrayList<Produto> lista = new CarrinhoDAO().getCart(cart, cartQtd);

                                for (int i = 0; i < lista.size(); i++) {
                                    out.print("<tr>");
                                    out.print("<td>" + lista.get(i).getCod_prod() + "</td>");
                                    out.print("<td>" + lista.get(i).getNome_prod() + "</td>");
                                    out.print("<td><input id='" + lista.get(i).getCod_prod() + "' name='qtdProd' type='text' value = " + cartQtd.get(i) + " size = '2'></td>");
                                    out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod()) + "</td>");
                                    out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod() * cartQtd.get(i)) + "</td>");
                                    out.print("<td class='actions'>");
                                    out.print("<button type='submit' class='btn btn-danger btn-md' p-3 name='cod' value='" + lista.get(i).getCod_prod() + "'>Remover</button>");
                                    out.print("&nbsp;&nbsp;&nbsp;");
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
                    <%--
                        try {
                            float total = 0;
                            for (int i = 0; i < listaTotal.size(); i++) {
                                total += listaTotal.get(i);
                            }
                            if (total != 0) {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$" + String.format("%.2f", total) + "</h1> </div>");
                            } else {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$ 0,00</h1> </div>");
                            }
                        } catch (Exception e) {
                            out.println("<h1 class='display-4 float-right col-md-5'><div>" + e.toString() + "</h1> </div>");
                        }
                    --%> 

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
        <script src="JS/jquery-3.2.1.slim.min.js"></script>
        <script src="JS/popper.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script>

            $(document).on('keypress', ':input:not(text):not([type=submit])', function (e) {
                if (e.which == 13)
                    e.preventDefault();
            });

            jQuery('input[type="text"]').keypress(function (event) {
                var cod = $(this).attr("id");
                var qtd = $(this).val();
                var keycode = (event.keyCode ? event.keyCode : event.which);
                if (keycode == '13') {
                    document.location.href = "carrinho.jsp?change=" + cod + "&qtd=" + qtd;
            <%
                String change = request.getParameter("change");
                String qtd = request.getParameter("qtd");
                int nQtd = 0;
                if (change != null) {
                    if (cart.contains(change)) {
                        int n = cart.indexOf(change);
                        if (n != -1) {
                            cartQtd.set(n, Integer.parseInt(qtd));
                            response.sendRedirect("carrinho.jsp?nchange=ok");
                        }
                    }
                }

            %>
                }

            });
        </script>
    </body>
</html>
