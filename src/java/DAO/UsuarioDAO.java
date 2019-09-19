/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Classes.Conexao;
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
            ext = "Erro ao logar "+e.toString();
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
    
}
