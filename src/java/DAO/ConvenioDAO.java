package DAO;

import Classes.Conexao;
import Classes.Convenio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ConvenioDAO {
    
    public String cadConvenio(Convenio conv){
        String res ="";
        try{
            
            Connection con = Conexao.getConexao();
            String sql = "insert into convenio (nome_conv,desc_conv) values (?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,conv.getNome_conv());
            ps.setInt(2, conv.getDesc());
            
            ps.execute();
            
            res = "ok";
            
            return res;
        }catch(Exception e){
            res = e.toString();
            return res;
        }
    }
    
    public String getConvenio(String nome){
        String res ="";
        try{
            Connection con = Conexao.getConexao();
            String sql = "SELECT * from convenio where nome_conv = ? ";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nome);
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                res = rs.getString("desc_conv");
            } else {
                res = "nexist";
            }
            return res;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    
     
    
        
        public ResultSet getNomeConvenio(){
        try {
            Connection conn = Conexao.getConexao();
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM convenio");
            ResultSet rs;
            rs = ps.executeQuery();
            return rs;

        } catch (Exception e) {
            return null;
        }
    }
}
