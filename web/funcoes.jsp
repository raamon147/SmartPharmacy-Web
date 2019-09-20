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

    public String inserir(int codigo, String produto, double preco, String status, int id_categoria) {

        try {
            conn = c.conectar();
            String inserir = "INSERT INTO produto (codigo, produto, preco, status,id_categoria) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(inserir);
            conn.prepareStatement(inserir);
            ps.setInt(1, codigo);
            ps.setString(2, produto);
            ps.setDouble(3, preco);
            ps.setString(4, status);
            ps.setInt(5, id_categoria);
            ps.executeUpdate();
            return "true";
        } catch (SQLException e) {
            return "false";
        }

    }

%>
