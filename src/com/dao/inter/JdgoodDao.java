package com.dao.inter;

import java.util.List;


import com.vo.Jdgood;

public interface JdgoodDao {
	//1.添加
		public int addJdgood(Jdgood jdgood) throws Exception;
		//2.删除
		public int deleteJdgood(Jdgood jdgood) throws Exception;
		//3.修改
		public int updateJdgood(Jdgood jdgood) throws Exception;
		//4.查1
		public Jdgood getJdgoodById(int id) throws Exception;
		//5.按SQL语句查
		public List<Jdgood> getPageByQuery(String sql) throws Exception;
		//6.查询总的记录数
		public int getTotalRecordCount(String sql) throws Exception;
}
