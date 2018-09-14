package com.service.inter;

import java.util.List;

import com.page.PageInfo;
import com.vo.Jdgood;
import com.vo.Jdgood2;

public interface Jdgood2Service {
	//添加
	public int addJdgood(Jdgood2 jdgood) throws Exception;
	//查询一级商品种类下的二级商品种类数量
	public int getJdgood2SumByJdgood(String jid) throws Exception;
	//查询一级商品种类下对应的二级商品种类
	public List<Jdgood2> getAllJdgood2ByJdgood(int jid) throws Exception;
	//查1
	public Jdgood2 getJdgoodById(String jid) throws Exception;

	//根据商品种类名字得到Jdgood2
	public Jdgood2 getJdgoodByName(String jname) throws Exception;
	//查询指定二级种类的父亲一级种类的jid  
	//形参: jid 二级种类的jid
	//返回值: 所属一级种类的jid
	public int getParentJdgoodById(int jid) throws Exception;
	
	//查询所有二级商品种类
	public List<Jdgood2> getAllJdgoods() throws Exception;
	//删除单个二级商品种类
	public int deleteJdgoodById(String jid) throws Exception;
	//修改二级商品种类
	public int updateJdgood(Jdgood2 jdgood) throws Exception;
	//按照分页查询二级商品种类
	public List<Jdgood2> getPageByQuery(PageInfo pageInfo) throws Exception;
	//查询总共有多少条记录
	public int getTotalRecordCount() throws Exception;
	//根据条件查询 然后分页
	public List<Jdgood2> getPageByQuery(Jdgood2 jdgood,PageInfo pageInfo) throws Exception;
	//根据条件查询 总共有多少条记录
	public int getTotalRecordCount(Jdgood2 jdgood) throws Exception;
	
}
