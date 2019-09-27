/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Classes.Conexao;
import Classes.ItemCarrinho;
import Classes.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author rssobreira
 */
public class CarrinhoDAO {

    public ArrayList<Produto> getCart(ArrayList<String> cart, ArrayList<Integer> cartQtd) {

        String sql = "";
        PreparedStatement ps = null;

        try {
            Connection con = Conexao.getConexao();
            ArrayList<Produto> lista = new ArrayList<Produto>();
            for (int i = 0; i < cart.size(); i++) {
                sql = "Select * from produto WHERE cod_prod = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, String.valueOf(cart.get(i)));

                ResultSet rs = ps.executeQuery();
                Produto prod = new Produto();
                if (rs.first()) {
                    prod.setCod_prod(rs.getString("cod_prod"));
                    prod.setNome_prod(rs.getString("nome_prod"));
                    prod.setQtd_prod(Integer.parseInt(cartQtd.get(i).toString()));
                    prod.setPreco_prod(rs.getFloat("preco_prod"));
                }

                lista.add(lista.size(), prod);

            }
            return lista;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
