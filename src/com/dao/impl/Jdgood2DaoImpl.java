package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.Jdgood2Dao;
import com.util.ConnOracle;
import com.vo.Jdgood2;

public class Jdgood2DaoImpl implements Jdgood2Dao {
	private Connection conn;

	public Jdgood2DaoImpl() {
		
	}

	@Override
	public int addJdgood(Jdgood2 jdgood) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "insert into jdgood2 values(seq_jdgood2.nextval,?,?)";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;

		// 默认事务是关闭的 调用addCategory增加一条记录的时候 会自动提交
		// 开启事务

		try {

			// conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, jdgood.getJ2name());
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
	public int deleteJdgood(Jdgood2 jdgood2) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "delete from jdgood2 where j2id=?";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, jdgood2.getJ2id());

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
	public int updateJdgood(Jdgood2 jdgood2) throws Exception {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "update jdgood2 set j2name=?,fid=? where j2id=? ";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, jdgood2.getJ2name());
			pstmt.setInt(2, jdgood2.getFid());
			pstmt.setInt(3, jdgood2.getJ2id());
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
			throw new Exception("修改二级级产品种类失败!");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public Jdgood2 getJdgoodById(int id) throws Exception {
		conn = ConnOracle.getConnection();
		Jdgood2 jdgood2 = new Jdgood2();

		// 3.建立通道
		String sql = "select * from jdgood2 where j2id=? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			// 4.执行并返回结果集
			rs = pstmt.executeQuery();

			while (rs.next()) {
				jdgood2.setJ2id(rs.getInt("j2id"));
				jdgood2.setJ2name(rs.getString("j2name"));
				jdgood2.setFid(rs.getInt("fid"));
			}
		} catch (SQLException e) {
			System.out.println("建立通道或查询单个商品种类失败");
			e.printStackTrace();
			throw new Exception("查询单个二级商品种类失败!");
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);
		}

		return jdgood2;
	}

	@Override
	public List<Jdgood2> getPageByQuery(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		List<Jdgood2> list = new ArrayList<Jdgood2>();
		Jdgood2 jdgood2 = null;
		ResultSet rs = null;
		Statement stmt = null;
		// 3.建立通道
		try {
			stmt = conn.createStatement();
			// 4.执行并返回结果集
			rs = stmt.executeQuery(sql);
		
			while (rs.next()) {
				jdgood2 = new Jdgood2();

				jdgood2.setJ2id(rs.getInt("j2id"));
				jdgood2.setJ2name(rs.getString("j2name"));
				jdgood2.setFid(rs.getInt("fid"));

				list.add(jdgood2);

			}
		} catch (SQLException e) {
			System.out.println("创建getPageByQuery通道或查询结果集失败");
			e.printStackTrace();
			
			throw new Exception("查询二级商品种类失败");//异常转译
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
			System.out.println("创建getTotalRecordCount通道或查询结果集失败");
			e.printStackTrace();
			
			throw new Exception("查询二级种类总记录数失败");//异常转译
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return totalRecordSum;
	}

}
