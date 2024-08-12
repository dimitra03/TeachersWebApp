package gr.aueb.elearn.teacherapp.dao.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	
	private static Connection conn;
	
	/*
	 *  No instances will be available
	 */
	private DBUtil() {}
	
	public static Connection openConnection() throws SQLException  {
		String url = "jdbc:mysql://localhost:3306/teachersDB?serverTimezone=UTC&useSSL=false";
		String username = "dimitratel";
		String password = "2003";
		
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
