<%@page import="DAO.ClienteDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Cliente"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <style>
            table{
                border-collapse: collapse;
                width: 100%;
                border: 1px solid #666;
            }
            thead{
                background: #ccc url(IMG/bar.gif) repeat-x left center;
                border-top: 1px solid #a5a5a5;
                border-bottom: 1px solid #a5a5a5;
            }
            tr:hover {
                color: #00f;
            }
            thead tr:hover {
                background-color: transparent;
                color: inherit;
            }
            tr:nth-child(even) {
                background-color: #fff;
            }
            th {
                font-weight: normal;
                text-align: left;
            }
            th, td {
                padding: 0.1em 1em;
            }

        </style>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
    </head>
    <body>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">    
            <h2 style="color: red;padding: 10px;"><b>Lista </b>de Clientes</h2>
            <div class="table-responsive col-md-12">
                <table class="table table-striped" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                            <th>CPF</th>
                            <th>Nome</th>
                            <th>Endereço</th>
                            <th>Telefone</th>
                            <th>Data Nascimento</th>
                            <th>Pontuação</th>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            try {
                                String usuario = (String) session.getAttribute("usuario");
                                if (usuario == null) {
                                    response.sendRedirect("login.jsp");
                                }
                            } catch (Exception e) {
                                response.sendRedirect("login.jsp");
                            }

                            try {
                                ArrayList<Cliente> lista = new ClienteDAO().getCliente();
                                for (Cliente c : lista) {
                                    out.println("<tr>");
                                    out.println("<td>" + c.getCpf() + "</a></td>");
                                    out.println("<td><a href='listcliente.jsp?cod=" + c.getCpf() + "'>" + c.getNome() + "</td>");
                                    out.println("<td>" + c.getEnd() + "</td>");
                                    out.println("<td>" + c.getTel() + "</td>");
                                    out.println("<td>" + c.getDtnasc() + "</td>");
                                    out.println("<td>" + c.getQtdPontos() + "</td>");
                                }
                            } catch (Exception e) {
                                out.print(e.toString());
                            }

                        %>
                    <input type='hidden' id='altValue' name='altValue'>
                    </tbody>
                </table>
            </div>
        </div>

        <div style="margin: 40px;padding: 20px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red;"><b>Editar </b>  Cliente</h2>
            <% 
                Cliente cli = new Cliente();
                String cod = (String) request.getParameter("cod");
                if (cod != null) {
                    cli = new ClienteDAO().consultaCli(cod);
                } else {
                    cli.setCpf("");
                    cli.setNome("");
                    cli.setEnd("");
                    cli.setDtnasc("");
                    cli.setTel("");
                }
            %>
            <h5>Clique no nome do Cliente acima para começar a alterar</h5>
            <form method="POST" action="altCli.jsp">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="cadCod">CPF</label>
                        <input type="text" class="form-control" required="" id="inputCod" name="cadCPF" readonly value="<%=cli.getCpf()%>">
                    </div>
                    <div class="form-group col-md-5">
                        <label for="cadNome">Nome</label>
                        <input type="text" class="form-control" required="" id="inputNomeProd" name="cadNome" value="<%=cli.getNome()%>">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadQtd">Endereço</label>
                        <input type="text" class="form-control" required="" id="inputPreco"  name="cadEnd" value="<%=cli.getEnd()%>">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="cadPreco">Data de Nascimento</label>
                        <input type="text" class="form-control" required="" id="inputPreco" onkeypress="$(this).mask('00/00/0000')" name="cadData" value="<%=cli.getDtnasc()%>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="cadFab">Telefone</label>
                        <input type="text" class="form-control" required="" onkeypress="$(this).mask('(00)00000-0000')" id="inputTel" name="cadTel" value="<%=cli.getTel()%>">
                    </div>
                </div>
                <input type="hidden" name="func" value="" id="func">

                <button type="submit" class="btn btn-primary" id="alt" name="func" value="alterar">Alterar</button>
                <button type="submit" class="btn btn-primary" id="exc" name="func" value="excluir" >Excluir</button>
            </form>
            <%
                    String rest = (String) request.getParameter("rest");
                    if (rest != null) {
                        if (rest.equals("ok")) {
                            out.println("<div class='alert alert-success' role='alert'>Cliente Deletado com Sucesso</div>");

                        } else if (rest.equals("okalt")) {
                            out.println("<div class='alert alert-success' role='alert'>Cliente Alterado com Sucesso</div>");
                        } else {
                            out.println("<div class='alert alert-danger' role='alert'>" + rest + "</div>");
                        }
                    }
            %>
        </div>
        <script>
                            jQuery(function () {
                                $("#alt").click(function () {
                                    $('#func').val("alterar");
                                })

                                $("#exc").click(function () {
                                    $("#func").val("excluir");
                                })
                            })
        </script>
    </body>
</html>
