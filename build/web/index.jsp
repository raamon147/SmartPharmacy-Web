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
<!doctype html>
<html>
    <body>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <br/>

        <form method="post" action="buscaritem.jsp">
            <div class="input-group md-form form-sm form-2 pl-0">
                <input class="form-control my-0 py-1 red-border" type="text" placeholder="Digite o nome do produto"
                       aria-label="Search" name="item">
                <div class="input-group-append">
                    <input type="submit" class="btn btn-primary" id="btnBuscarProd" value="Buscar">
                </div>
            </div>
        </form>
        <form method="post" action="addcarrinho.jsp">
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
                                    out.print("<button type='submit' class='btn btn-success btn-md' p-3 name='cod' value='" + rs.getString("cod_prod")+ "'>Adicionar ao carrinho</button>");
                                    out.print("</td>");
                                    out.print("</tr>");
                                }
                            }
                        %>
                    </tbody>
                </table>

            </div>
        </div>
</form>

        <a class="btn btn-primary" href="carrinho.jsp" role="button">Abrir Carrinho</a>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>

</html>