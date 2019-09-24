package DAO;

import Classes.Conexao;
import Classes.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProdutoDAO {

    public String insereProduto(Produto produto) {
        String res = "";

        try {
            Connection con = Conexao.getConexao();
            String cons = "SELECT * FROM produto where cod_prod = ?";
            PreparedStatement ps = con.prepareStatement(cons);
            ps.setString(1, produto.getCod_prod());
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                res = "exist";
            } else {
                String sql = "INSERT INTO produto (cod_prod,nome_prod,qtd_prod,preco_prod,fabr_prod,pr_ativo,dos_prod,status_prod) VALUES (?,?,?,?,?,?,?,'DISPONIVEL')";
                ps = con.prepareStatement(sql);
                ps.setString(1, produto.getCod_prod());
                ps.setString(2, produto.getNome_prod());
                ps.setInt(3, produto.getQtd_prod());
                ps.setFloat(4, produto.getPreco_prod());
                ps.setString(5, produto.getFabr_prod());
                ps.setString(6, produto.getPr_ativo());
                ps.setString(7, produto.getDos_prod());

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

    public Produto consultaProd(String cod) {

        Produto prod = new Produto();

        try {
            Connection con = Conexao.getConexao();
            String sql = "SELECT * FROM produto WHERE cod_prod = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cod);
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                prod.setCod_prod(cod);
                prod.setNome_prod(rs.getString("nome_prod"));
                prod.setQtd_prod(rs.getInt("qtd_prod"));
                prod.setPreco_prod(rs.getFloat("preco_prod"));
                prod.setFabr_prod(rs.getString("fabr_prod"));
                prod.setPr_ativo(rs.getString("pr_ativo"));
                prod.setDos_prod(rs.getString("dos_prod"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return prod;
    }
    
    public String excluirProd(String cod){
        String res ="";
        
        try{
            Connection con = Conexao.getConexao();
            String sql = "DELETE FROM produto WHERE cod_prod = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cod);
            
            if(ps.execute()){
                res = "ok";
            } else {
                res = "erro";
            }
            
        }catch(Exception e){
            res = e.toString();
        }
        
        return res;
    }
    
    public String alterarProd(Produto prod){
        String res = "";
        try{
            Connection con = Conexao.getConexao();
            String sql = "UPDATE produto SET nome_prod = ?, qtd_prod = ?, preco_prod = ?, fabr_prod = ?, pr_ativo = ?, dos_prod = ? WHERE cod_prod = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, prod.getNome_prod());
            ps.setInt(2, prod.getQtd_prod());
            ps.setFloat(3, prod.getPreco_prod());
            ps.setString(4, prod.getFabr_prod());
            ps.setString(5, prod.getPr_ativo());
            ps.setString(6, prod.getDos_prod());
            ps.setString(7, prod.getCod_prod());
            
            if(ps.execute()){
                res = "okalt";
            } else {
                res = "erro";
            }
            
            
            return res;
        }catch(Exception e){
            res = e.toString();
            return res;
        }
    }
    
    public String alterarProdFun(Produto prod){
        String res = "";
        try{
            Connection con = Conexao.getConexao();
            String sql = "UPDATE produto SET qtd_prod = ? WHERE cod_prod = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, prod.getQtd_prod());
            ps.setString(2, prod.getCod_prod());
            
            if(ps.execute()){
                res = "okalt";
            } else {
                res = "erro";
            }
            
            
            return res;
        }catch(Exception e){
            res = e.toString();
            return res;
        }
    }
}