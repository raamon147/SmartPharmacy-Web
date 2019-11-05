<%@page import="Classes.Cliente"%>
<%@page import="DAO.ClienteDAO"%>
<%
    Cliente c = new Cliente();
    String req = request.getParameter("func");
    String res = "";

    String cpf = request.getParameter("cadCPF");
    String nome = request.getParameter("cadNome");
    String end = request.getParameter("cadEnd");
    String tel = request.getParameter("cadTel");
    String data = request.getParameter("cadData");

    c.setCpf(cpf);
    c.setNome(nome);
    c.setEnd(end);
    c.setDtnasc(data);
    c.setTel(tel);

    if (req != null) {
        if (req.equalsIgnoreCase("alterar")) {
            res = new ClienteDAO().alterarCli(c);
            response.sendRedirect("listcliente.jsp?rest=" + res);
        } else if (req.equalsIgnoreCase("excluir")) {
            res = new ClienteDAO().excluirCli(cpf);
            response.sendRedirect("listcliente.jsp?rest=" + res);
        }
    }

%>