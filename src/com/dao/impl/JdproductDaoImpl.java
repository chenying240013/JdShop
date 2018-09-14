package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.JdproductDao;
import com.util.ConnOracle;
import com.vo.Jdproduct;

public class JdproductDaoImpl implements JdproductDao {

	// 组合Connection对象
	private Connection conn;

	public JdproductDaoImpl() {
		
	}

	@Override
	public int addJdproduct(Jdproduct product) throws Exception {
		conn = ConnOracle.getConnection();
		// 刚刚插入的商品处于"下架"状态 所以onsale 的值为0 1 表示上架 0 表示下架
		String sql = "insert into jdproduct(pid,pname,price,pingjiasum,productSum,dianpuName,pdesc,onsale,cid) values(seq_product.nextval,?,?,0,?,?,?,0,?)";
		PreparedStatement pstmt = null;
		// 三.建立通道
		int count = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getPname());
			pstmt.setDouble(2, product.getPrice());
			pstmt.setInt(3, product.getProductSum());
			pstmt.setString(4, product.getDianpuName());
			pstmt.setString(5, product.getPdesc());
			pstmt.setInt(6, product.getCid());
			// 四.执行并返回结果集
			count = pstmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("添加商品失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(null, pstmt, conn);

		}

		return count;

	}

	@Override
	public int deleteJdproduct(Jdproduct product) throws Exception {
		conn = ConnOracle.getConnection();
		String sql = "delete from jdproduct where pid=?";
		PreparedStatement pstmt = null;
		// 三.建立通道
		int count;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, product.getPid());

			// 四.执行并返回结果集
			count = pstmt.executeUpdate();// 执行dml 或 ddl语句的 返回受影响的行数
			if (count >= 1) {
				System.out.println("删除商品成功!");
			} else {
				System.out.println("没有删除任何商品!");
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("删除商品失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(null, pstmt, conn);

		}

		return count;

	}

	public int updateJdproduct(Jdproduct product) throws Exception{
		conn = ConnOracle.getConnection();
		String sql = "update jdproduct set pname=?,price=?,productSum=?,dianpuName=?,pdesc=?,cid=? where pid=?";
		PreparedStatement pstmt = null;
		//三.建立通道
		int count;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getPname());
			pstmt.setDouble(2, product.getPrice());
			pstmt.setInt(3, product.getProductSum());
			pstmt.setString(4, product.getDianpuName());
			pstmt.setString(5, product.getPdesc());
			pstmt.setInt(6, product.getCid());
			pstmt.setInt(7, product.getPid());

			//四.执行并返回结果集
			count = pstmt.executeUpdate();// 执行dml 或 ddl语句的 返回受影响的行数
			if (count >= 1) {
				System.out.println("修改商品成功!");
			} else {
				System.out.println("没有修改任何商品!");
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("修改商品失败");
		} finally {
			//五.关闭
			ConnOracle.closeConnection(null, pstmt, conn);

		}
		
		return count;

	}

	public Jdproduct getJdproductById(Integer pid) throws Exception {
		conn = ConnOracle.getConnection();
		Jdproduct product = new Jdproduct();

		String sql = "select * from jdproduct where pid=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pid);

			// 四.执行并返回结果集
			
			rs = pstmt.executeQuery();
			while (rs.next()) {
				product.setPid(rs.getInt(1));
				product.setPname(rs.getString(2));
				product.setPrice(rs.getInt(3));
				
				product.setPingjiaSum(rs.getInt(4));
				product.setDianpuName(rs.getString(5));
				product.setProductListLargeImage(rs.getString(6));
				
				product.setProductListSmallImage1(rs.getString(7));
				product.setProductListSmallImage2(rs.getString(8));
				product.setProductListSmallImage3(rs.getString(9));
				
				product.setPdesc(rs.getString(10));
				product.setProductSum(rs.getInt(11));
				
				product.setDetailLargeImg(rs.getString(12));
				product.setDetailSmallImg1(rs.getString(13));
				product.setDetailSmallImg2(rs.getString(14));
				product.setDetailSmallImg3(rs.getString(15));
				product.setDetailSmallImg4(rs.getString(16));
				product.setDetailSmallImg5(rs.getString(17));
				
				product.setShoppingCarImg(rs.getString(18));
				
				product.setOnsale(rs.getInt(19));
				product.setCid(rs.getInt(20));
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("查询单一商品失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(rs, pstmt, conn);
		}
		return product;
	}

	// 五.按SQL语句查
	public List<Jdproduct> getPageByQuery(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		Statement stmt = null;
		ResultSet rs = null;

		List<Jdproduct> list = new ArrayList<Jdproduct>();

		Jdproduct product = null;

		// 三.建立通道
		try {
			stmt = conn.createStatement();
			// 四.执行并返回结果集
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				product = new Jdproduct();

				product.setPid(rs.getInt("pid"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getDouble("price"));
				product.setPingjiaSum(rs.getInt("pingjiasum"));
				product.setDianpuName(rs.getString("dianpuName"));
				product.setProductListLargeImage(rs.getString("productListLargeImage"));
				product.setProductListSmallImage1(rs.getString("productListSmallImage1"));
				product.setProductListSmallImage2(rs.getString("productListSmallImage2"));
				product.setProductListSmallImage3(rs.getString("productListSmallImage3"));
				product.setPdesc(rs.getString("pdesc"));
				product.setProductSum(rs.getInt("productSum"));
				product.setDetailLargeImg(rs.getString("detailLargeImg"));
				product.setDetailSmallImg1(rs.getString("detailSmallImg1"));
				product.setDetailSmallImg2(rs.getString("detailSmallImg2"));
				product.setDetailSmallImg3(rs.getString("detailSmallImg3"));
				product.setDetailSmallImg4(rs.getString("detailSmallImg4"));
				product.setDetailSmallImg5(rs.getString("detailSmallImg5"));
				product.setShoppingCarImg(rs.getString("shoppingCarImg"));
				product.setOnsale(rs.getInt("onsale"));
				product.setCid(rs.getInt("cid"));

				list.add(product);
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败!");
			e.printStackTrace();
			throw new Exception("查询商品失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(rs, stmt, conn);
		}

		return list;
	}

	public int getTotalRecordSum(String sql) throws Exception {
		conn = ConnOracle.getConnection();
		int totalRecordSum = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				totalRecordSum = rs.getInt(1);
			}

		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("查询商品数量失败!");
		} finally {

			ConnOracle.closeConnection(rs, pstmt, conn);
		}

		return totalRecordSum;
	}
	
	public void updateJdproductImageNames(Jdproduct product) throws Exception{
		conn = ConnOracle.getConnection();
		String sql = "update jdproduct set productListLargeImage=?,productListSmallImage1=?,productListSmallImage2=?,productListSmallImage3=?,detailLargeImg=?,detailSmallImg1=?,detailSmallImg2=?,detailSmallImg3=?,detailSmallImg4=?,detailSmallImg5=?,shoppingCarImg=? where pid=?";
		PreparedStatement pstmt = null;
		// 三.建立通道
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getProductListLargeImage());
			pstmt.setString(2, product.getProductListSmallImage1());
			pstmt.setString(3, product.getProductListSmallImage2());
			pstmt.setString(4, product.getProductListSmallImage3());
			
			
			//设置 详细页图片字段
			pstmt.setString(5, product.getDetailLargeImg());
			pstmt.setString(6, product.getDetailSmallImg1());
			pstmt.setString(7, product.getDetailSmallImg2());
			pstmt.setString(8, product.getDetailSmallImg3());
			pstmt.setString(9, product.getDetailSmallImg4());
			pstmt.setString(10, product.getDetailSmallImg5());
			
			//设置 购物车图片字段
			pstmt.setString(11, product.getShoppingCarImg());
			
			pstmt.setInt(12, product.getPid());
			// 四.执行并返回结果集
			int count = pstmt.executeUpdate();// 执行dml 或 ddl语句的 返回受影响的行数
			
		} catch (SQLException e) {
			System.out.println("建立通道失败");
			e.printStackTrace();
			throw new Exception("修改商品图片失败");
		} finally {
			// 五.关闭
			ConnOracle.closeConnection(null, pstmt, conn);
		}

	}

	public static void main(String[] args) throws Exception {
		
		Jdproduct p = new Jdproduct();
		p.setPname("iphone6s");
		p.setPrice(5288);
		p.setProductSum(10);
		p.setDianpuName("京东Apple产品专营店");
		p.setPdesc("苹果最新手机");
		p.setCid(62);
		JdproductDaoImpl dao = new JdproductDaoImpl();
		dao.addJdproduct(p);
	}

}
