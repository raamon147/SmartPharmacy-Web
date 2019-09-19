<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.Connectta"%>
<%@include file="menu.jsp" %>
<%@include file="funcoes.jsp"%>
<%@ page session="true" %>
<!doctype html>
<html>
    <body>
        <link rel="stylesheet" href="JS/jquery-ui.css" />
        <script src="JS/jquery-3.4.1.min.js"></script>
        <script src="JS/jquery-1.9.1.js"></script>
        <script src="JS/jquery-ui.js"></script>
        <%
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) {
                response.sendRedirect("login.jsp");
            } else {
            }
        %>
        <script language="javascript" type="text/javascript">
            $(document).ready(function(){
                $("#auto").autocomplete("get.jsp", {
				   width:auto,
				   selectFirst: false
                });
            });
        </script>  
        <br/>

        <form method="post" action="buscaritem.jsp">
            <div class="input-group md-form form-sm form-2 pl-0">
                <input id="auto" name="auto"  class="form-control" type="text" placeholder="Digite o nome do produto"
                       aria-label="Search" name="item">
                <div id="country"></div>
                <div class="input-group-append">
                    <input type="submit" class="btn btn-primary" id="btnBuscarProd" value="Buscar">
                </div>
            </div>
            <br><br>
        </form>
        <div id="list" class="row">

            <div class="table-responsive col-md-12">
                <table class="table table-striped" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Produto</th>
                            <th>Categoria</th>
                            <th>Status</th>
                            <th>Preço</th>
                            <th class="actions">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            /*  String produto = request.getParameter("resp");
                             ResultSet rs = buscartexto(produto);
                             if(rs.wasNull()){
                             out.println("nulo");
                             } else {
                             while (rs.next()) {
                             out.print("<tr>");
                             out.print("<td>"+rs.getString("codigo")+"</td>");
                             out.print("<td>"+rs.getString("produto")+"</td>");
                             out.print("<td>"+rs.getString("preco")+"</td>");
                             out.print("<td>"+rs.getString("status")+"</td>");
                             out.print("<td>"+rs.getString("id_categoria")+"</td>");
                             out.print("<td class='actions'>");
                             out.print("<a class='btn btn-success btn-xs disabled' p-3 href='view.jsp'>Adicionar no Carrinho</a> ");
                             out.print("<a class='btn btn-warning btn-xs disabled' href='edit.jsp'>Editar</a> ");
                             out.print("<a class='btn btn-danger btn-xs disabled'  href='#' data-toggle='modal' data-target='delete-modal'>Excluir</a> ");
                             out.print("</td>");
                             out.print("</tr>");
                             }
                             } */
                        %>
                    </tbody>
                </table>

            </div>
        </div>


        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".carrinho">Abrir Carrinho</button>

        <div class="modal fade carrinho" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <h1 style="text-align: center; padding: 2px;">Carrinho de compras</h1>
                    <div id="list" class="row">

                        <div class="table-responsive col-md-12">
                            <table class="table table-striped" cellspacing="0" cellpadding="0">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Produto</th>
                                        <th>Categoria</th>
                                        <th>Quantidade</th>
                                        <th>Preço</th>
                                        <th class="actions"></th>
                                    </tr>

                                </thead>
                                <tbody>

                                    <tr>
                                        <td>1001</td>
                                        <td>Dipirona Gotas</td>
                                        <td>Medicamento</td>
                                        <td><input type="text" class="md-form" size="1" name="qtd" value="1"></td>
                                        <td>R$ 5,99</td>
                                        <td class="actions">
                                            <a class="btn btn-danger btn-xs disabled"  href="#" data-toggle="modal" data-target="#delete-modal">X</a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>

                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <h1 class="display-4 float-right col-md-5"><div>Total: R$: 5,99 </div></h1><br/>
                            <div class="p-1 float-right"> <a class="btn btn-success disabled m-1" href="carrinho.jsp">Finalizar Compra</a>
                                <a class="btn btn-warning float-right m-1" href="index.jsp">Voltar</a></div>

                            <div class="float-right col-md m-1" style="width: 300px; height: 200px;">
                                <h3 style="text-align: center">Desconto Convenio</h3><br>
                                <label for="numConv">Numero</label>
                                <input type="text" class="form-control" id="numConv">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

        <script>
            jQuery(function () {
                $("#auto").autocomplete("List.jsp");
            });
        </script>
    </body>

</html>