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

    </head>
    <body><br/>
        <%
         key = (String) session.getAttribute("key");
                  
                
                if(key.equals("2")){
        response.sendRedirect("index.jsp");
        }%>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Adicionar</b> Convênios</h2><br/>
                    <form method="post" action="cadConv.jsp">
                        <div class="form-row">
                            <div class="form-group col-md-5">
                                <label for="inputConv">Nome Convênio</label>
                                <input type="text" class="form-control" id="inputConv" name="nomeConv">
                            </div>
                            <div class="form-group col-md-3">
                                <label for="inputConv">Prefixo Convênio</label>
                                <input type="text" class="form-control" id="inputConv" name="numConv">
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

                    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                    </body>
                    </html>