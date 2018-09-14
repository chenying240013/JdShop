package com.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dao.inter.CategoryOrderDao;
import com.util.ConnOracle;
import com.vo.CategoryOrder;

public class CategoryOrderDaoImpl implements CategoryOrderDao{
	private Connection conn;
	
	public CategoryOrderDaoImpl(){
		
	
	
	}
	//加入订单
		@Override
		public int addOrder(CategoryOrder order) throws Exception {
			conn= ConnOracle.getConnection();
			int count=0;
			PreparedStatement pstmt =null;
			// 刚刚插入的商品处于"未支付"状态 所以cstate 的值为0 1 表示已支付 0 表示未支付
			String sql="insert into categoryorder values(DBMS_RANDOM.value(1,99999999),sysdate,0,null,null,null,0)";
			try {
				pstmt = conn.prepareStatement(sql);
				//pstmt.setInt(1, order.getTotal());
				//pstmt.setInt(2, order.getTelephone());
				//pstmt.setString(3, order.getAddress());
				//pstmt.setString(4, order.getName());
				System.out.println("order方法");
				//执行并返回结果集
				 count = pstmt.executeUpdate();
				 if(count>=0){
					 System.out.println("添加订单成功！！");
				 }else{
					 System.out.println("没有添加订单");
				 }
				
			} catch (SQLException e) {
				System.out.println("建立通道或添加订单失败！！！！");
				e.printStackTrace();
				throw new Exception("添加订单失败！！");
			}finally{
				ConnOracle.closeConnection(null, pstmt, conn);
			}
			return count;
		}
		//删除
		@Override
		public int deleOrder(CategoryOrder order) throws Exception {
			conn= ConnOracle.getConnection();
			PreparedStatement pstm=null;
			String sql="delete from categoryorder where oid=?";
			int count =0;
			try {
				pstm  = conn.prepareStatement(sql);
				pstm.setInt(1,order.getOid());
				//执行并返回结果集
				 count = pstm.executeUpdate();
				 if(count>=0){
					 System.out.println("删除订单成功！！");
				 }else{
					 System.out.println("没有删除订单");
				 }
			} catch (SQLException e) {
				System.out.println("建立通道或删除订单失败！！");
				e.printStackTrace();
				throw new Exception("删除订单失败！！");
			}finally{
				ConnOracle.closeConnection(null, pstm, conn);
			}
			return count;
		}
		//修改
		@Override
		public int updateOrder(CategoryOrder order) throws Exception {
			conn= ConnOracle.getConnection();
			int count=0;
			PreparedStatement pstm =null;
			String sql="update categoryorder set ostate=?,address=? where oid=?";
			try {
				pstm=conn.prepareStatement(sql);
			
				pstm.setInt(1,order.getOstate());
				pstm.setString(2, order.getAddress());
				pstm.setInt(3,order.getOid());
			//执行并返回结果集
				 count = pstm.executeUpdate();
				 if(count>=0){
					 System.out.println("修改订单成功！！");
				 }else{
					 System.out.println("没有修改订单");
				 }
				
			} catch (SQLException e) {
				System.out.println("建立通道或修改订单失败");
				e.printStackTrace();
				throw new Exception("修改订单失败！！");
			}finally{
				ConnOracle.closeConnection(null, pstm, conn);
			}
			return count;
		}
		//查一
		@Override
		public CategoryOrder getOrderByID(int id) throws Exception {
			conn= ConnOracle.getConnection();
			CategoryOrder order =new CategoryOrder();
			PreparedStatement pstm =null;
			ResultSet rs=null;
			String sql="select *  from categoryorder where oid = ?";
			try {
				pstm = conn.prepareStatement(sql);
				pstm.setInt(1,id);
				//执行并返回结果集
				rs = pstm.executeQuery();
				while(rs.next()){
					order.setOid(rs.getInt("oid"));
					order.setOstate(rs.getInt("ostate"));
					order.setAddress(rs.getString("address"));
					order.setOtime(rs.getDate("otime"));
					order.setName(rs.getString("name"));
					order.setTelephone(rs.getInt("telephone"));
					order.setTotal(rs.getInt("total"));
				}
				
				
			} catch (SQLException e) {
				System.out.println("建立通道失败！！");
				e.printStackTrace();
				throw new Exception("查询单一订单失败！！");
			}finally{
				ConnOracle.closeConnection(rs, pstm, conn);
			}
			return order;
		
		}
		//
		@Override
		public List<CategoryOrder> getAllBySql(String sql) throws Exception {
			conn= ConnOracle.getConnection();
			List<CategoryOrder> list = new ArrayList<CategoryOrder>();
			Statement stm=null;
			CategoryOrder order=null;
			ResultSet rs =null;
			try {
				stm= conn.createStatement();
				rs= stm.executeQuery(sql);
				while(rs.next()){
					order =new CategoryOrder();
					order.setOid(rs.getInt("oid"));
					order.setOtime(rs.getDate("otime"));
					order.setOstate(rs.getInt("ostate"));
					order.setAddress(rs.getString("address"));
					order.setName(rs.getString("name"));
					order.setTelephone(rs.getInt("telephone"));
					order.setTotal(rs.getInt("total"));
					list.add(order);
				}
				
			} catch (SQLException e) {
				System.out.println("按SQL查询失败！！");
				e.printStackTrace();
				throw new Exception("查询所有订单失败！！");
			}finally{
				ConnOracle.closeConnection(rs, stm, conn);
			}
			return list;
		}

		@Override
		public int getAllOrder(String sql) throws Exception {
			conn= ConnOracle.getConnection();
			int getAllOrder = 0;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);

				rs = pstmt.executeQuery();
				while (rs.next()) {
					getAllOrder = rs.getInt(1);
				}
			} catch (SQLException e) {
				System.out.println("建立通道失败");
				e.printStackTrace();
				throw new Exception("查询订单数量失败！！");
			
			} finally {

				ConnOracle.closeConnection(rs, null, conn);
			}

			return getAllOrder;
		}

		@Override
		public List<CategoryOrder> queryOrderState(int cstate) throws Exception {
			conn= ConnOracle.getConnection();
			CategoryOrder orderState =new CategoryOrder();
			PreparedStatement pstm =null;
			ResultSet rs=null;  
			 List<CategoryOrder> list =new ArrayList<CategoryOrder>();
			String sql="select *  from categoryorder where ostate= ?";//这是不是查状态
			try {
				pstm = conn.prepareStatement(sql);
				pstm.setInt(1,cstate);
				//执行并返回结果集
				rs = pstm.executeQuery();
				while(rs.next()){
					orderState.setOid(rs.getInt("oid"));
					orderState.setOtime(rs.getDate("otime"));
					orderState.setOstate(rs.getInt("ostate"));
					orderState.setAddress(rs.getString("address"));
					list.add(orderState);
				}
				
				
			} catch (SQLException e) {
				System.out.println("建立通道失败！！");
				e.printStackTrace();
				throw new Exception("查询订单状态失败！");
			}finally{
				ConnOracle.closeConnection(rs, pstm, conn);
			}
			return list;
		}
		
		public static void main(String[] args) throws Exception {
			CategoryOrderDaoImpl o = new CategoryOrderDaoImpl();
			CategoryOrder cateorder  = new CategoryOrder();
			o.addOrder(cateorder);
		
		}

}
