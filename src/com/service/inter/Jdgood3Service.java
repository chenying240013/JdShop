package com.service.inter;

import java.util.List;

import com.page.PageInfo;
import com.vo.Jdgood;
import com.vo.Jdgood3;

public interface Jdgood3Service {
	//添加
	public int addJdgood(Jdgood3 jdgood) throws Exception;
	//查询二级商品种类下的三级商品种类数量
	public int getJdgood3SumByJdgood(String jid) throws Exception;
	//查询二级商品种类下对应的三级商品种类
	public List<Jdgood3> getAllJdgood3ByJdgood(int jid) throws Exception;
	//查1
	public Jdgood3 getJdgoodById(String jid) throws Exception;

	//根据商品种类名字得到Jdgood3
	public Jdgood3 getJdgoodByName(String jname) throws Exception;
	//查询指定三级种类的父亲二级种类的jid  
	//形参: jid 三级种类的jid
	//返回值: 所属三级种类的jid
	public int getParentJdgoodById(int jid) throws Exception;
	
	//查询所有二级商品种类
	public List<Jdgood3> getAllJdgoods() throws Exception;
	//删除单个三级商品种类
	public int deleteJdgoodById(String jid) throws Exception;
	//修改三级商品种类
	public int updateJdgood(Jdgood3 jdgood) throws Exception;
	//按照分页查询三级商品种类
	public List<Jdgood3> getPageByQuery(PageInfo pageInfo) throws Exception;
	//查询总共有多少条记录
	public int getTotalRecordCount() throws Exception;
	//根据条件查询 然后分页
	public List<Jdgood3> getPageByQuery(Jdgood3 jdgood,PageInfo pageInfo) throws Exception;
	//根据条件查询 总共有多少条记录
	public int getTotalRecordCount(Jdgood3 jdgood) throws Exception;
	
}
