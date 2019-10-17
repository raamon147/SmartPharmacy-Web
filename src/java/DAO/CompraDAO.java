/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Classes.Compra;
import Classes.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author caion
 */
public class CompraDAO {
    
    public ArrayList<Compra> getAll(String codigo){
        ArrayList<Compra> lista = new ArrayList<>();
        try{
            Connection con = Conexao.getConexao();
            String sql = "SELECT c.codigo_carrinho,c.qtd_total_item,c.total_compra,c.cpf_comprador,c.data_compra,"
                    + "pc.cod_prod,pc.nome_produto,pc.qtd_produto,pc.total_produto,p.preco_prod FROM compra c inner join produtos_compra pc on"
                    + " c.codigo_carrinho = pc.codigo_carrinho inner join produto p on pc.cod_prod = p.cod_prod where c.codigo_carrinho = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,codigo);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Compra compra = new Compra();
                compra.setCodigo(rs.getString("codigo_carrinho"));
                compra.setQtdTotal(rs.getInt("qtd_total_item"));
                compra.setTotal(rs.getFloat("total_compra"));
                compra.setCpf(rs.getString("cpf_comprador"));
                compra.setDataCompra(String.valueOf(rs.getDate("data_compra")));
                compra.setCod_prod(rs.getString("cod_prod"));
                compra.setNome_prod(rs.getString("nome_produto"));
                compra.setQtdProd(rs.getInt("qtd_produto"));
                compra.setTotalPrecoProd(rs.getFloat("total_produto"));
                compra.setPrecoProd(rs.getFloat("preco_prod"));
                
                lista.add(compra);
                
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
        return lista;
    }
    
    public ArrayList<Compra> getList(){
        ArrayList<Compra> lista = new ArrayList<>();
        try{
            Connection con = Conexao.getConexao();
            String sql = "select codigo_carrinho, data_compra,total_compra from compra order by data_compra desc";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Compra c = new Compra();
                c.setCodigo(rs.getString("codigo_carrinho"));
                c.setDataCompra(rs.getString("data_compra"));
                c.setTotal(rs.getFloat("total_compra"));
                
                lista.add(c);
            }
            
        }catch(Exception e){
            return null;
        }
        return lista;
    }
    
}
