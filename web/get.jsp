<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Classes.Conexao"%>
<%@page import="java.sql.Connection"%>
<%
    String sql = "";
    Connection conn;
    String valores = "";
    try {
        conn = Conexao.getConexao();
        Statement stm = conn.createStatement();
        sql = "SELECT nome_prod FROM produto Where nome_prod like'%'";
        ResultSet rs = stm.executeQuery(sql);

        while (rs.next()) {
            String nome = rs.getString("nome_prod").toString();
            out.println("" + nome + "\n");
            valores += nome + "\n";
        }
        rs.close();
        stm.close();

    } catch (SQLException sqle) {
        System.out.println("Erro de SQL:" + sqle.getMessage() + " - " + sql);
    }
%>        