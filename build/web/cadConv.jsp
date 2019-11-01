<%@page import="util.Acentuacao"%>
<%@page import="DAO.ConvenioDAO"%>
<%@page import="Classes.Convenio"%>
<%
    String nome = request.getParameter("nomeConv");
    String descM = request.getParameter("descMed");

    Acentuacao acentua = new Acentuacao();

    if (nome != null && descM != null) {
        nome = acentua.removeAcento(nome);

        Convenio con = new Convenio();
        con.setNome_conv(nome);
        con.setDesc(Integer.parseInt(descM));

        String res = "";

        res = new ConvenioDAO().cadConvenio(con);

        response.sendRedirect("cadconvenio.jsp?res=" + res);
    }


%>