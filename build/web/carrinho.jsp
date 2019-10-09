<%@page import="java.util.Random"%>
<%@page import="Classes.Conexao"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="menu.jsp"%>
<%@include file="funcoes.jsp"%>
<%@page import="DAO.CarrinhoDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
    </head>
    <body>

        <form method="post" action="removecarrinho.jsp">
            <h1 style="text-align: center; padding: 2px;">Carrinho de compras</h1>
            <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;">
                <div id="list" class="row">

                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Produto</th>
                                    <th>Quantidade</th>
                                    <th>Preço</th>
                                    <th>Total</th>
                                    <th class="actions"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ArrayList<String> cart = (ArrayList) session.getAttribute("cart");
                                    ArrayList<Integer> cartQtd = (ArrayList) session.getAttribute("cartQtd");

                                    ArrayList<Produto> lista = new CarrinhoDAO().getCart(cart, cartQtd);

                                    float totalItens = 0;

                                    for (int i = 0; i < lista.size(); i++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(i).getCod_prod() + "</td>");
                                        out.print("<td>" + lista.get(i).getNome_prod() + "</td>");
                                        out.print("<td><input style='width:50px;' id='" + lista.get(i).getCod_prod() + "' name='qtdProd' type='number' min='1' value = " + cartQtd.get(i) + " size = '1'></td>");
                                        out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod()) + "</td>");
                                        out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod() * cartQtd.get(i)) + "</td>");
                                        out.print("<td class='actions'>");
                                        out.print("<button type='submit' class='btn btn-danger btn-md' p-3 name='cod' value='" + lista.get(i).getCod_prod() + "'>Remover</button>");
                                        out.print("&nbsp;&nbsp;&nbsp;");
                                        out.print("</td>");
                                        out.print("</tr>");

                                        totalItens += lista.get(i).getPreco_prod() * cartQtd.get(i);
                                    }
                                %>
                            </tbody>
                        </table>
                        <%
                            String desc = request.getParameter("apply");

                            if (desc != null) {
                                float fdesc = Float.valueOf(desc);
                                totalItens = totalItens - ((totalItens * fdesc) / 100);
                                response.sendRedirect("carrinho.jsp?total=" + totalItens);
                            }

                            String tt = request.getParameter("total");

                            if (tt != null) {
                                float tTotal = Float.parseFloat(tt);

                                totalItens = tTotal;

                                if (totalItens != 0) {
                                    out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$" + String.format("%.2f", totalItens) + "</h1> ");
                                    out.println("<input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#modalfin'>Finalizar Compra</button>");

                                } else {
                                    out.println("<h1 class='display-4 float-right col-md-5'><div>Não há itens no carrinho</h1> <input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                }
                            } else if (totalItens != 0) {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Total: R$" + String.format("%.2f", totalItens) + "</h1> ");
                                out.println("<input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                out.println("&nbsp;&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#modalfin'>Finalizar Compra</button>");

                            } else {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Não há itens no carrinho</h1> <input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                            }


                        %>

                    </div>
                </div>
                <%                    String pedido = request.getParameter("pedido");
                    if (pedido != null) {
                        if (pedido.equalsIgnoreCase("ok")) {
                            out.println("<div class='alert alert-success' role='alert'>Pedido finalizado</div>");
                        }
                    }
                %>
            </div>
        </form>
        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px; width: 40%">
            <h3>Descontos</h3>
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-conv-tab" data-toggle="tab" href="#nav-conv" role="tab" aria-controls="nav-conv" aria-selected="true">DESCONTO DE CONVÊNIO</a>
                    <a class="nav-item nav-link" id="nav-cpf-tab" data-toggle="tab" href="#nav-cpf" role="tab" aria-controls="nav-cpf" aria-selected="false">DESCONTO CPF</a>
                    <a class="nav-item nav-link" id="nav-gerente-tab" data-toggle="tab" href="#nav-gerente" role="tab" aria-controls="nav-gerente" aria-selected="false">DESCONTO DO GERENTE</a>
                </div>
            </nav>

            <div class="tab-content" id="nav-tabContent">

                <div class="tab-pane fade show active" id="nav-conv" role="tabpanel" aria-labelledby="nav-conv-tab" style="padding: 10px;">
                    <div class="form-row">
                        <div class="form-group col-md-4 ">
                            <label for="numConv">Numero de identificação</label>
                            <input type="text" class="form-control" id="numConv">

                        </div>
                        <div class="form-group col-md-4 ">
                            <label for="btnConvenio">&nbsp;&nbsp;&nbsp;</label>
                            <input type="button" value="Aplicar ao Total" id="btnConvenio" class="form-control btn btn-primary float-right">
                        </div>
                    </div>
                </div>

                <div class="tab-pane fade" id="nav-cpf" role="tabpanel" aria-labelledby="nav-cpf-tab" style="padding: 10px;">
                    <div class="form-row">
                        <div class="form-group col-md-4 ">
                            <label for="numCPF">Numero do CPF</label>
                            <input type="text" onkeypress="$(this).mask('000.000.000-00');" class="form-control" id="numCPF">

                        </div>
                        <div class="form-group col-md-4 ">
                            <label for="btnCPF">&nbsp;&nbsp;&nbsp;</label>
                            <input type="button" value="Aplicar ao Total" id="btnCPF" class="form-control btn btn-primary float-right">
                        </div>
                    </div>
                </div>

                <div class="tab-pane fade" id="nav-gerente" role="tabpanel" aria-labelledby="nav-gerente-tab" style="padding: 10px;">
                    <div class="form-row">
                        <div class="form-group col-md-4 ">
                            <label for="numGerente">Desconto do Gerente</label>
                            <input type="text" class="form-control" id="numGerente">

                        </div>
                        <div class="form-group col-md-4 ">
                            <label for="btnGerente">&nbsp;&nbsp;&nbsp;</label>
                            <input type="button" value="Aplicar ao Total" id="btnGerente" class="form-control btn btn-primary float-right">
                        </div>
                    </div>
                </div>


            </div>

        </div>
        <div class="modal fade" id="modalfin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Finalizando Compra</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Deseja Inserir o CPF na compra?
                        <br>
                        <input type="radio" name='escolha' id='simE' value='sim'>
                        <label for='simE'>Sim</label>
                        <input type="radio" name='escolha' id='naoE' value='nao'>
                        <label for='simE'>Não</label><br><br>
                        <input type='text' id='cpfEscolha' value='' name="cpfEscolha" onkeypress="$(this).mask('000.000.000-00');" >
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        <input type='button' class='btn btn-primary' id='btnFin' value='Concluir' name='btnFin' >
                    </div>
                </div>
            </div>
        </div>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
        <script>

                            $(document).ready(function () {
                                $('input[name="escolha"]').click(function (e) {
                                    if (e.target.value === 'sim') {
                                        $('#cpfEscolha').show();
                                    } else {
                                        $('#cpfEscolha').val("");
                                        $('#cpfEscolha').hide();
                                    }
                                })

                                $('#cpfEscolha').hide();
                            });

                            $("#btnGerente").click(function () {
                                var desc = $("#numGerente").val();

                                document.location.href = "carrinho.jsp?apply=" + desc;

                            })

                            $(document).on('keypress', ':input:not(text):not([type=submit])', function (e) {
                                if (e.which == 13)
                                    e.preventDefault();
                            });

                            $("#btnVoltar").click(function () {
                                document.location.href = "index.jsp";
                            })

                            jQuery('input[type="number"]').focusout(function (event) {
                                var cod = $(this).attr("id");
                                var qtd = $(this).val();
                                var keycode = '13';
                                if (keycode == '13') {
                                    document.location.href = "carrinho.jsp?change=" + cod + "&qtd=" + qtd;
            <%                String change = request.getParameter("change");
                String qtd = request.getParameter("qtd");
                int nQtd = 0;
                if (change != null) {
                    if (cart.contains(change)) {
                        int n = cart.indexOf(change);
                        if (n != -1) {
                            cartQtd.set(n, Integer.parseInt(qtd));
                            response.sendRedirect("carrinho.jsp?nchange=ok");
                        }
                    }
                }

            %>
                                }

                            });

                            $("#btnFin").click(function () {
                                var cpf = document.getElementById("cpfEscolha").value;
                                
                                if(cpf != null || cpf != ""){
                                    document.location.href = "closeCart.jsp?cpf=" + cpf + "&total=" +<%=totalItens%>;
                                } else {
                                    document.location.href = "closeCart.jsp?total=" +<%=totalItens%>;
                                }


                            })
        </script>
    </body>
</html>
