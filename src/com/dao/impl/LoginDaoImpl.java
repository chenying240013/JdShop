package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.LoginDao;
import com.util.ConnOracle;
import com.vo.Login;

public class LoginDaoImpl implements LoginDao {
	/*总共有方法
	 * int addLogin(Login login)添加用户信息， DML返回受影响的行数（DCL或DDL语句 返回值是0）
	 * int deleteLogin(Login login)删除用户信息
	 * int updateLogin(Login login)修改用户信息
	 * Login getLoginById(int id)根据ID查询用户信息，并放到vo中
	 * List<Login> getPageByQuery(String sql)根据传过来的sql语句查询
	 * */
	// 1.组合Connection
	private Connection conn;

	public LoginDaoImpl() {
	
	}

	@Override
	public int addLogin(Login login) throws Exception{
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "insert into login values(seq_login.nextval,?,?,0,?,?,?)";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;

		// 默认事务是关闭的 调用addCategory增加一条记录的时候 会自动提交
		// 开启事务

		try {

			// conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, login.getUsername());
			pstmt.setString(2, login.getPassword());
			pstmt.setString(3, login.getMail());
			pstmt.setString(4, login.getCode());
			pstmt.setString(5, login.getPhoneNumber());
			// 4.执行并返回结果集
			count = pstmt.executeUpdate();// 可以执行除了DQL以外所有的语句 DML 返回的是受影响的行数
											// DCL或DDL语句 返回值是0

		
			if (count >= 1) {
				System.out.println("添加用户成功!");
			} else {
				System.out.println("没有添加任何用户!");
			}
		} catch (SQLException e) {
			
			System.out.println("建立通道或添加用户失败");
			e.printStackTrace();
			
			throw new Exception("用户添加失败");//异常转译
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public int deleteLogin(Login login) throws Exception{
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "delete from login where lid=?";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, login.getLid());

			// 4.执行并返回结果集
			count = pstmt.executeUpdate();// 可以执行除了DQL以外所有的语句 DML 返回的是受影响的行数
											// DCL或DDL语句 返回值是0

			if (count >= 1) {
				System.out.println("删除用户成功!");
			} else {
				System.out.println("没有删除任何用户!");
			}
		} catch (SQLException e) {
			System.out.println("建立通道或删除用户失败");
			e.printStackTrace();
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public int updateLogin(Login login) {
		conn = ConnOracle.getConnection();
		int count = 0;
		// 3.建立通道
		String sql = "update login set username=?,password=?,mail=? ,isActive=?, code=?, phoneNumber=? where lid=?";
		// 获得了一个预编译的通道 相当于IO通道 可以用它来发送sql语句
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, login.getUsername());
			pstmt.setString(2, login.getPassword());
			pstmt.setString(3, login.getMail());
			pstmt.setInt(4, login.getIsActive());
			pstmt.setString(5, login.getCode());
			pstmt.setString(6, login.getPhoneNumber());
			pstmt.setInt(7, login.getLid());
			// 4.执行并返回结果集
			count = pstmt.executeUpdate();// 可以执行除了DQL以外所有的语句 DML 返回的是受影响的行数
											// DCL或DDL语句 返回值是0

			if (count >= 1) {
				System.out.println("修改用户信息成功!");
			} else {
				System.out.println("没有修改任何用户信息!");
			}
		} catch (SQLException e) {
			System.out.println("建立通道或修改用户信息失败");
			e.printStackTrace();
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

		return count;
	}

	@Override
	public Login getLoginById(int id)throws Exception {
		conn = ConnOracle.getConnection();
		Login login = new Login();

		// 3.建立通道
		String sql = "select * from login where lid=?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			// 4.执行并返回结果集
			rs = pstmt.executeQuery();

			while (rs.next()) {
				login.setLid(rs.getInt("lid"));
				login.setUsername(rs.getString("username"));
				login.setPassword(rs.getString("password"));
				login.setMail(rs.getString("mail"));
				login.setIsActive(rs.getInt("isActive"));
				login.setIsActive(rs.getInt("code"));
				login.setPhoneNumber(rs.getString("phoneNumber"));
			}
		} catch (SQLException e) {
			System.out.println("建立通道或查询用户信息失败");
			e.printStackTrace();
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);
		}

		return login;
	}

	@Override
	public List<Login> getPageByQuery(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		List<Login> list = new ArrayList<Login>();
		Login login = null;
		ResultSet rs = null;
		Statement stmt = null;
		// 3.建立通道
		try {
			stmt = conn.createStatement();
			// 4.执行并返回结果集
			rs = stmt.executeQuery(sql);
		
			while (rs.next()) {
				login = new Login();

				login.setLid(rs.getInt("lid"));
				login.setUsername(rs.getString("username"));
				login.setPassword(rs.getString("password"));
				login.setMail(rs.getString("mail"));
				login.setIsActive(rs.getInt("isActive"));
				login.setCode(rs.getString("code"));
				login.setPhoneNumber(rs.getString("phoneNumber"));
				System.out.println("查询中的所有login信息："+login);
				list.add(login);

			}
		} catch (SQLException e) {
			System.out.println("创建通道或查询结果集失败");
			e.printStackTrace();
			
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return list;
	}

	@Override
	public Login userActive(String code){
		conn = ConnOracle.getConnection();
		Login login = new Login();

		// 3.建立通道
		String sql = "select * from login where code=?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, code);
			// 4.执行并返回结果集
			rs = pstmt.executeQuery();

			while (rs.next()) {
				login.setLid(rs.getInt("lid"));
				login.setUsername(rs.getString("username"));
				login.setPassword(rs.getString("password"));
				login.setMail(rs.getString("mail"));
				login.setIsActive(rs.getInt("isActive"));
				login.setCode(rs.getString("code"));
				login.setPhoneNumber(rs.getString("phoneNumber"));
			}
		} catch (SQLException e) {
			System.out.println("建立通道或查询用户信息失败");
			e.printStackTrace();
		} finally {
			// 5.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);
		}
		System.out.println("dao中的userActive中没有修改激活码与isActive时："+login);
		return login;
	}

	
}
