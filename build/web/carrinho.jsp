<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>SmartPharmacy</title>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp"><strong><font COLOR="red">Smart</strong>Pharmacy</font></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Administrador
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="caditem.jsp">Adicionar Produtos</a>
                        <a class="dropdown-item " href="edititem.jsp">Listar/Editar Produtos</a>
                        <a class="dropdown-item disabled" href="#">Alterar Status</a>
                        <a class="dropdown-item" href="cadconvenio.jsp">Cadastrar Convênios</a>


                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Serviços
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="cadcliente.jsp">Cadastrar Cliente</a>
                        <a class="dropdown-item" href="formaplicacao.jsp">Cadastrar Aplicação</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdownMenuLink"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Relatórios
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item disabled" href="#">Relatórios Gerenciais</a>
                    </div>
                </li>
            </div>
        </div>
    </nav>
</head>
<br/>
<body>

    <div id="list" class="row">

        <div class="table-responsive col-md-12">
            <table class="table table-striped" cellspacing="0" cellpadding="0">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Produto</th>
                        <th>Categoria</th>
                        <th>Quantidade</th>
                        <th>Preço</th>
                        <th class="actions"></th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td>1001</td>
                        <td>Dipirona Gotas</td>
                        <td>Medicamento</td>
                        <td><input type="text" class="md-form" size="1" name="qtd" value="1"></td>
                        <td>R$ 5,99</td>
                        <td class="actions">
                            <a class="btn btn-danger btn-xs disabled"  href="#" data-toggle="modal" data-target="#delete-modal">X</a>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
    </div>
    <div class="float-right">
        <h1 class="display-4"><div class="p-2">Total: R$: 5,99 </div></h1><br/>
        <div class="p-1"> <a class="btn btn-success disabled" href="carrinho.jsp">Finalizar Compra</a>
            <a class="btn btn-warning " href="index.jsp">Voltar</a></div>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>