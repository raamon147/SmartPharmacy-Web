
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Classes.Connectta;


public class ClienteDAO {
    
    Connectta c = new Connectta();
      public String inserirCliente(String nome, String end, String dtnasc,String cpf, String tel) {

        try {
            Connection conn = c.conectar();
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
