package DAO;

import Classes.Cliente;
import Classes.Conexao;
import Classes.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClienteDAO {

    public String inserirCliente(String nome, String end, String dtnasc, String cpf, String tel) {

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

    public int getPontosCpf(String cpf) {
        int pontos = 0;
        try {
            Connection con = Conexao.getConexao();
            String sql = "select c_qtdpontos from cliente where cpf = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                pontos = rs.getInt("c_qtdpontos");
            } else {
                pontos = -2;
            }
        } catch (Exception e) {
            e.printStackTrace();
            pontos = -1;
        }
        return pontos;
    }

    public ArrayList<Cliente> getCliente() {
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        try {
            Connection conn = Conexao.getConexao();
            String sql = "select cpf,c_nome,c_end,c_tel,c_dtnasc,c_qtdpontos from cliente";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cliente c = new Cliente();
                c.setCpf(rs.getString("cpf"));
                c.setNome(rs.getString("c_nome"));
                c.setEnd(rs.getString("c_end"));
                c.setDtnasc(rs.getString("c_dtnasc"));
                c.setTel(rs.getString("c_tel"));
                c.setQtdPontos(rs.getInt("c_qtdpontos"));

                lista.add(c);
            }

            ps.close();
            rs.close();

            return lista;

        } catch (Exception e) {
            return null;
        }
    }

    public Cliente consultaCli(String cod) {

        Cliente c = new Cliente();

        try {
            Connection con = Conexao.getConexao();
            String sql = "SELECT * FROM cliente WHERE cpf = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cod);
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                c.setCpf(cod);
                c.setNome(rs.getString("c_nome"));
                c.setEnd(rs.getString("c_end"));
                c.setDtnasc(rs.getString("c_dtnasc"));
                c.setTel(rs.getString("c_tel"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return c;
    }

    public String excluirCli(String cod) {
        String res = "";

        try {
            Connection con = Conexao.getConexao();
            String sql = "DELETE FROM cliente WHERE cpf = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cod);

            ps.execute();

            res = "ok";

            return res;

        } catch (Exception e) {
            res = e.toString();
            return res;
        }

    }
    
    public Double getPcliente(String cpf){
        double ponto = 0;
        try{
            Connection con = Conexao.getConexao();
            String sql = "select c_qtdpontos from cliente where cpf = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                ponto = rs.getDouble("c_qtdpontos");
                
                return ponto;
            } else {
                return null;
            }
            
        }catch(Exception e){
            return null;
        }
        
    }

    public String alterarCli(Cliente c) {
        String res = "";
        try {
            Connection con = Conexao.getConexao();
            String sql = "UPDATE cliente SET c_nome = ?, c_end = ?, c_tel = ?, c_dtnasc = ? WHERE cpf = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, c.getNome());
            ps.setString(2, c.getEnd());
            ps.setString(3, c.getTel());
            ps.setString(4, c.getDtnasc());
            ps.setString(5, c.getCpf());
            ps.execute();

            res = "okalt";

            return res;
        } catch (Exception e) {
            res = e.toString();
            return res;
        }
    }
}
