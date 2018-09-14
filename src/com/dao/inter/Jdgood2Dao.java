package com.dao.inter;

import java.util.List;

import com.vo.Jdgood2;

public interface Jdgood2Dao {
	public int addJdgood(Jdgood2 jdgood2) throws Exception;
	//2.删除
	public int deleteJdgood(Jdgood2 jdgood2) throws Exception;
	//3.修改
	public int updateJdgood(Jdgood2 jdgood2) throws Exception;
	//4.查1
	public Jdgood2 getJdgoodById(int id) throws Exception;
	//5.按SQL语句查
	public List<Jdgood2> getPageByQuery(String sql) throws Exception;
	//6.查询总的记录数
	public int getTotalRecordCount(String sql) throws Exception;
	
}
