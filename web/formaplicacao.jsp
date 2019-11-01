<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
﻿<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


        <script src="JS/popper.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
        <style>

            div#resultado {
                display: block;
                overflow:auto;
                width:100%;
                height:150%;
                top:10px;
                left:0px;
                margin-top: 65px;
                position:absolute;
                background-color: white;
                z-index: 999;
            }

        </style>
        <script language="Javascript">
            $(document).ready(function () {


                $("#medicamento").keyup(function () {
                    medicamentos = $("#medicamento").val();
                    $.ajax({
                        url: "medicamentos.jsp",
                        type: "post",
                        data: {
                            "medicamento": medicamentos,
                        },
                        success: function (data) {
                            $("#resultado").html(data);
                            $("#resultado").show();
                        }
                    })
                });
                
            });
            
            


            function Ver(nome, codigo) {
                $("#medicamento").val(nome);
                $("#medicamento").val(codigo);
                $("#resultado").hide();
            }



        </script>
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
                        <input type="text" class="form-control" autocomplete="off" id="medicamento" name="medicamento" required>
                        <div id="resultado" style="display: none">&nbsp;</div></div>

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
            <form method="post" action="getaplicacao.jsp" target="_blank">
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
                    String id = request.getParameter("id");
                    if (res != null) {
                        if (res.equalsIgnoreCase("true")) {
                            out.println("<div class='alert alert-success' role='alert'>Aplicação Cadastrada</td> </div>");
                            out.println("<button type='submit' name='id'  value=" + request.getParameter("id") + ">Imprimir</button>");

                        } else {
                            out.println("<div class='alert alert-danger' role='alert'>Erro ao Cadastrar</div>");
                        }
                    }
                %>
            </form>

    </body>
</html>