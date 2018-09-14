package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.JdgoodDao;
import com.util.ConnOracle;

import com.vo.Jdgood;

public class JdgoodDaoImpl implements JdgoodDao {
	// 1.组合Connection
	private Connection conn;

	public JdgoodDaoImpl() {
		
	}

	@Override
	public int addJdgood(Jdgood jdgood) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "insert into jdgood values(seq_jdgood.nextval,?)";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;

		// 默认事务是关闭的 调用addCategory增加一条记录的时候 会自动提交
		// 开启事务

		try {

			// conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, jdgood.getJname());
			// 4.执行并返回结果集
			count = pstmt.executeUpdate();// 可以执行除了DQL以外所有的语句 DML 返回的是受影响的行数
											// DCL或DDL语句 返回值是0

		
			if (count >= 1) {
				System.out.println("添加商品种类成功!");
			} else {
				System.out.println("没有添加任何商品种类!");
			}
		} catch (SQLException e) {
			
			System.out.println("建立通道或添加商品种类失败");
			e.printStackTrace();
			
			throw new Exception("商品种类添加失败");//异常转译
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}
		
		return count;
	}

	@Override
	public int deleteJdgood(Jdgood jdgood) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "delete from jdgood where jid=?";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, jdgood.getJid());

			// 4.执行并返回结果集
			count = pstmt.executeUpdate();// 可以执行除了DQL以外所有的语句 DML 返回的是受影响的行数
											// DCL或DDL语句 返回值是0

			if (count >= 1) {
				System.out.println("删除商品种类成功!");
			} else {
				System.out.println("没有删除任何商品种类!");
			}
		} catch (SQLException e) {
			System.out.println("建立通道或删除商品种类失败");
			e.printStackTrace();
			
			throw new Exception("删除商品种类失败");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public int updateJdgood(Jdgood jdgood) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "update jdgood set jname=? where jid=?";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, jdgood.getJname());
			pstmt.setInt(2, jdgood.getJid());
			// 4.执行并返回结果集
			count = pstmt.executeUpdate();// 可以执行除了DQL以外所有的语句 DML 返回的是受影响的行数
											// DCL或DDL语句 返回值是0

			if (count >= 1) {
				System.out.println("修改商品种类成功!");
			} else {
				System.out.println("没有修改任何商品种类!");
			}
		} catch (SQLException e) {
			System.out.println("建立通道或修改商品种类失败");
			e.printStackTrace();
			throw new Exception("修改一级产品种类失败!");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public Jdgood getJdgoodById(int id) throws Exception {
		conn = ConnOracle.getConnection();
		Jdgood jdgood = new Jdgood();

		// 3.建立通道
		String sql = "select * from jdgood where jid=? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			// 4.执行并返回结果集
			rs = pstmt.executeQuery();

			while (rs.next()) {
				jdgood.setJid(rs.getInt("jid"));
				jdgood.setJname(rs.getString("jname"));
				
			}
		} catch (SQLException e) {
			System.out.println("建立通道或查询单个商品种类失败");
			e.printStackTrace();
			throw new Exception("查询单个一级商品种类失败!");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);
		}

		return jdgood;
	}

	@Override
	public List<Jdgood> getPageByQuery(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		List<Jdgood> list = new ArrayList<Jdgood>();
		Jdgood jdgood = null;
		ResultSet rs = null;
		Statement stmt = null;
		// 3.建立通道
		try {
			stmt = conn.createStatement();
			// 4.执行并返回结果集
			rs = stmt.executeQuery(sql);
		
			while (rs.next()) {
				jdgood = new Jdgood();

				jdgood.setJid(rs.getInt("jid"));
				jdgood.setJname(rs.getString("jname"));
				

				list.add(jdgood);

			}
		} catch (SQLException e) {
			System.out.println("创建通道或查询结果集失败");
			e.printStackTrace();
			
			throw new Exception("查询一级商品种类失败");//异常转译
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return list;
	
	}

	@Override
	public int getTotalRecordCount(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		int totalRecordSum = -1;
		
		ResultSet rs = null;
		Statement stmt = null;
		// 3.建立通道
		try {
			stmt = conn.createStatement();
			// 4.执行并返回结果集
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				totalRecordSum = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("创建通道或查询结果集失败");
			e.printStackTrace();
			
			throw new Exception("查询一级种类总记录数失败");//异常转译
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return totalRecordSum;
	}

}
