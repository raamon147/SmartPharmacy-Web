package Classes;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    
    public static Connection con;
    public static String url,user,pass;
    
    public static Connection getConexao() {
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://localhost:3306/farmacia?allowPublicKeyRetrieval=true&useSSL=false";
            user = "root";
            pass = "root";
            con = DriverManager.getConnection(url, user, pass);
            
            return con;
            
        }catch(Exception e){
            System.out.println("Erro: "+e.toString());
            return null;
        }
    }
}
