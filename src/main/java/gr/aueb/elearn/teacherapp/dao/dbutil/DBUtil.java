package gr.aueb.elearn.teacherapp.dao.dbutil;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {
	
	private static Connection conn;
	
	/*
	 *  No instances will be available
	 */
	private DBUtil() {}
	
	public static Connection openConnection() throws SQLException  {
		// Load properties from application.properties
        Properties props = new Properties();
        try (InputStream input = DBUtil.class.getClassLoader().getResourceAsStream("application.properties")) {
            if (input == null) {
                throw new IOException("Sorry, unable to find application.properties");
            }
            // Load the properties file
            props.load(input);
        } catch (IOException ex) {
            ex.printStackTrace();
            throw new SQLException("Failed to load database configuration from application.properties", ex);
        }

        // Get database connection details from properties file
        String url = props.getProperty("db.url");
        String username = props.getProperty("db.username");
        String password = props.getProperty("db.password");

		
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		conn =  DriverManager.getConnection(url, username, password);
		
		return conn;
	}
	
	public static void closeConnection() throws SQLException {
		try {
			if (conn != null) conn.close();	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeRS(ResultSet rs) throws SQLException {
		try {
			if (rs != null) rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeStmt(PreparedStatement stmt) throws SQLException {
		try {
			if (stmt != null) stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
}
