/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author rssobreira
 */
public class Connectta {

    private Connection conn;

    public Connection conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/farmacia?allowPublicKeyRetrieval=true&useSSL=false";
                            String username = "root";
                            String password = "root";
                            Connection conn = DriverManager.getConnection(url, username, password);
            return conn;
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Erro ao conectar: " + e.getMessage());
            return null;
        }
    }
    
    public ResultSet buscartexto(String produto) {
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            String url = "jdbc:mysql://localhost:3306/farmacia?allowPublicKeyRetrieval=true&useSSL=false";
                            String username = "root";
                            String password = "root";
                            Connection conn = DriverManager.getConnection(url, username, password);
                            PreparedStatement ps = conn.prepareStatement("select * from produto where produto like ?");
                            ps.setString(1, "%" + produto + "%");
                            ResultSet rs;
                            rs = ps.executeQuery();
                            return rs;
                        } catch (Exception e) {
                            return null;
                        }
    }
    
}