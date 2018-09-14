package com.util;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

//专门用来调用存储过程的工具类
public class SQLUtil {

	
	private Connection conn;
	
	public SQLUtil(){
		conn = ConnOracle.getConnection();
	}
	
	//调用存储过程
	public  void callProcedure(){
		//三.建立通道
		String sql = "{call proc_increase_salary(?,?)}";
		CallableStatement cstmt = null;
		
		try {
			cstmt = conn.prepareCall(sql);
			cstmt.setInt(1, 10);
			
			//设置输出参数
			cstmt.registerOutParameter(2,Types.VARCHAR);
			
			//四.执行
			cstmt.executeUpdate();
			
			
			String msg = cstmt.getString(2);
			System.out.println("存储过程成功");
			System.out.println(msg);
		} catch (SQLException e) {
			System.out.println("调用存储过程失败");
			e.printStackTrace();
		}finally{
			//五.关闭
			ConnOracle.closeConnection(null, cstmt, conn);
			
			
		}
		
		
	}
	
	//一个工具方法: 可以执行除DQL以外的任何SQL语句
	public int executeExceptDQL(String sql) throws Exception{
		int count;
		//三.建立通道
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
			
			//四.执行
			count = stmt.executeUpdate(sql);//执行 除了dql以外所有的语句,  dml  或ddl
			//如果执行的是dml 返回值是 受影响的行数   执行ddl 返回的是 0
			System.out.println("count=" + count);
			System.out.println("执行语句成功");
			
		} catch (SQLException e) {
			System.out.println("执行语句失败");
			e.printStackTrace();
			throw new Exception("执行失败");
		}finally{
			//五.关闭
			ConnOracle.closeConnection(null, stmt, conn);
		}
		
		return count;
	}
	
	
}