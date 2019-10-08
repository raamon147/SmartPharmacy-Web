<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
﻿<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>
    <body>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Nova </b>Aplicação</h2><br/>
            <form method="post" action="aplicacao.jsp">
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputName4">Nome</label>
                        <input type="text" class="form-control" id="inputnome" name="nome" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputName4">CPF</label>
                        <input type="text" class="form-control" name="cpf" required onkeypress="$(this).mask('000.000.000-00');">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Data de Nascimento</label>
                        <input type="text" name="dtnasc" class="form-control" required onkeypress="$(this).mask('00/00/0000')">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Endereço</label>
                    <input type="text" class="form-control" name="endereco" required id="inputAddress">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputMed">Medicamento</label>
                        <input type="text" class="form-control" name="medicamento" required id="inputMed">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputApli">Tipo Aplicação</label>
                        <select id="inputApli" class="form-control" required name="tipo">
                            <option selected>Intramuscular</option>
                            <option>Subcutânea</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="dtApli">Data da Aplicação</label>
                        <input type="text" name="data" id="dtApli" class="form-control" required onkeypress="$(this).mask('00/00/0000')">
                    </div>
                   
                </div>

                <button type="submit" class="btn btn-primary" id="btnCadAplic">Cadastrar</button>
            </form>
            <%
                String res = request.getParameter("res");
                if (res != null) {
                    if (res.equalsIgnoreCase("true")) {
                        out.println("<div class='alert alert-success' role='alert'>Aplicação Cadastrada<a href='pdf/print"+request.getParameter("id")+".pdf' target='_blank'>&nbsp;&nbsp;&nbsp;Imprimir</a> </div>");
                        
                        
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>Erro ao Cadastrar</div>");
                    }
                }
            %>
            <script src="JS/jquery-3.3.1.slim.min.js"></script>
            <script src="JS/popper.min.js" ></script>
            <script src="JS/bootstrap.min.js"></script>
            <script src="JS/jquery.mask.min.js"></script>
    </body>
</html>