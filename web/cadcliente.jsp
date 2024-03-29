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
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Cadastrar</b> Clientes</h2><br/>
            <form method="post" action="cliente.jsp">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputName4">Nome</label>
                        <input type="text" class="form-control" required id="inputnome" name="nome">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputCPF">CPF</label>
                        <input type="text" id="inputCPF" required name="cpf" class="form-control" onkeypress="$(this).mask('000.000.000-00');">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputDtNasc">Data de Nascimento</label>
                        <input type="text" id="inputDtNasc" required name="dtnasc" class="form-control" onkeypress="$(this).mask('00/00/0000')">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputDtNasc">Celular</label>
                        <input type="text" id="inputTel" name="tel" required class="form-control" onkeypress="$(this).mask('(00)00000-0000')">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEnd">Endereço</label>
                    <input type="text" class="form-control" id="inputEnd" required name="endereco">
                </div>


                <button type="submit" class="btn btn-primary" id="btnCadCliente">Cadastrar</button>
            </form>
            <%
                try {
                    String usuario = (String) session.getAttribute("usuario");
                    if (usuario == null) {
                        response.sendRedirect("login.jsp");
                    }
                } catch (Exception e) {
                    response.sendRedirect("login.jsp");
                }
                String res = request.getParameter("res");
                if (res != null) {
                    if (res.equalsIgnoreCase("true")) {
                        out.println("<div class='alert alert-success' role='alert'>Cliente Cadastrado com Sucesso</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>Não foi possivel Cadastrar o Cliente</div>");
                    }
                }
            %>

            <script src="JS/jquery-3.3.1.slim.min.js"></script>
            <script src="JS/popper.min.js" ></script>
            <script src="JS/bootstrap.min.js"></script>
            <script src="JS/jquery.mask.min.js"></script>
    </body>

</html>