<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="menu.jsp" %>
﻿<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>SmartPharmacy</title>

        <style>
            table{
                border-collapse: collapse;
                width: 100%;
                border: 1px solid #666;
            }
            thead{
                background: #ccc url(https://www.devfuria.com.br/html-css/tabelas/bar.gif) repeat-x left center;
                border-top: 1px solid #a5a5a5;
                border-bottom: 1px solid #a5a5a5;
            }
            tr:hover {
                background-color:#3d80df;
                color: #fff;
            }
            thead tr:hover {
                background-color: transparent;
                color: inherit;
            }
            tr:nth-child(even) {
                background-color: #edf5ff;
            }
            th {
                font-weight: normal;
                text-align: left;
            }
            th, td {
                padding: 0.1em 1em;
            }
        </style>
    </head>

    <body><br/>
        <div style="margin: 40px;padding: 10px; background-color: #f8f9fa;border-radius: 10px;">    
            <h2 style="color: red"><b>Editar</b> Produtos</h2>
            <table>
                <thead>
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Preço</th>
                        <th>Fabricante</th>
                        <th>Principio Ativo</th>
                        <th>Dosagem</th>
                        <th>Quantidade</th>
                        <th>Confirmação</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>123</td>
                        <td>Remedio</td>
                        <td>R$ 0.00</td>
                        <td>Fabricante</td>
                        <td>Principio</td>
                        <td>Dosagem mg</td>
                        <td><input type="number" min="10" value="10"></td>
                        <td><input type="button" value="Alterar"></td>
                    </tr>
                    <tr>
                        <td>321</td>
                        <td>Remedio 2</td>
                        <td>R$ 0.00</td>
                        <td>Fabricante</td>
                        <td>Principio</td>
                        <td>Dosagem mg</td>
                        <td><input type="number" min="10" value="10"></td>
                        <td><input type="button" value="Alterar"></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>