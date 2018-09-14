package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.Jdgood3Dao;
import com.util.ConnOracle;
import com.vo.Jdgood3;

public class Jdgood3DaoImpl implements Jdgood3Dao {
	private Connection conn;

	public Jdgood3DaoImpl() {
		
	}

	@Override
	public int addJdgood(Jdgood3 jdgood) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "insert into jdgood3 values(seq_jdgood3.nextval,?,?)";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;

		// 默认事务是关闭的 调用addCategory增加一条记录的时候 会自动提交
		// 开启事务

		try {

			// conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, jdgood.getJ3name());
			pstmt.setInt(2, jdgood.getFid());
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
	public int deleteJdgood(Jdgood3 jdgood3) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "delete from jdgood3 where j3id=?";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, jdgood3.getJ3id());

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
	public int updateJdgood(Jdgood3 jdgood3) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "update jdgood3 set j3name=?,fid=? where j3id=? ";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, jdgood3.getJ3name());
			pstmt.setInt(2, jdgood3.getFid());
			pstmt.setInt(3, jdgood3.getJ3id());
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
			throw new Exception("修改三级级产品种类失败!");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public Jdgood3 getJdgoodById(int id) throws Exception {
		conn = ConnOracle.getConnection();
		Jdgood3 jdgood3 = new Jdgood3();

		// 3.建立通道
		String sql = "select * from jdgood3 where j3id=? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			// 4.执行并返回结果集
			rs = pstmt.executeQuery();

			while (rs.next()) {
				jdgood3.setJ3id(rs.getInt("j3id"));
				jdgood3.setJ3name(rs.getString("j3name"));
				
			}
		} catch (SQLException e) {
			System.out.println("建立通道或查询单个商品种类失败");
			e.printStackTrace();
			throw new Exception("查询单个三级商品种类失败!");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);
		}

		return jdgood3;
	}

	@Override
	public List<Jdgood3> getPageByQuery(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		List<Jdgood3> list = new ArrayList<Jdgood3>();
		Jdgood3 jdgood3 = null;
		ResultSet rs = null;
		Statement stmt = null;
		// 3.建立通道
		try {
			stmt = conn.createStatement();
			// 4.执行并返回结果集
			rs = stmt.executeQuery(sql);
		
			while (rs.next()) {
				jdgood3 = new Jdgood3();

				jdgood3.setJ3id(rs.getInt("j3id"));
				jdgood3.setJ3name(rs.getString("j3name"));
				jdgood3.setFid(rs.getInt("fid"));

				list.add(jdgood3);

			}
		} catch (SQLException e) {
			System.out.println("创建通道或查询结果集失败");
			e.printStackTrace();
			
			throw new Exception("查询三级商品种类失败");//异常转译
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
			
			throw new Exception("查询三级种类总记录数失败");//异常转译
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return totalRecordSum;
	}

}
