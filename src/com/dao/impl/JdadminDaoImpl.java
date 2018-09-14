package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.JdadminDao;
import com.util.ConnOracle;
import com.vo.Jdadmin;

public class JdadminDaoImpl implements JdadminDao {

	
	private Connection conn;
	
	public JdadminDaoImpl() {
		
	}


	@Override
	public int addUser(Jdadmin user) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		String sql = "insert into jdadmin(userid,username,passwords,iswork) values(seq_jdadmin.nextval,?,?,1)";
		PreparedStatement pstmt = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPasswords());

			// 四.执行并返回结果集
			count = pstmt.executeUpdate();// 执行dml 或 ddl语句的 返回受影响的行数
			if (count >= 1) {
				System.out.println("添加管理员成功!");
			} else {
				System.out.println("没有添加任何管理员!");
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("添加用户失败");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);

		}

		return count;
	}

	@Override
	public int deleteUser(Jdadmin user) throws Exception{
		conn = ConnOracle.getConnection();
		int count = 0;
		String sql = "delete from jdadmin where userid=?";
		PreparedStatement pstmt = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user.getUserid());

			// 四.执行并返回结果集
			count = pstmt.executeUpdate();// 执行dml 或 ddl语句的 返回受影响的行数
			if (count >= 1) {
				System.out.println("删除管理员成功!");
			} else {
				System.out.println("没有删除任何管理员!");
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("删除用户失败");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);

		}

		return count;
	}

	// 三.修改
	public int updateUser(Jdadmin user) throws Exception{
		conn = ConnOracle.getConnection();
		int count;
		String sql = "update jdadmin set username=?,passwords=? where userid=?";
		PreparedStatement pstmt = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPasswords());
			pstmt.setInt(3, user.getUserid());

			// 四.执行并返回结果集
			count = pstmt.executeUpdate();// 执行dml 或 ddl语句的 返回受影响的行数
			if (count >= 1) {
				System.out.println("修改管理员成功!");
			} else {
				System.out.println("没有修改任何管理员用户!");
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("修改用户失败");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	// 四.查1

	public Jdadmin getUserById(Integer userid) throws Exception{
		conn = ConnOracle.getConnection();
		Jdadmin user = new Jdadmin();

		String sql = "select * from jdadmin where userid=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userid);

			// 四.执行并返回结果集
			// ResultSet 结果集 封装了 数据库查询的结果集
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user.setUserid(rs.getInt(1));
				user.setUsername(rs.getString(2));
				user.setPasswords(rs.getString(3));
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("查询单个用户失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);

		}

		return user;
	}

	// 五.按SQL语句查
	public List<Jdadmin> getPageByQuery(String sql) throws Exception{
		conn = ConnOracle.getConnection();
		Statement stmt = null;
		ResultSet rs = null;

		List<Jdadmin> list = new ArrayList<Jdadmin>();

		Jdadmin user = null;

		// 三.建立通道
		try {
			stmt = conn.createStatement();
			// 四.执行并返回结果集
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				user = new Jdadmin();

				user.setUserid(rs.getInt("userid"));
				user.setUsername(rs.getString("username"));
				user.setPasswords(rs.getString("passwords"));
				user.setOthername(rs.getString("othername"));
				user.setAge(rs.getInt("age"));
				user.setSex(rs.getString("sex"));
				user.setUserdesc(rs.getString("userdesc"));
				user.setIswork(rs.getInt("iswork"));
				list.add(user);
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败!");
			e.printStackTrace();
			throw new Exception("查询用户失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return list;
	}



	public int getTotalRecordSum(String sql) throws Exception{
		conn = ConnOracle.getConnection();
		int totalRecordSum = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			

			// 四.执行并返回结果集
			// ResultSet 结果集 封装了 数据库查询的结果集
			rs = pstmt.executeQuery();
			while (rs.next()) {
				totalRecordSum = rs.getInt(1);
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("查询用户数量失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);

		}

		return totalRecordSum;
	}
	
	
}
