<%@page import="DAO.CompraDAO"%>
<%@page import="Classes.Compra"%>
<%@page import="DAO.RankingDAO"%>
<%@page import="Classes.RankingVenda"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp"%>
<%@page import="DAO.AplicacaoDAO" %>

﻿<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>
    <body>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Consultar </b>Vendas</h2><br/>
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-prod-tab" data-toggle="tab" href="#nav-prod" role="tab" aria-controls="nav-prod" aria-selected="true">RANKING PRODUTOS MAIS VENDIDOS</a>
                    <a class="nav-item nav-link" id="nav-cup-tab" data-toggle="tab" href="#nav-cup" role="tab" aria-controls="nav-cup" aria-selected="false">CUPOM DE COMPRAS FINALIZADAS</a></div>
            </nav>

            <div class="tab-content" id="nav-tabContent">

                <div class="tab-pane fade show active" id="nav-prod" role="tabpanel" aria-labelledby="nav-prod-tab" style="padding: 10px;">
                    <div class="form-row">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Posição</th>
                                    <th>Nome</th>
                                    <th>Preço</th>
                                    <th>Quantidade</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ArrayList<RankingVenda> lista = new RankingDAO().getRanking();
                                    int index = 1;
                                    for (RankingVenda r : lista) {
                                        out.println("<tr>");
                                        out.println("<td>" + (index++) + "°</td>");
                                        out.println("<td>" + r.getNome() + "</td>");
                                        out.println("<td>" + r.getPreco() + "</td>");
                                        out.println("<td>" + r.getQtd() + "</td>");
                                        out.println("</tr>");
                                    }

                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-cup" role="tabpanel" aria-labelledby="nav-cup-tab" style="padding: 10px;">
                    <div class="form-row">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Total</th>
                                    <th>Código</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%                               ArrayList<Compra> lis = new CompraDAO().getList();
                                    for (Compra c : lis) {
                                        out.println("<tr>");
                                        out.println("<td>" + c.getDataCompra() + "</td>");
                                        out.println("<td>" + c.getTotal() + "</td>");
                                        out.println("<td><a target='_blank' href='geracupom.jsp?cod_compra=" + c.getCodigo() + "'>" + c.getCodigo() + "</a></td>");
                                        out.println("</tr>");
                                    }

                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
    </body>
</html>