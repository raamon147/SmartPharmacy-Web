
package DAO;

import Classes.Conexao;
import Classes.Aplicacao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AplicacaoDAO {
    
      public String inserirAplicacao(String cpf, String nome, String nascimento,String endereco, String tipo,String medicamento,String data,int id) {

        try {
            Connection conn = Conexao.getConexao();
            String inserir = "INSERT INTO aplicacao (cpf, nome, nascimento, endereco, tipo, medicamento, data, id) VALUES (?, ?, ?, ?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(inserir);
            conn.prepareStatement(inserir);
            ps.setString(1, cpf);
            ps.setString(2, nome);
            ps.setString(3, nascimento);
            ps.setString(4, endereco);
            ps.setString(5, tipo);
            ps.setString(6, medicamento);
            ps.setString(7, data);
            ps.setInt(8, id);
            ps.executeUpdate();
            return "true";
        } catch (SQLException e) {
            return "false";
        }

    }
      
      public Aplicacao consultaAplicacao() {

        Aplicacao a = new Aplicacao();

        try {
            Connection con = Conexao.getConexao();
            String sql = "SELECT * FROM aplicacao";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                a.setCpf(rs.getString("cpf"));
                a.setData(rs.getString("data"));
                a.setNascimento(rs.getString("nascimento"));
                a.setEndereco(rs.getString("endereco"));
                a.setNome(rs.getString("nome"));
                a.setId(rs.getInt("id"));
                a.setTipo(rs.getString("tipo"));
                a.setMedicamento(rs.getString("medicamento"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return a;
    }
      public ResultSet buscarapp() {
        try {
            Connection conn = Conexao.getConexao();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM aplicacao");
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }
      
            public ResultSet buscarappcodigo(int codigo) {
        try {
            Connection conn = Conexao.getConexao();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM aplicacao WHERE id = ?");
            ps.setInt(1, codigo);
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }
}
