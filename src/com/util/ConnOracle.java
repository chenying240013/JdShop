package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 公司:蓝桥软件学院
 * 作者:cy
 
 * 功能:连接数据库的工具类
 */
public class ConnOracle {

	public static Connection getConnection(){
		Connection conn = null;
		
		String className = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "scott";
		String password = "tiger";
		//1.加载驱动
		try {
			Class.forName(className);
			
		
		} catch (ClassNotFoundException e) {
			System.out.println("驱动类没有找到");
			e.printStackTrace();
		}
		
		//2.创建连接
		try {
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("连接数据库失败");
			e.printStackTrace();
		}
		

		
		
		return conn;
	}
	
	public static void closeConnection(ResultSet rs,Statement stmt,Connection conn){
		
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		
		if(stmt!=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				System.out.println("关闭通道失败");
				e.printStackTrace();
			}
		}
		
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("关闭数据库连接失败");
				e.printStackTrace();
			}
		}
		
	}
	
	public static void main(String[] args) {
		System.out.println(ConnOracle.getConnection());
	}
}
