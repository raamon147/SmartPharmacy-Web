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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

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

    public String setOrderWCpf(ArrayList<String> cart, ArrayList<Integer> cartQtd, float total, String cpf, ArrayList<Float> desconto) throws SQLException {
        String sql = "";
        PreparedStatement ps = null;
        Connection con = Conexao.getConexao();
        String res = "";
        try {
            con.setAutoCommit(false);
            long value = System.currentTimeMillis();
            String sValue = String.valueOf(value);
            int totalitem = 0;

            for (int i = 0; i < cartQtd.size(); i++) {
                sql = "select qtd_prod from produto where cod_prod = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, cart.get(i));
                ResultSet re = ps.executeQuery();
                if (re.first()) {
                    if (re.getInt("qtd_prod") < cartQtd.get(i)) {
                        res = "ult";
                    } else {
                        for (int j = 0; j < cart.size(); j++) {
                            sql = "select nome_prod,preco_prod,cod_prod from produto Where cod_prod = ?";
                            ps = con.prepareStatement(sql);
                            ps.setString(1, cart.get(j));

                            ResultSet rs = ps.executeQuery();
                            Produto prod = new Produto();
                            if (rs.first()) {
                                prod.setCod_prod(rs.getString("cod_prod"));
                                prod.setNome_prod(rs.getString("nome_prod"));
                                prod.setPreco_prod(rs.getFloat("preco_prod"));

                                sql = "insert into produtos_compra(cod_prod,nome_produto,qtd_produto,total_produto,codigo_carrinho,data_compra) values (?,?,?,?,?,now())";
                                ps = con.prepareStatement(sql);
                                ps.setString(1, prod.getCod_prod());
                                ps.setString(2, prod.getNome_prod());
                                ps.setInt(3, cartQtd.get(j));
                                ps.setFloat(4, (prod.getPreco_prod() * cartQtd.get(j)));
                                ps.setString(5, sValue);

                                totalitem += cartQtd.get(j);

                                ps.execute();
                            }
                        }
                        String sqln = "insert into compra(codigo_carrinho,total_compra,cpf_comprador,data_compra,qtd_total_item) values(?,?,?,now(),?)";
                        PreparedStatement ps2 = con.prepareStatement(sqln);
                        ps2.setString(1, sValue);
                        ps2.setFloat(2, total);
                        ps2.setString(3, cpf);
                        ps2.setInt(4, totalitem);

                        ps2.execute();

                        for (int n = 0; n < cart.size(); n++) {
                            String sqt = "update produto set qtd_prod = (qtd_prod - ?) where cod_prod = ?";
                            PreparedStatement ps4 = con.prepareStatement(sqt);
                            ps4.setInt(1, cartQtd.get(n));
                            ps4.setString(2, cart.get(n));

                            ps4.execute();

                        }

                        int tArre = (int) Math.floor(total);


                        if (!desconto.isEmpty()) {
                            for (int t = 0; t < desconto.size(); t++) {
                                String n = "update cliente set c_qtdpontos = c_qtdpontos + ? where cpf = ?";
                                PreparedStatement ps5 = con.prepareStatement(n);
                                int de = (int) Math.floor(desconto.get(t));
                                ps5.setInt(1, (tArre - de));
                                ps5.setString(2, cpf);

                                ps5.execute();

                            }
                        } else {
                            String sqn = "update cliente set c_qtdpontos = c_qtdpontos + ? where cpf = ?";
                            PreparedStatement ps3 = con.prepareStatement(sqn);
                            ps3.setInt(1, tArre);
                            ps3.setString(2, cpf);

                            ps3.execute();
                        }

                        res = sValue;
                    }
                }
            }

            con.commit();

        } catch (Exception e) {
            e.printStackTrace();
            con.rollback();
            res = null;
        } finally {
            con.setAutoCommit(true);
        }

        return res;
    }

    public String setOrder(ArrayList<String> cart, ArrayList<Integer> cartQtd, float total) throws SQLException {
        String sql = "";
        PreparedStatement ps = null;
        Connection con = Conexao.getConexao();
        String res = "";
        try {
            con.setAutoCommit(false);
            long value = System.currentTimeMillis();
            String sValue = String.valueOf(value);
            int totalitem = 0;

            for (int i = 0; i < cartQtd.size(); i++) {
                sql = "select qtd_prod from produto where cod_prod = ?";
                ps = con.prepareStatement(sql);
                ps.setString(1, cart.get(i));
                ResultSet re = ps.executeQuery();
                if (re.first()) {
                    if (re.getInt("qtd_prod") < cartQtd.get(i)) {
                        res = "ult";
                    } else {
                        for (int n = 0; n < cart.size(); n++) {
                            sql = "select nome_prod,preco_prod,cod_prod from produto Where cod_prod = ?";
                            ps = con.prepareStatement(sql);
                            ps.setString(1, cart.get(n));

                            ResultSet rs = ps.executeQuery();
                            Produto prod = new Produto();
                            if (rs.first()) {
                                prod.setCod_prod(rs.getString("cod_prod"));
                                prod.setNome_prod(rs.getString("nome_prod"));
                                prod.setPreco_prod(rs.getFloat("preco_prod"));

                                sql = "insert into produtos_compra(cod_prod,nome_produto,qtd_produto,total_produto,codigo_carrinho,data_compra) values (?,?,?,?,?,now())";
                                ps = con.prepareStatement(sql);
                                ps.setString(1, prod.getCod_prod());
                                ps.setString(2, prod.getNome_prod());
                                ps.setInt(3, cartQtd.get(n));
                                ps.setFloat(4, (prod.getPreco_prod() * cartQtd.get(n)));
                                ps.setString(5, sValue);

                                totalitem += cartQtd.get(n);

                                ps.execute();
                            }
                        }
                        String sqln = "insert into compra(codigo_carrinho,total_compra,data_compra,qtd_total_item) values(?,?,now(),?)";
                        PreparedStatement ps2 = con.prepareStatement(sqln);
                        ps2.setString(1, sValue);
                        ps2.setFloat(2, total);
                        ps2.setInt(3, totalitem);

                        ps2.execute();

                        for (int n = 0; n < cart.size(); n++) {
                            String sqt = "update produto set qtd_prod = (qtd_prod - ?) where cod_prod = ?";
                            PreparedStatement ps4 = con.prepareStatement(sqt);
                            ps4.setInt(1, cartQtd.get(n));
                            ps4.setString(2, cart.get(n));

                            ps4.execute();

                        }

                        res = sValue;
                    }
                }
            }

            con.commit();

        } catch (Exception e) {
            e.printStackTrace();
            con.rollback();
            res = null;
            return res;
        } finally {
            con.setAutoCommit(true);
        }
        return res;
    }

}
