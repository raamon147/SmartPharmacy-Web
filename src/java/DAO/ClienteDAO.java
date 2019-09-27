
package DAO;

import Classes.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ClienteDAO {
      public String inserirCliente(String nome, String end, String dtnasc,String cpf, String tel) {

        try {
            Connection conn = Conexao.getConexao();
            String inserir = "INSERT INTO cliente (cpf, c_nome, c_end, c_tel, c_dtnasc) VALUES (?, ?, ?, ?,?)";
            PreparedStatement ps = conn.prepareStatement(inserir);
            conn.prepareStatement(inserir);
            ps.setString(1, cpf);
            ps.setString(2, nome);
            ps.setString(3, end);
            ps.setString(4, tel);
            ps.setString(5, dtnasc);
            ps.executeUpdate();
            return "true";
        } catch (SQLException e) {
            return "false";
        }

    }
}
