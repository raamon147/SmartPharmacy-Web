<%@page import="DAO.UsuarioDAO"%>
<%@page import="Classes.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<link href="CSS/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="CSS/login.css" rel="stylesheet">
<script src="JS/bootstrap.min.js"></script>
<script src="JS/jquery.min.js"></script>


<div class="wrapper fadeInDown">
    <div id="formContent">

        <div class="fadeIn first" style="font-size: 40px; margin: 5px;"><br/>
            <strong><font COLOR="red">Smart</strong>Pharmacy<br/>
        </div><br/>

        <form method="post" action="login.jsp">
            <input type="text" id="login" class="fadeIn second" name="login" placeholder="Usuario">
            <input type="password" id="password" class="fadeIn third" name="senha" placeholder="Senha">
            <input type="submit" class="fadeIn fourth" value="Acessar" name="btnlogin">

        </form>                    

        <%
            String usuario = request.getParameter("login");
            String senha = request.getParameter("senha");
            if (usuario != null && senha != null && !usuario.isEmpty() && !senha.isEmpty()) {
                Usuario user = new Usuario();
                user.setUsuario(usuario);
                user.setSenha(senha);

                String resp = new UsuarioDAO().logar(user);
                String key ="";
                if (resp.equalsIgnoreCase("conectado")) {
                    
                    key = new UsuarioDAO().getKey(user);
                    session.setAttribute("usuario", usuario);
                    session.setAttribute("senha", senha);
                    session.setAttribute("key", key);
                    response.sendRedirect("index.jsp");
                } else if(resp.equalsIgnoreCase("nconectado")){
                    out.println("Usuario não encontrado!");
                } else {
                    out.println(resp);
                }

            } else if ((String) session.getAttribute("usuario") != null) {
                response.sendRedirect("index.jsp");

            }


        %>
        <div id="formFooter">
            <a class="underlineHover" href="newSenha.jsp">Esqueci a senha</a>
        </div>

    </div>
</div>
