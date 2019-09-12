<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
<!doctype html>
<html>
    <body>
        <br />
        <div class="input-group md-form form-sm form-2 pl-0">
            <input class="form-control my-0 py-1 red-border" type="text" placeholder="Digite o nome do produto"
                   aria-label="Search">
            <div class="input-group-append">
                <button type="button" class="btn btn-primary" id="btnBuscarProd">Buscar</button>
            </div>
        </div>
        <div id="list" class="row">

            <div class="table-responsive col-md-12">
                <table class="table table-striped" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Produto</th>
                            <th>Categoria</th>
                            <th>Status</th>
                            <th>Preço</th>
                            <th class="actions">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1001</td>
                            <td>Dipirona Gotas</td>
                            <td>Medicamento</td>
                            <td>Disponivel</td>
                            <td>R$ 5,99</td>
                            <td class="actions">
                                <a class="btn btn-success btn-xs disabled" href="view.jsp">Adicionar no Carrinho</a>
                                <a class="btn btn-warning btn-xs disabled" href="edit.jsp">Editar</a>
                                <a class="btn btn-danger btn-xs disabled"  href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>


        <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".carrinho">Abrir Carrinho</button>

        <div class="modal fade carrinho" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <h1 style="text-align: center; padding: 2px;">Carrinho de compras</h1>
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
                    <div class="container">
                        <div class="row">
                            <h1 class="display-4 float-right col-md-5"><div>Total: R$: 5,99 </div></h1><br/>
                            <div class="p-1 float-right"> <a class="btn btn-success disabled m-1" href="carrinho.jsp">Finalizar Compra</a>
                                <a class="btn btn-warning float-right m-1" href="index.jsp">Voltar</a></div>

                            <div class="float-right col-md m-1" style="width: 300px; height: 200px;">
                                <h3 style="text-align: center">Desconto Convenio</h3><br>
                                <label for="numConv">Numero</label>
                                <input type="text" class="form-control" id="numConv">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>

</html>