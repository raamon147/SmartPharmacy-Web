<%@page import="DAO.ProdutoDAO"%>
<%@page import="Classes.Produto"%>
<%@page import="Classes.Conexao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>


﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>SmartPharmacy</title>

        <style>
            table{
                border-collapse: collapse;
                width: 100%;
                border: 1px solid #666;
            }
            thead{
                background: #ccc url(IMG/bar.gif) repeat-x left center;
                border-top: 1px solid #a5a5a5;
                border-bottom: 1px solid #a5a5a5;
            }
            tr:hover {
                color: #00f;
            }
            thead tr:hover {
                background-color: transparent;
                color: inherit;
            }
            tr:nth-child(even) {
                background-color: #fff;
            }
            th {
                font-weight: normal;
                text-align: left;
            }
            th, td {
                padding: 0.1em 1em;
            }
        </style>
    </head>

    <body><br/>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">    
            <h2 style="color: red;padding: 10px;"><b>Lista </b>de Produtos</h2>
            <div class="table-responsive col-md-12">
                <table class="table table-striped" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nome</th>
                            <th>Preço</th>
                            <th>Fabricante</th>
                            <th>Principio Ativo</th>
                            <th>Dosagem</th>
                            <th>Quantidade</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            try {
                                Connection conn = Conexao.getConexao();
                                PreparedStatement ps = conn.prepareStatement("select cod_prod,nome_prod,fabr_prod,pr_ativo,dos_prod,qtd_prod,status_prod,format(preco_prod,2) as preco_prod from produto");
                                ResultSet rs;
                                rs = ps.executeQuery();
                                while (rs.next()) {
                                    out.println("<tr>");
                                    out.println("<td><a href='edititem.jsp?cod=" + rs.getString("cod_prod") + "'>" + rs.getString("cod_prod") + "</a></td>");
                                    out.println("<td>" + rs.getString("nome_prod") + "</td>");
                                    out.println("<td>" + rs.getString("preco_prod") + "</td>");
                                    out.println("<td>" + rs.getString("fabr_prod") + "</td>");
                                    out.println("<td>" + rs.getString("pr_ativo") + "</td>");
                                    out.println("<td>" + rs.getString("dos_prod") + "</td>");
                                    out.println("<td>" + rs.getString("qtd_prod") + "</td>");
                                    out.println("<td>" + rs.getString("status_prod") + "</td>");
                                    out.println("</tr>");
                                }
                            } catch (Exception e) {
                                out.print(e.getMessage());
                            }

                        %>
                    <input type='hidden' id='altValue' name='altValue'>
                    </tbody>
                </table>
            </div>
        </div>
        <div style="margin: 40px;padding: 20px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red;"><b>Editar </b>  Produtos</h2>
            <%  key = (String) session.getAttribute("key");
                Produto prod = new Produto();
                String cod = (String) request.getParameter("cod");
                if (cod != null) {
                    prod = new ProdutoDAO().consultaProd(cod);
                } else {
                    prod.setCod_prod("");
                    prod.setNome_prod("");
                    prod.setQtd_prod(0);
                    prod.setPreco_prod(0);
                    prod.setDos_prod("");
                    prod.setFabr_prod("");
                    prod.setPr_ativo("");
                }

                String res = (String) request.getParameter("res");
                if (res != null) {
                    if (res.equals("okalt")) {
                        out.println("<div class='alert alert-success' role='alert'>Produto Alterado com Sucesso</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>" + res + "</div>");
                    }
                }

            %>
            <%if (key.equals("1")) {%>
            <h5>Selecione o codigo do Produto acima para começar a alterar</h5>
            <form method="POST" action="altGen.jsp">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="cadCod">Codigo</label>
                        <input type="text" class="form-control" id="inputCod" name="cadCod" readonly value="<%=prod.getCod_prod()%>">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="cadNome">Produto</label>
                        <input type="text" class="form-control" id="inputNomeProd" name="cadNome" value="<%=prod.getNome_prod()%>">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadQtd">Quantidade</label>
                        <input type="text" class="form-control" id="inputPreco"  name="cadQtd" value="<%=prod.getQtd_prod()%>">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadPreco">Preço</label>
                        <input type="text" class="form-control" id="inputPreco" onkeypress="$(this).mask('000000000000000.00', {reverse: true});" name="cadPreco" value="<%=prod.getPreco_prod()%>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="cadFab">Fabricante</label>
                        <input type="text" class="form-control" id="inputPreco" name="cadFab" value="<%=prod.getFabr_prod()%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="cadPrin">Principio Ativo</label>
                        <input type="text" class="form-control" id="inputPreco" name="cadPrin" value="<%=prod.getPr_ativo()%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="cadDos">Dosagem</label>
                        <input type="search" class="form-control" id="inputDosagem" name="cadDos" value="<%=prod.getDos_prod()%>">
                    </div>
                </div>
                <input type="hidden" name="func" value="" id="func">

                <button type="submit" class="btn btn-primary" id="alt" name="func" value="alterar">Alterar</button>
                <button type="submit" class="btn btn-primary" id="exc" name="func" value="excluir" >Excluir</button>
            </form>
            <%} else {%>
            <form method="POST" action="altFun.jsp">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="cadCod">Codigo</label>
                        <input type="text" value="<%=prod.getCod_prod()%>" class="form-control" id="inputCod" name="cadCod" readonly>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadQtd">Quantidade</label>
                        <input type="text" value="<%=prod.getQtd_prod()%>" class="form-control" id="inputPreco"  name="cadQtd" required>
                    </div>
                </div>
                <input type="hidden" name="func2" value="" id="func2">
                <button type="submit" id='alt2' class="btn btn-primary" name="alt2" id="btnAlt">Alterar</button>
            </form>
            <%}%>
            <%
                String rest = (String) request.getParameter("rest");
                if (rest != null) {
                    if (rest.equals("ok")) {
                        out.println("<div class='alert alert-success' role='alert'>Produto Deletado com Sucesso</div>");

                    } else if (rest.equals("okalt")) {
                        out.println("<div class='alert alert-success' role='alert'>Produto Alterado com Sucesso</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>" + rest + "</div>");
                    }
                }

            %>
        </div>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
        <script>
            jQuery(function () {
                $("#alt").click(function () {
                    $('#func').val("alterar");
                })

                $("#exc").click(function () {
                    $("#func").val("excluir");
                })

                $("#alt2").click(function () {
                    $('#func2').val("alterar");
                })
            })
        </script>
    </body>
</html>