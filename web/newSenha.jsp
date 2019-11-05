<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page session="true" %>
<%@page import="DAO.CarrinhoDAO"%>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>
    </head>
    <body>
        <div style="margin: 40px;padding: 10px; padding-left: 30px; background-color: #f8f9fa;border-radius: 10px;">

            <h2 style="color: red"><b>Redefinir</b> Senha</h2>
            <h5>Digite o E-mail ou CPF</h5>
            <br/>
            <form method="post" action="refreshPass.jsp">
                <div class="form-row">
                    <div class="form-group col-md-2">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="inputEmail" name="email" 
                               >
                    </div>

                    <div class="form-group col-md-1">
                        <label for="cpf">CPF</label>
                        <input type="text" class="form-control" id="inputCPF" name="cpf" onkeypress="$(this).mask('000.000.000-00');">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="senha">Nova Senha</label>
                        <input type="text" class="form-control" id="inputSenha"  name="senha" required>
                    </div>
                    <div class="form-group col-md-1">
                        <label for="botao">&nbsp;&nbsp;&nbsp; </label>
                        <input class="btn btn-success float-right form-control" type="submit" value="Redefinir" name="botao">
                    </div>
                    <div class="form-group col-md-1">
                        <label for="botao">&nbsp;&nbsp;&nbsp; </label>
                        <input class="btn btn-warning float-right form-control" type="button" id="voltar" value="Voltar" name="botao">
                    </div>
                </div>
                <%
                    String res = request.getParameter("res");
                    if (res != null) {
                        if (res.equals("ok")) {
                            out.println("<div class='alert alert-success' role='alert'>Alterado com Sucesso</div>");
                        } else if(res.equals("nexist")){
                            out.println("<div class='alert alert-warning' role='alert'>Usuario não encontrado</div>");
                        } else {
                            out.println("<div class='alert alert-danger' role='alert'>Erro ao Alterar</div>");
                        }
                    }
                %>
            </form>
        </div>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
        <script>
            $("#voltar").click(function(){
               document.location.href = "login.jsp"; 
            });
        </script>
    </body>

</html>