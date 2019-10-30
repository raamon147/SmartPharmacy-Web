<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp"%>
<%@page import="DAO.AplicacaoDAO" %>

﻿<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <script>
            function Buscar() {
                // Declare variables
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("buscar");
                filter = input.value.toUpperCase();
                table = document.getElementById("tabela");
                tr = table.getElementsByTagName("tr");

                // Loop through all table rows, and hide those who don't match the search query
                for (i = 0; i < tr.length; i++) {
                    td = tr[i].getElementsByTagName("td")[0];
                    if (td) {
                        txtValue = td.textContent || td.innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                        } else {
                            tr[i].style.display = "none";
                        }
                    }
                }
            }
        </script>
        <title>SmartPharmacy</title>
    <body>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">
            <h2 style="color: red"><b>Consultar </b>Aplicações</h2><br/>
            <div class="input-group md-form form-sm form-2 pl-0">
                <input class="form-control my-0 py-1 red-border" id="buscar" onkeyup="Buscar()" type="text" placeholder="Digite o nome" aria-label="Search">
                <div class="input-group-append">

                </div>
            </div>
            <form method="post" action="getaplicacao.jsp" target="_blank">
                <table class="table" id="tabela">
                    <thead>
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Data</th>
                            <th scope="col">Medicamento</th>
                            <th scope="col">Comprovante</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%try {
                                String usuario = (String) session.getAttribute("usuario");
                                if (usuario == null) {
                                    response.sendRedirect("login.jsp");
                                }
                            } catch (Exception e) {
                                response.sendRedirect("login.jsp");
                            }
                            AplicacaoDAO a = new AplicacaoDAO();
                            ResultSet rs = a.buscarapp();
                            while (rs.next()) {
                                out.println("<tr>");
                                out.println("<th scope='row'>" + rs.getInt("id") + "</th>");
                                out.println("<td>" + rs.getString("nome") + "</td>");
                                out.println("<td>" + rs.getString("data") + "</td>");
                                out.println("<td>" + rs.getString("medicamento") + "</td>");
                                out.println("<td><button type='submit' name='id'  value=" + rs.getInt("id") + ">PDF</button></td>");
                                out.println("</tr>");
                            }
                        %>



                    </tbody>
                </table>
            </form>
        </div>
        <script src="JS/jquery-3.3.1.slim.min.js"></script>
        <script src="JS/popper.min.js" ></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.mask.min.js"></script>
    </body>
</html>