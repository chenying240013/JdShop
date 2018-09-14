package com.dao.inter;

import java.util.List;

import com.vo.CategoryOrder;

public interface CategoryOrderDao {
	//增加
	public int addOrder(CategoryOrder  order) throws Exception;
	//删除
	public int deleOrder(CategoryOrder  order) throws Exception;
	//修改
	public int updateOrder(CategoryOrder  order) throws Exception;
	//查一
	public CategoryOrder getOrderByID(int id) throws Exception;
	//按SQL语句查
	public List<CategoryOrder> getAllBySql(String sql) throws Exception;
	//查询所有的数量
	public int getAllOrder(String sql) throws Exception;
	//查询所有的订单状态
	public List<CategoryOrder> queryOrderState(int cstate) throws Exception;
}
