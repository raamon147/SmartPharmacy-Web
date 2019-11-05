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
    <head>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


        <script src="JS/popper.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script type="text/javascript" src="JS/jsbuscar.js"></script>

        <script>
            
            window.onload = function(){
                pesquisar();
            }
            function selector() {
                $(".alert").removeClass('hidden');
                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 1000);
            }


        </script>   
        <style>
            #list{
                overflow: auto;
                max-height: 300px;
            }
            
        </style>

    </head>
    <body>
        <%
            try {
                String usuario = (String) session.getAttribute("usuario");
                if (usuario == null) {
                    response.sendRedirect("login.jsp");
                }
            } catch (Exception e) {
                response.sendRedirect("login.jsp");
            }

            ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
            ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");
            ArrayList<Double> desconto = (ArrayList) session.getAttribute("desconto");
            if (cart == null && cartQtd == null && desconto == null) {
                cart = new ArrayList<String>();
                cartQtd = new ArrayList<Integer>();
                desconto = new ArrayList<Double>();
                session.setAttribute("cart", cart);
                session.setAttribute("cartQtd", cartQtd);
                session.setAttribute("desconto", desconto);
            }
        %>
        <br/>
            
        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;">
            <%                            String res = request.getParameter("cart");

                            if (res != null) {
                                if (res.equalsIgnoreCase("ok")) {
                        %><div class="alert alert-success hidden" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            Produto Adicionado ao Carrinho
                        </div> 
                        <script>$(selector).click();</script><%
                        } else if (res.equalsIgnoreCase("fail")) {
                            out.println("<div class='alert alert-danger' role='alert'> Erro ao Adicionar</div>");
                        } else if (res.equalsIgnoreCase("exist")) {%>
                        <div class="alert alert-danger hidden" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            Esse Produto ja esta no carrinho
                        </div> 
                        <script>$(selector).click();</script><%

                                } else {
                                }
                            }
                        %> 
            <form method="post" action="buscaritem.jsp">
                <div class="input-group md-form form-sm form-2 pl-0">
                    <input class="form-control my-0 py-1 red-border" id="prod" type="text" placeholder="Digite o nome do produto"
                           aria-label="Search" onkeyup="pesquisar()" autocomplete="off" name="item" id="item">

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
                                    <th>Apresentação</th>
                                    <th>Principio Ativo</th>
                                    <th>Dosagem</th>
                                    <th>Fabricante</th>
                                    <th>Preço</th>
                                    <th class="actions">Ações</th>
                                </tr>
                            </thead>

                            <tbody id="listaprodutos">

                            </tbody>
                        </table>

                        
                    </div>
                </div>
            </form>


            <a class="btn btn-primary" href="carrinho.jsp" role="button">Abrir Carrinho</a>

        </div>

    </body>

</html>