package com.service.inter;

import java.util.List;

import com.page.PageInfo;
import com.vo.Jdgood;


public interface JdgoodService {
	    //添加一级商品种类
		public int addJdgood(Jdgood jdgood) throws Exception;
		//查询所有一级商品种类
		public List<Jdgood> getAllJdgoods() throws Exception;
		//删除单个一级商品种类
		public int deleteJdgoodById(String jid) throws Exception;
		//查詢单个一级商品种类
		public Jdgood getJdgoodById(String jid) throws Exception;
		//修改一级商品种类
		public int updateJdgood(Jdgood jdgood) throws Exception;
		//按照分页查询一级商品种类
		public List<Jdgood> getPageByQuery(PageInfo pageInfo) throws Exception;
		//查询总共有多少条记录
		public int getTotalRecordCount() throws Exception;
		//根据条件查询 然后分页
		public List<Jdgood> getPageByQuery(Jdgood jdgood,PageInfo pageInfo) throws Exception;
		//根据条件查询 总共有多少条记录
		public int getTotalRecordCount(Jdgood jdgood) throws Exception;
}
