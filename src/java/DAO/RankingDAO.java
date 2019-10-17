package DAO;

import Classes.Conexao;
import Classes.RankingVenda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RankingDAO {
    
    public ArrayList<RankingVenda> getRanking(){
        ArrayList<RankingVenda> lista = new ArrayList<>();
        try{
            Connection con = Conexao.getConexao();
            String sql = "select nome_produto,preco_prod,sum(qtd_produto) qtd"
                    + " from produtos_compra inner join produto on produtos_compra.cod_prod = produto.cod_prod group by nome_produto order by qtd_produto asc";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                RankingVenda rv = new RankingVenda();
                rv.setNome(rs.getString("nome_produto"));
                rv.setQtd(rs.getInt("qtd"));
                rv.setPreco(rs.getFloat("preco_prod"));
                
                lista.add(rv);
            }
            
        }catch(Exception e){
            return null;
        }
        return lista;
    }
}
