<%@page import="DAO.UsuarioDAO"%>
<%
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    
    if(cpf != null){
        String res = new UsuarioDAO().newPassByCPF(cpf,senha);
        
        response.sendRedirect("newSenha.jsp?res="+res);
    } else if(email != null){
        String res = new UsuarioDAO().newPassByEmail(email, senha);
        response.sendRedirect("newSenha.jsp?res="+res);
    }
    
    

%>