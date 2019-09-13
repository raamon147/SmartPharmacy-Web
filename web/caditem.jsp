<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
<%@include file="funcoes.jsp"%>
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
        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;">    
            <h2 style="color: red"><b>Cadastrar</b> Produtos</h2>
            <br/>

            <form method="POST" action="cadastraritem.jsp">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="inputCod">Codigo</label>
                        <input type="text" class="form-control" id="inputCod" name="codigo" required
                               >
                    </div>
                    <div class="form-group col-md-5">
                        <label for="inputNomeProd">Produto</label>
                        <input type="text" class="form-control" id="inputNomeProd" name="produto" required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputPreco">Quantidade</label>
                        <input type="number" class="form-control" id="inputPreco" min="10" name="idcateg" required>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputPreco">Preço</label>
                        <input type="number" class="form-control" id="inputPreco" name="preco" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputPreco">Fabricante</label>
                        <input type="text" class="form-control" id="inputPreco" name="status" required >
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputPreco">Principio Ativo</label>
                        <input type="text" class="form-control" id="inputPreco"  required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputDosagem">Dosagem</label>
                        <input type="search" class="form-control" id="inputDosagem" required>
                    </div>
                </div>
                <% 
                if(request.getParameter("ok").equals("true")){
                out.println("<div class='alert alert-success' role='alert'> Cadastrado com success</div>");
                }else if(request.getParameter("ok").equals("false")){
                out.println("<div class='alert alert-danger' role='alert'> Deu erro, parça</div>");
                }else{
                    
                }
                %>
                <button type="submit" class="btn btn-primary" id="btnCadProd">Cadastrar</button>
            </form>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>