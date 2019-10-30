<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>

﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>

    </head>
    <body><br/>
        <%
            try {
                String usuario = (String) session.getAttribute("usuario");
                if (usuario == null) {
                    response.sendRedirect("login.jsp");
                }
            } catch (Exception e) {
                response.sendRedirect("login.jsp");
            }
            try{
            if (session.getAttribute("key").equals("2")) {
                response.sendRedirect("index.jsp");
            }}catch(Exception aa){
                
    }%>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Adicionar</b> Convênios</h2><br/>
            <form method="post" action="cadConv.jsp">
                <div class="form-row">
                    <div class="form-group col-md-5">
                        <label for="inputConv">Nome Convênio</label>
                        <input type="text" class="form-control" required id="inputConv" name="nomeConv">
                    </div>

                    <div class="form-group col-md-2">
                        <label for="inputPorc">Desconto Medicamentos</label>
                        <select id="inputPorc" class="form-control" name="descMed">
                            <option selected>10</option>
                            <option>20</option>
                            <option>30</option>
                            <option>40</option>
                            <option>50</option>
                        </select>
                    </div>

                </div>
                <button type="submit" class="btn btn-primary" id="btnCadConv" >Cadastrar</button>
            </form>
            <%                            String res = request.getParameter("res");

                if (res != null) {
                    if (res.equalsIgnoreCase("ok")) {
            %><div class="alert alert-success hidden" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                Convenio Cadastrado.
            </div> 
            <script>$(selector).click();</script><%
            } else if (res.equalsIgnoreCase("fail")) {
                out.println("<div class='alert alert-danger' role='alert'> Erro ao Cadastrar</div>");
            } else if (res.equalsIgnoreCase("exist")) {%>
            <div class="alert alert-danger hidden" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                Convenio já cadastrado.
            </div> 
            <script>$(selector).click();</script><%

                    } else {
                    }
                }
            %> 
        </div>

        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script>function selector() {
                                    $(".alert").removeClass('hidden');
                                    window.setTimeout(function () {
                                        $(".alert").fadeTo(500, 0).slideUp(500, function () {
                                            $(this).remove();
                                        });
                                    }, 1000);
                                }
        </script>
    </body>
</html>