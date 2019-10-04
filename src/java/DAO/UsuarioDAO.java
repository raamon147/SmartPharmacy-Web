
package DAO;

import Classes.Conexao;
import Classes.Produto;
import Classes.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author lcdam
 */
public class UsuarioDAO {
    
    public String logar (Usuario usuario){
        String ext;
        try{
            Connection con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM login where usuario = ? and senha = ?");
            ps.setString(1,usuario.getUsuario());
            ps.setString(2, usuario.getSenha());
            
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                ext = "Conectado";
                //usuario.setCodigo(rs.getInt("codigo"));
            } else {
                ext = "nConectado";
            }
            
        }catch(Exception e){
            ext = "Erro ao logar "+e.getMessage();
        }
        
        return ext;
    }
    
    public String getKey(Usuario usuario){
        String key ="";
        try{
            Connection con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM login where usuario = ? and senha = ?");
            ps.setString(1,usuario.getUsuario());
            ps.setString(2, usuario.getSenha());
            
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                key = rs.getString("codigo");
                //usuario.setCodigo(rs.getInt("codigo"));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return key;
    }
    
        public String insereUsuario(Usuario usuario) {
        String res = "";

        try {
            Connection con = Conexao.getConexao();
            String cons = "SELECT * FROM login where cpf = ?";
            PreparedStatement ps = con.prepareStatement(cons);
            ps.setString(1, usuario.getCpf());
            ResultSet rs = ps.executeQuery();
            if (rs.first()) {
                res = "exist";
            } else {
                String sql = "INSERT INTO login (usuario,senha,cpf,email,codigo) VALUES (?,?,?,?,?)";
                ps = con.prepareStatement(sql);
                ps.setString(1, usuario.getUsuario());
                ps.setString(2, usuario.getSenha());
                ps.setString(3, usuario.getCpf());
                ps.setString(4, usuario.getEmail());
                ps.setInt(5, usuario.getCodigo());

                ps.execute();

                ps.close();
                con.close();

                res = "ok";
            }

        } catch (Exception e) {
            res = "exist";
        }

        return res;
    }
    
}
