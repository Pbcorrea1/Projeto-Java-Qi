package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnect {
	
	

    public static Connection getConnection(){
    	
    	Connection conn = null;
    	
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Carrega o driver JDBC do MySQL
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cadastro", "root", "");
        } catch (ClassNotFoundException e) {
        	System.out.println("Erro:" + e.getMessage());       
        }catch(SQLException e) {
        	System.out.println("Erro" + e.getMessage());
        }
        return conn;
    }
}
