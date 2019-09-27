
package DAO;

import Classes.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class AplicacaoDAO {
    
      public String inserirAplicacao(String cpf, String nome, String nascimento,String endereco, String tipo,String medicamento,String data) {

        try {
            Connection conn = Conexao.getConexao();
            String inserir = "INSERT INTO aplicacao (cpf, nome, nascimento, endereco, tipo, medicamento, data) VALUES (?, ?, ?, ?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(inserir);
            conn.prepareStatement(inserir);
            ps.setString(1, cpf);
            ps.setString(2, nome);
            ps.setString(3, nascimento);
            ps.setString(4, endereco);
            ps.setString(5, tipo);
            ps.setString(6, medicamento);
            ps.setString(7, data);
            ps.executeUpdate();
            return "true";
        } catch (SQLException e) {
            return "false";
        }

    }
}
