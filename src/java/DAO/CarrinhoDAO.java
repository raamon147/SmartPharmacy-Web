/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Classes.Conexao;
import Classes.ItemCarrinho;
import Classes.Produto;
import Classes.Connectta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author rssobreira
 */
public class CarrinhoDAO {

    private Connection conne;
    Connectta cone = new Connectta();

    public String insereProduto(ItemCarrinho produto) {
        String res = "";

        try {
            Connection con = Conexao.getConexao();
            String cons = "SELECT * FROM produto where cod_prod = ?";
            PreparedStatement ps = con.prepareStatement(cons);
            ps.setInt(1, produto.getCodprod());
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                res = "exist";
                String sql = "INSERT INTO carrinhocompras (codprod,prod,qtd,valor) VALUES (?,?,?,?)";

                ps = con.prepareStatement(sql);
                ps.setInt(1, produto.getCodprod());
                ps.setString(2, rs.getString("nome_prod"));
                ps.setInt(3, 1);
                ps.setDouble(4, rs.getDouble("preco_prod"));

                ps.execute();

                ps.close();
                con.close();

                res = "ok";
            }
        } catch (Exception e) {
            res = "Erro ao cadastrar produto: \n" + e.toString();
        }

        return res;
    }

    public String deletaProduto(ItemCarrinho produto) {
        String res = "";

        try {
            Connection con = Conexao.getConexao();
            String sql = "DELETE FROM carrinhocompras WHERE codprod = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps = con.prepareStatement(sql);
            ps.setInt(1, produto.getCodprod());

            ps.setInt(1, produto.getCodprod());

            ps.execute();

            ps.close();
            con.close();

            res = "ok";

        } catch (Exception e) {
            res = "Erro ao cadastrar produto: \n" + e.toString();
        }

        return res;
    }

    public ItemCarrinho consultaProd() {

        ItemCarrinho item = new ItemCarrinho();

        try {
            Connection con = Conexao.getConexao();
            String sql = "SELECT * FROM carrinhocompras";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                item.setCodprod(rs.getInt("codprod"));
                item.setProd(rs.getString("prod"));
                item.setQtd(rs.getInt("qtd"));
                item.setValor(rs.getDouble("valor"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return item;
    }

    public ResultSet carrinholista() {
        try {
            conne = cone.conectar();
            PreparedStatement ps = conne.prepareStatement("SELECT * FROM carrinhocompras");
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }

    public ResultSet valortotal() {
        try {
            conne = cone.conectar();
            PreparedStatement ps = conne.prepareStatement("SELECT SUM(valor) AS total FROM carrinhocompras");
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }
}
