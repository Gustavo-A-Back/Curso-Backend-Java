package config;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.*;
import com.mysql.jdbc.Driver;
/**
 *
 * @author Aluno
 */ 
public class SistemaWebDb {
    public static Connection getconnection() throws ClassNotFoundException, SQLException{
        
        Connection connection =null;
        try{
            String nomeDriver= "com.mysql.jdbc.Driver";
            Class.forName(nomeDriver);
            
            String localServidor = "localhost";
            String nomeDoBanco = "sistema_web";
            String url = "jdbc:mysql://" + localServidor + "/" + nomeDoBanco;
            String user = "root";
            String password = "";
            
            
            connection = DriverManager.getConnection(url, user, password);
            
        } catch (Exception ex){
            System.out.println("Ocorreu um errp na conexão com o banco de dados");
            ex.printStackTrace();
        }
        
        return connection;
        
    }
    
}
