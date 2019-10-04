<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>

﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


        <script src="JS/popper.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
        <script>
            function selector() {
                $(".alert").removeClass('hidden');
                window.setTimeout(function () {
                    $(".alert").fadeTo(500, 0).slideUp(500, function () {
                        $(this).remove();
                    });
                }, 1500);
            }


        </script> 
        <title>SmartPharmacy</title>

    </head>
    <body><br/>
        <%
            if (session.getAttribute("key").equals("2")) {
                response.sendRedirect("index.jsp");
            }%>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Cadastrar</b> Usuários</h2><br/>
            <form method="post" action="cadfunc.jsp">
                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="inputConv">Email: </label>
                        <input type="email" class="form-control" id="inputEmail" name="email" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputConv">CPF: </label>
                        <input type="text" class="form-control" id="inputCPF" onkeypress="$(this).mask('000.000.000-00');" name="cpf" required >
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputTipo">Tipo: </label>
                        <select id="inputTipo" class="form-control" name="tipo" required>
                            <option selected>Administrador</option>
                            <option>Atendente</option>
                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputConv">Usuario: </label>
                        <input type="text" class="form-control" id="inputUsuario" name="login" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputSenha">Senha: </label>
                        <input type="password" class="form-control" id="password" name="senha" required>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputSenha1">Confirme a senha: </label>
                        <input type="password" class="form-control" id="confirm_password" name="senha1" required>
                    </div>

                </div>
                <button type="submit" class="btn btn-primary" id="btnCadUser" >Cadastrar</button><br/>
                <%
                    
                    String res = request.getParameter("status");

                    if (res != null) {
                        if (res.equalsIgnoreCase("ok")) {
                %><br/><div class="alert alert-success hidden" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    Usuario Cadastrado.
                </div> 
                <script>$(selector).click();</script><%
                } else if (res.equalsIgnoreCase("fail")) {
                    out.println("<div class='alert alert-danger' role='alert'> Erro ao Cadastrar.</div>");
                } else if (res.equalsIgnoreCase("exist")) {%>
                <br/><div class="alert alert-danger hidden" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    Usuário já existente.
                </div> 
                <script>$(selector).click();</script><%

                        } else {
                        }
                    }
                %>
            </form>
        </div>

        
        <script>
                            var password = document.getElementById("password")
                                    , confirm_password = document.getElementById("confirm_password");

                            function validatePassword() {
                                if (password.value != confirm_password.value) {
                                    confirm_password.setCustomValidity("As senhas digitadas não conferem");
                                } else {
                                    confirm_password.setCustomValidity('');
                                }
                            }

                            password.onchange = validatePassword;
                            confirm_password.onkeyup = validatePassword;

        </script>
    </body>
    
</html>