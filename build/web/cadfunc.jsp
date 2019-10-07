<%@page import="DAO.UsuarioDAO" %>
<%@page import="Classes.Usuario" %>
<%
    try {
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String tipo = request.getParameter("tipo");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        Usuario usuario = new Usuario();
        usuario.setCodigo(Integer.parseInt(tipo));
        usuario.setCpf(cpf);
        usuario.setEmail(email);
        usuario.setUsuario(login);
        usuario.setSenha(senha);

        String stts = new UsuarioDAO().insereUsuario(usuario);

        response.sendRedirect("cadfuncionario.jsp?status=" + stts);
    } catch (Exception e) {
        out.println("Erro "+ e.toString());
    }

%>
