<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
<%@include file="funcoes.jsp"%>
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
            if (session.getAttribute("key").equals("2")) {
                response.sendRedirect("index.jsp");
            }%>
        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;">    
            <h2 style="color: red"><b>Cadastrar</b> Produtos</h2>
            <br/>

            <form method="POST" action="cadastraritem.jsp">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="cadCod">Codigo</label>
                        <input type="text" class="form-control" id="inputCod" name="cadCod" required
                               >
                    </div>
                    <div class="form-group col-md-5">
                        <label for="cadNome">Produto</label>
                        <input type="text" class="form-control" id="inputNomeProd" name="cadNome" required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadQtd">Quantidade</label>
                        <input type="number" class="form-control" id="inputPreco" min="10" name="cadQtd" required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadPreco">Preço</label>
                        <input type="text" class="form-control" id="inputPreco" name="cadPreco" onkeypress="$(this).mask('000000000000000.00', {reverse: true});" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="cadFab">Fabricante</label>
                        <input type="text" class="form-control" id="inputPreco" name="cadFab" required >
                    </div>
                    <div class="form-group col-md-4">
                        <label for="cadPrin">Principio Ativo</label>
                        <input type="text" class="form-control" id="inputPreco" name="cadPrin"  required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadDos">Dosagem</label>
                        <input type="search" class="form-control" id="inputDosagem" name="cadDos" required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadCat">Categoria</label>
                        <select class="form-control" name="cadCat" id="inputCat">
                            <option value="Medicamento">Medicamento</option>
                            <option value="Outros">Outros</option>
                        </select>
                    </div>
                </div>
                <%
                    String res = request.getParameter("status");
                    if (res != null) {
                        if (res.equals("ok")) {
                            out.println("<div class='alert alert-success' role='alert'> Cadastrado com sucesso</div>");
                        } else if (res.equals("none")) {
                            out.println("<div class='alert alert-danger' role='alert'> Erro ao Cadastrar</div>");
                        } else if (res.equals("exist")) {
                            out.println("<div class='alert alert-danger' role='alert'>Já existe um registro com esse codigo</div>");
                        }
                    }

                %>
                <button type="submit" class="btn btn-primary" id="btnCadProd">Cadastrar</button>
            </form>
        </div>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
    </body>
</html>