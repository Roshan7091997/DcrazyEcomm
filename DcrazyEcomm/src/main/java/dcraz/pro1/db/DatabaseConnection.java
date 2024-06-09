package dcraz.pro1.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	
	private static Connection connection = null;
		public static Connection getConnection() throws ClassNotFoundException, SQLException{
	        if(connection == null){
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","Roshan@777");
	            System.out.print("connected");
	        }
	       return connection;
	    }
	}


