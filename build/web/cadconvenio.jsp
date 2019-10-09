<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>

﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>

    </head>
    <body><br/>
        <%
      
                  
                
                if(session.getAttribute("key").equals("2")){
        response.sendRedirect("index.jsp");
        }%>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Adicionar</b> Convênios</h2><br/>
                    <form method="post" action="cadConv.jsp">
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="inputConv">Nome Convênio</label>
                                <input type="text" class="form-control" required id="inputConv" name="nomeConv">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="inputConv">Prefixo Convênio</label>
                                <input type="text" class="form-control" required id="inputConv" name="numConv">
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputPorc">Desconto Medicamentos</label>
                                <select id="inputPorc" class="form-control" name="descMed">
                                    <option selected>10</option>
                                    <option>20</option>
                                    <option>50</option>
                                </select>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="inputPorc">Desconto Perfumaria</label>
                                <select id="inputPorc" class="form-control" name="descPerf">
                                    <option selected>5</option>
                                    <option>15</option>
                                </select>
                            </div>

                        </div>
                        <button type="submit" class="btn btn-primary" id="btnCadConv" >Cadastrar</button>
                    </form>
                    </div>

                    <script src="JS/jquery-3.3.1.slim.min.js"></script>
                    <script src="JS/popper.min.js"></script>
                    <script src="JS/bootstrap.min.js"></script>
                    </body>
                    </html>