<%@page import="DAO.ConvenioDAO"%>
<%
    String nome = request.getParameter("nome");
    String res = "";

    if (nome != null) {

        res = new ConvenioDAO().getConvenio(nome);

        if (res.equals("nexist")) {
            response.sendRedirect("carrinho.jsp?convenio=nexist");
        } else if(res == null){
            response.sendRedirect("carrinho.jsp?convenio=null");
        } else{
            response.sendRedirect("carrinho.jsp?convenio="+res);
        }

    }

%>