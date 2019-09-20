<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Classes.Connectta"%>
<%@page import="Classes.Produto"%>

<%!
    private Connection conn;
    Connectta c = new Connectta();

    public ResultSet buscartexto(String produto) {
        try {
            conn = c.conectar();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM produto WHERE nome_prod like ?");
            ps.setString(1, "%" + produto + "%");
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }


%>
