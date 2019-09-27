<%@page import="DAO.ProdutoDAO"%>
<%@page import="Classes.Produto"%>
<%@page import="Classes.Conexao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.Connectta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>


﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>SmartPharmacy</title>

        <style>
            table{
                border-collapse: collapse;
                width: 100%;
                border: 1px solid #666;
            }
            thead{
                background: #ccc url(https://www.devfuria.com.br/html-css/tabelas/bar.gif) repeat-x left center;
                border-top: 1px solid #a5a5a5;
                border-bottom: 1px solid #a5a5a5;
            }
            tr:hover {
                background-color:#3d80df;
                color: #fff;
            }
            thead tr:hover {
                background-color: transparent;
                color: inherit;
            }
            tr:nth-child(even) {
                background-color: #edf5ff;
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
            <h2 style="color: red"><b>Lista </b>de Produtos</h2>
            <table>
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
                            PreparedStatement ps = conn.prepareStatement("select * from produto");
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
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Editar </b>  Produtos</h2>
            <%  key = (String) session.getAttribute("key");
                Produto prod = new Produto();
                String cod = (String) request.getParameter("cod");
                if (cod != null) {
                    prod = new ProdutoDAO().consultaProd(cod);
                }

                String res = (String) request.getParameter("res");
                String resp = (String) request.getParameter("resp");
                if (res != null && res.equals("ok")) {
                    out.print("<script>alert(\"Deletado com sucesso\");</script>");

                }
                if(resp != null && resp.equals("ok")){
                    out.println();
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
                        <input type="text" class="form-control" id="inputPreco" name="cadPreco" value="<%=prod.getPreco_prod()%>">
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

                <button type="submit" class="btn btn-primary" name="func" value="alterar">Alterar</button>
                <button type="submit" class="btn btn-primary" name="func" value="excluir" >Excluir</button>
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
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            jQuery(function(){
                $("#alt").click(function(){
                    $('#func').val("alterar");
                })
                
                $("#exc").click(function(){
                    $("#func").val("excluir");
                })
                
                $("#alt2").click(function(){
                    $('#func2').val("alterar");
                })
            })
                
        </script>
    </body>
</html>