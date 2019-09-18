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
        <h2>Cadastrar Cliente</h2><br/>
        <form>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputName4">Nome</label>
                    <input type="text" class="form-control" id="inputnome">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputCPF">CPF</label>
                    <input type="text" id="inputCPF" class="form-control" onkeypress="$(this).mask('000.000.000-00');">
                </div>
                <div class="form-group col-md-2">
                    <label for="inputDtNasc">Data de Nascimento</label>
                    <input type="text" id="inputDtNasc" class="form-control" onkeypress="$(this).mask('00/00/0000')">
                </div>
            </div>
            <div class="form-group">
                <label for="inputEnd">Endereço</label>
                <input type="text" class="form-control" id="inputEnd">
            </div>


            <button type="submit" class="btn btn-primary" id="btnCadCliente">Cadastrar</button>
        </form>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    </body>

</html>