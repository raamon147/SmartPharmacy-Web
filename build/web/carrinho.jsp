<%@page import="DAO.ConvenioDAO"%>
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
        <style>
            #list{
                overflow: auto;
                max-height: 450px;
            }
        </style>
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
                                    ArrayList<Double> desconto = (ArrayList) session.getAttribute("desconto");

                                    ArrayList<Produto> lista = new CarrinhoDAO().getCart(cart, cartQtd);

                                    double totalItens = 0;

                                    for (int i = 0; i < lista.size(); i++) {
                                        out.print("<tr>");
                                        out.print("<td>" + lista.get(i).getCod_prod() + "</td>");
                                        out.print("<td>" + lista.get(i).getNome_prod() + "</td>");
                                        out.print("<td><input style='width:50px;' id='" + lista.get(i).getCod_prod() + "' name='qtdProd' type='number' min='1' value = " + cartQtd.get(i) + " max='" + lista.get(i).getQtd_prod() + "' size = '1'></td>");
                                        out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod()) + "</td>");
                                        out.print("<td>" + String.format("%.2f", lista.get(i).getPreco_prod() * cartQtd.get(i)) + "</td>");
                                        out.print("<td class='actions'>");
                                        out.print("<button type='submit' class='btn btn-danger btn-md' p-3 name='cod' value='" + lista.get(i).getCod_prod() + "'>Remover</button>");
                                        out.print("&nbsp;&nbsp;&nbsp;");
                                        out.print("</td>");
                                        out.print("</tr>");

                                        totalItens += lista.get(i).getPreco_prod() * cartQtd.get(i);
                                    }

                                    double iDesc = 0;

                                    if (desconto.isEmpty()) {
                                        iDesc = 0;
                                    } else {
                                        iDesc = desconto.get(0);
                                    }
                                %>
                            </tbody>
                        </table>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <%
                            String tt = request.getParameter("total");

                            if (tt != null) {
                                float tTotal = Float.parseFloat(tt);

                                totalItens = tTotal;

                                iDesc = ((totalItens * iDesc) / 100);

                                if (totalItens != 0) {
                                    out.println("<div class='display-4 float-right col-md-5'><br/><h3 >Subtotal: R$" + String.format("%.2f", totalItens) + "</h3><h5>&nbsp;&nbsp;Desconto: R$ " + String.format("%.2f", iDesc) + "</h5><h1 >Total: R$" + String.format("%.2f", totalItens - iDesc) + "</h1></div>");
                                    out.println("<input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                    out.println("&nbsp;&nbsp;<input type='button' value='Limpar Carrinho' class='btn btn-primary' id='eraseCart' />");
                                    out.println("&nbsp;&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#modalfin'>Finalizar Compra</button>");

                                } else {
                                    out.println("<h1 class='display-4 float-right col-md-5'><div>Não há itens no carrinho</h1> <input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                }
                            } else if (totalItens != 0) {

                                iDesc = ((totalItens * iDesc) / 100);

                                out.println("<div class='display-4 float-right col-md-5'><br/><h3 >Subtotal: R$" + String.format("%.2f", totalItens) + "</h3><h5>&nbsp;&nbsp;Desconto: R$ " + String.format("%.2f", iDesc) + "</h5><h1 >Total: R$" + String.format("%.2f", totalItens - iDesc) + "</h1></div>");
                                out.println("<input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                                out.println("&nbsp;&nbsp;<input type='button' value='Limpar Carrinho' class='btn btn-primary' id='eraseCart' />");
                                out.println("&nbsp;&nbsp;&nbsp;&nbsp;<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#modalfin'>Finalizar Compra</button>");

                            } else {
                                out.println("<h1 class='display-4 float-right col-md-5'><div>Não há itens no carrinho</h1> <input type='button' class='btn btn-warning float-left' id='btnVoltar' value='Voltar'>");
                            }


                        %>                        
                    </div>
                </div>
                <%                    String pedido = request.getParameter("pedido");
                    if (pedido != null) {
                        if (pedido.equalsIgnoreCase("ult")) {
                            out.println("<div class='alert alert-danger' role='alert'>A quantidade de itens no estoque não condiz com o pedido</div>");
                        } else {
                            out.println("<div class='alert alert-success' role='alert'>Pedido finalizado&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a target ='_blank' href='geracupom.jsp?cod_compra=" + pedido + "'>Gerar Cupom</a></div>");
                            out.println("");
                        }
                    }
                %>
            </div>
        </form>
        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px; width: 40%">
            <h3>Descontos</h3>
            <div class="form-row">
                <div class="form-group col-md-3 ">
                    <label for="numGerente">Desconto do Gerente</label>
                    <input type="text" class="form-control" id="numGerente">
                </div>
                <div class="form-group col-md-4 ">
                    <label for="btnGerente">&nbsp;&nbsp;&nbsp;</label>
                    <input type="button" value="Aplicar" id="btnGerente" class="form-control btn btn-primary float-right">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4 ">
                    <label for="numConv">Desconto por Convênio</label>
                    <select class="form-control" id="numConv">
                        <%
                            ResultSet rs = new ConvenioDAO().getNomeConvenio();

                            while (rs.next()) {
                                out.println("<option value='" + rs.getString("desc_conv") + "'>" + rs.getString("nome_conv") + " - " + rs.getString("desc_conv") + "% de desconto</option>");
                            }

                        %>
                    </select>
                </div>
                <div class="form-group col-md-4 ">
                    <label for="btnConvenio">&nbsp;&nbsp;&nbsp;</label>
                    <input type="button" value="Aplicar" id="btnConvenio" class="form-control btn btn-primary float-right">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4 ">
                    <label for="numCPF">Desconto por CPF</label>
                    <input type="text" required onkeypress="$(this).mask('000.000.000-00');" class="form-control" id="numCPF">

                </div>
                <div class="form-group col-md-4 ">
                    <label for="btnCPF">&nbsp;&nbsp;&nbsp;</label>
                    <input type="button" value="Consultar" id="btnCPF" class="form-control btn btn-primary float-right">

                </div>
            </div>
            <%                        String descErro = request.getParameter("descErro");
                if (descErro != null) {
                    if (descErro.equals("erro")) {
                        out.println("<div class='alert alert-danger' role='alert'>Desconto não pode ultrapassar 50% do total da compra</div>");
                    }
                }
            %>
            <%
                String ponto = request.getParameter("ponto");

                int p = 0;

                if (ponto != null) {
                    if (ponto.equals("erro")) {
                        out.println("<div class='alert alert-danger' role='alert'>Erro ao Consultar</div>");
                    } else if (ponto.equals("nexist")) {
                        out.println("<div class='form-row'>");
                        out.println("Não foi encontrado nenhum registro com esse CPF<br>Deseja realizar o cadastro do cliente?<br><br>");
                        out.println("</div>");
                        out.println("<input type='button' class='btn btn-success' value='SIM' id='cadNewCli'>&nbsp;&nbsp;&nbsp;");
                    } else {
                        p = Integer.parseInt(ponto);
                        if (p == 0) {
                            out.println("<div class='form-row'>");
                            out.println("Você possui " + ponto + " ponto(s)<br><br>");
                            out.println("</div>");
                        } else {
                            out.println("<div class='form-row'>");
                            out.println("Você possui " + ponto + " ponto(s)<br><br>");
                            out.println("Deseja utiliza-lo para obter desconto?<br>");
                            out.println("</div>");
                            out.println("<input type='button' class='btn btn-success' data-toggle='modal' data-target='#modaldesc' value='SIM' id='btnCliPont'>&nbsp;&nbsp;&nbsp;");

                        }

                    }
                }
            %>
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
                    <form>
                        <div class="modal-body">

                            Deseja Inserir o CPF na compra?
                            <br>
                            <input type="radio" name='escolha' id='simE' value='sim'>
                            <label for='simE'>Sim</label>
                            <input type="radio" name='escolha' id='naoE' value='nao' checked="checked">
                            <label for='simE'>Não</label><br><br>
                            <input type='text' id='cpfIn' name="cpfIn" onkeypress="$(this).mask('000.000.000-00');" >
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                            <input type='button' class='btn btn-primary' id='btnFin' value='Concluir' name='btnFin' >
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modaldesc" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Aplicando Desconto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <h3>Quantos pontos deseja utilizar?</h3>
                        <h6 id="totalCompra">Total: <%=p%></h6>
                        <input type='text' id='descInsert' value='' required name="descInsert" >
                        <div id="alertaDesconto"></div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                        <input type='button' class='btn btn-primary' id='btnDesconto' value='Aplicar' name='btnDesconto' >
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
                                            $('#cpfIn').show();
                                        } else {
                                            $('#cpfIn').val("");
                                            $('#cpfIn').hide();
                                        }
                                    })

                                    $('#cpfIn').hide();
                                });

                                $("#btnDesconto").click(function () {
                                    var d = $("#descInsert").val();
                                    var t = <%=p%>

                                    if (parseInt(d) > parseInt(t)) {
                                        document.getElementById("alertaDesconto").innerHTML = "Insira um numero menor ou igual ao total de pontos";
                                    } else {
                                        document.location.href = "cpfdesconto.jsp?apply=" + d + "&total=" +<%=totalItens%>;

                                    }
                                });

                                $("#eraseCart").click(function () {
                                    document.location.href = "eraseCart.jsp";

                                });

                                $("#btnGerente").click(function () {
                                    var desc = $("#numGerente").val();

                                    var fdesconto = parseFloat(desc);

                                    if (fdesconto > 50) {
                                        alert("O desconto do Gerente não pode Ultrapassar 50%");
                                    } else {
                                        document.location.href = "gerenteDesconto.jsp?apply=" + desc;

                                    }

                                });

                                $("#btnCPF").click(function () {
                                    var cpf = $("#numCPF").val();

                                    document.location.href = "clienteConsulta.jsp?cpf=" + cpf;
                                });

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

                if (qtd == "") {

                } else {
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
                }

            %>
                                    }

                                });

                                $("#btnFin").click(function () {



                                    var cpf = document.getElementById("cpfIn").value;

                                    var desconto = <%=iDesc%>

                                    if (cpf != "")
                                        document.location.href = "closeCart.jsp?cpf=" + cpf + "&desc=" + desconto + "&total=" +<%=totalItens%>
                                    else
                                        document.location.href = "closeCart.jsp?desc=" + desconto + "&total=" +<%=totalItens%>
                                });

                                $("#cadNewCli").click(function () {
                                    document.location.href = "cadcliente.jsp";
                                });

                                $("#btnConvenio").click(function () {
                                    var desc = document.getElementById("numConv").value;

                                    if (desc != "") {
                                        document.location.href = "gerenteDesconto.jsp?apply=" + desc;
                                    }
                                });
        </script>
    </body>
</html>
