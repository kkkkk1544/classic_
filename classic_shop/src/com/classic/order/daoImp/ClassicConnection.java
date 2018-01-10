package com.classic.order.daoImp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClassicConnection {
	private static String className="oracle.jdbc.driver.OracleDriver";
	static private String url="jdbc:oracle:thin:@localhost:1521:xe";
	static private String user="classic_dba";
	static private String password="dba1234";
	public static Connection getConnection() throws Exception{
		Connection conn=null;
		Class.forName(className);
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
	public static void main(String[] args) {
		try {
			System.out.println(getConnection());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		if(rs!=null) {
			try{
				rs.close();
			} catch (SQLException e) {e.printStackTrace();}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {e.printStackTrace();}
		}
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {e.printStackTrace();}
		}
	}	
}
