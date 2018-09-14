package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//Tomcat整合数据库连接池
public class ConnOracleTomcatDataSource {

	private static Context context;
	private static DataSource ds;

	static {

		// JNDI的资源池只需要创建一次就可以了 所以把这段代码放到静态初始化块中执行
		try {
			context = new InitialContext();// 创建JNDI资源池
			ds = (DataSource) context.lookup("java:/comp/env/jdbc/jd");// 根据资源名
																		// 找到对应的资源
																		// 该资源名为server.xml配置的资源名name
			System.out.println(ds);
		} catch (NamingException e) {

			e.printStackTrace();
		}
	}

	public static Connection getConnection() {

		Connection conn = null;

		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			System.out.println("创建数据库连接失败");
			e.printStackTrace();
		}
		return conn;
	}

	public static void closeConnection(ResultSet rs, Statement stmt,
			Connection conn) {

		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				System.out.println("关闭通道失败");
				e.printStackTrace();
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("关闭数据库连接失败");
				e.printStackTrace();
			}
		}

	}

	public static void main(String[] args) {
		System.out.println(ConnOracleTomcatDataSource.getConnection());
	}
}
