
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <title>SmartPharmacy</title>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="index.jsp"><strong><font COLOR="red">Smart</strong>Pharmacy</font></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <%
                    try{
                    String key = (String) session.getAttribute("key");
                    
                %>
                <%if(key.equals("2")){%>
                <li class="nav-item dropdown">
                    
                    <a class="nav-link dropdown-toggle active"  href="#" id="navbarDropdownMenuLink"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Administrador
                    </a>
                    
                    <div class="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item disabled"  href="caditem.jsp">Adicionar Produtos</a>
                        <a class="dropdown-item " href="edititem.jsp">Listar/Editar Produtos</a>
                        <a class="dropdown-item disabled"  href="cadconvenio.jsp">Cadastrar Convênios</a>
                        <a class="dropdown-item disabled"  href="cadfuncionario.jsp">Cadastrar Usuarios</a>


                    </div>
                </li>
                <%} else {%>
                <li class="nav-item dropdown">
                    
                    <a class="nav-link dropdown-toggle active"  href="#" id="navbarDropdownMenuLink"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Administrador
                    </a>
                    
                    <div class="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item "  href="caditem.jsp">Adicionar Produtos</a>
                        <a class="dropdown-item " href="edititem.jsp">Listar/Editar Produtos</a>
                        <a class="dropdown-item "  href="cadconvenio.jsp">Cadastrar Convênios</a>
                        <a class="dropdown-item"  href="cadfuncionario.jsp">Cadastrar Usuarios</a>

                    </div>
                </li>
                <%}}catch(Exception f){
                    
                }%>
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
                        <a class="dropdown-item" href="relatorioaplicacao.jsp">Relatórios Aplicações</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link active" href="logout.jsp">Sair</a>
                </li>
            </div>
        </div>
    </nav>
</head>
</html>
