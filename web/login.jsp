<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="login.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


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
if(usuario != null && senha!= null && !usuario.isEmpty() && !senha.isEmpty()){
    session.setAttribute("usuario", usuario);
    session.setAttribute("senha", senha);
    response.sendRedirect("index.jsp");
}else if((String)session.getAttribute("usuario") != null){
    response.sendRedirect("index.jsp");
    
}


%>
        <div id="formFooter">
            <a class="underlineHover" href="">Esqueci a senha</a>
        </div>

    </div>
</div>