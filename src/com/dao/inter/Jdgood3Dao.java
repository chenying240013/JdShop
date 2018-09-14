package com.dao.inter;

import java.util.List;

import com.vo.Jdgood3;

public interface Jdgood3Dao {
	public int addJdgood(Jdgood3 jdgood3) throws Exception;
	//3.删除
	public int deleteJdgood(Jdgood3 jdgood3) throws Exception;
	//3.修改
	public int updateJdgood(Jdgood3 jdgood3) throws Exception;
	//4.查1
	public Jdgood3 getJdgoodById(int id) throws Exception;
	//5.按SQL语句查
	public List<Jdgood3> getPageByQuery(String sql) throws Exception;
	//6.查询总的记录数
	public int getTotalRecordCount(String sql) throws Exception;
}
