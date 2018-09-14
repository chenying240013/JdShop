package com.dao.inter;

import java.util.List;

import com.vo.Jdproduct;

//商品管理的DAO接口
public interface JdproductDao {
	//一.增加
	public int addJdproduct(Jdproduct product) throws Exception;
	//二.删除
	public int deleteJdproduct(Jdproduct product) throws Exception;
	//三.修改
	public int updateJdproduct(Jdproduct product) throws Exception;
	//四.查1
	public Jdproduct getJdproductById(Integer pid) throws Exception;
	//五.按SQL语句查
	public List<Jdproduct> getPageByQuery(String sql) throws Exception;
	//六.查询总共有多少条记录
	public int getTotalRecordSum(String sql) throws Exception;
	
}

