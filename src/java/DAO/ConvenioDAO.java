package DAO;

import Classes.Conexao;
import Classes.Convenio;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class ConvenioDAO {
    
    public String cadConvenio(Convenio conv){
        String res ="";
        try{
            
            Connection con = Conexao.getConexao();
            String sql = "INSERT INTO convenio (nome_conv,cod_conv,desc_med,desc_perf) VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,conv.getNome_conv());
            ps.setString(2, conv.getCod_conv());
            ps.setFloat(3, conv.getDesc_med());
            ps.setFloat(4, conv.getDesc_perf());
            
            ps.execute();
            
            res = "ok";
            
            return res;
        }catch(Exception e){
            res = e.toString();
            return res;
        }
    }
}
