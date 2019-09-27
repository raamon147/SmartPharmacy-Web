<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
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
<%@page session="true" %>
<%@page import="DAO.CarrinhoDAO"%>
<!doctype html>
<html>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) {
                response.sendRedirect("login.jsp");
            }
            ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
            ArrayList<Integer> cartQtd= (ArrayList) session.getAttribute("cartQtd");
            if (cart == null && cartQtd == null) {
                cart = new ArrayList<String>();
                cartQtd = new ArrayList<Integer>();
                session.setAttribute("cart", cart);
                session.setAttribute("cartQtd", cartQtd);
            }
        %>
        <br/>

        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;">

            <form method="post" action="buscaritem.jsp">
                <div class="input-group md-form form-sm form-2 pl-0">
                    <input class="form-control my-0 py-1 red-border" type="text" placeholder="Digite o nome do produto"
                           aria-label="Search" name="item">
                    <div class="input-group-append">
                        <input type="submit" class="btn btn-primary" id="btnBuscarProd" value="Buscar">
                    </div>
                </div>
            </form>
            <form method="post" action="addtocart.jsp">
                <div id="list" class="row">

                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Produto</th>
                                    <th>Principio Ativo</th>
                                    <th>Dosagem</th>
                                    <th>Fabricante</th>
                                    <th>Preço</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String produto = request.getParameter("resp");
                                    if (produto != null) {
                                        ResultSet rs = buscartexto(produto);
                                        while (rs.next()) {

                                            out.print("<tr>");
                                            out.print("<td>" + rs.getString("cod_prod") + "</td>");
                                            out.print("<td>" + rs.getString("nome_prod") + "</td>");
                                            out.print("<td>" + rs.getString("pr_ativo") + "</td>");
                                            out.print("<td>" + rs.getString("dos_prod") + "</td>");
                                            out.print("<td>" + rs.getString("fabr_prod") + "</td>");
                                            out.print("<td>R$ " + rs.getString("preco_prod") + "</td>");
                                            out.print("<td class='actions'>");
                                            out.print("<button type='submit' class='btn btn-success btn-md' p-3 name='cod' value='" + rs.getString("cod_prod") + "'>Adicionar ao carrinho</button>");
                                            out.print("</td>");
                                            out.print("</tr>");
                                        }
                                    }
                                %>
                            </tbody>
                        </table>
                        <%
                            String res = request.getParameter("cart");

                            if (res != null) {
                                if (res.equalsIgnoreCase("ok")) {
                                    out.println("<div class='alert alert-success' role='alert'>Produto Adicionado ao Carrinho</div>");
                                } else if (res.equalsIgnoreCase("fail")) {
                                    out.println("<div class='alert alert-danger' role='alert'> Erro ao Adicionar</div>");
                                } else if (res.equalsIgnoreCase("exist")) {
                                    out.println("<div class='alert alert-danger' role='alert'>Esse Produto ja esta no carrinho</div>");
                                } else {
                                }
                            }
                        %>
                    </div>
                </div>
            </form>

            <a class="btn btn-primary" href="carrinho.jsp" role="button">Abrir Carrinho</a>

        </div>


        <script src="JS/jquery-3.2.1.slim.min.js"></script>
        <script src="JS/popper.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
    </body>

</html>