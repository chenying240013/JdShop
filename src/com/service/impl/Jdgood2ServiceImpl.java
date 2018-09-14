package com.service.impl;

import java.util.List;

import com.dao.impl.Jdgood2DaoImpl;

import com.dao.inter.Jdgood2Dao;
import com.page.PageInfo;
import com.service.inter.Jdgood2Service;

import com.vo.Jdgood;
import com.vo.Jdgood2;

public class Jdgood2ServiceImpl implements Jdgood2Service{
	private Jdgood2Dao dao;

	public Jdgood2ServiceImpl() {
		dao = new Jdgood2DaoImpl();
	}

	@Override
	public int addJdgood(Jdgood2 jdgood) throws Exception {

		int count = dao.addJdgood(jdgood);
		return count;
	}

	// 查询一级商品种类下的二级商品种类数量
	public int getJdgood2SumByJdgood(String fid) throws Exception {

		int count = 0;
		String sql = "select count(*) from jdgood2 where fid=" + fid;
		count = dao.getTotalRecordCount(sql);
		return count;
	}

	// 查询一级商品种类下对应的二级商品种类
	public List<Jdgood2> getAllJdgood2ByJdgood(int jid) throws Exception {
		List<Jdgood2> list = null;

		String sql = "select * from jdgood2 where fid=" + jid;
		list = dao.getPageByQuery(sql);
		return list;
	}

	

	// 根据商品种类名字得到Jdgood2
	public Jdgood2 getJdgoodByName(String jname) throws Exception {
		Jdgood2 jdgood2 = null;
		String sql = "select * from Jdgood2 where j2name='" + jname + "'";
		List<Jdgood2> list = dao.getPageByQuery(sql);
		if (list.size() > 0) {
			jdgood2 = list.get(0);
		}
		return jdgood2;
	}

	// 查询指定二级种类的父亲一级种类的jid
	// 形参: jid 二级种类的jid
	// 返回值: 所属一级种类jcid
	public int getParentJdgoodById(int jid) throws Exception{
		int parentCid = 0;
		String sql = "select fid from jdgood2 where j2id=" + jid;
		try {
			parentCid = dao.getTotalRecordCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("查询二级种类对应的一级商品种类失败");
			
		}
		return parentCid;
	}

	@Override
	public List<Jdgood2> getAllJdgoods() throws Exception {
		List<Jdgood2> list = null;
				
		String sql = "select * from jdgood2";
		list = dao.getPageByQuery(sql);
		return list;
	}

	@Override
	public int deleteJdgoodById(String jid) throws Exception {
		Jdgood2 jdgood = new Jdgood2();
		jdgood.setJ2id(Integer.parseInt(jid));
		int count = dao.deleteJdgood(jdgood);
		
		return count;
	}

	@Override
	public Jdgood2 getJdgoodById(String jid) throws Exception {
		Jdgood2 jdgood = null;
		jdgood = dao.getJdgoodById(Integer.parseInt(jid));
		return jdgood;
	}

	@Override
	public int updateJdgood(Jdgood2 jdgood) throws Exception {

		int count = dao.updateJdgood(jdgood);
		return count;
	}

	@Override
	public List<Jdgood2> getPageByQuery(PageInfo pageInfo) throws Exception {
		List<Jdgood2> list = null;
		String sql = "select * from (select c.*,rownum r from jdgood2 c) where r>=" + pageInfo.getBegin() + " and r<=" + pageInfo.getEnd();
		System.out.println(sql);
		list = dao.getPageByQuery(sql);
		
		return list;
	}
	
	@Override
	public int getTotalRecordCount() throws Exception {

		String sql = "select count(*) from jdgood2";
		int totalRecordSum = dao.getTotalRecordCount(sql);
		return totalRecordSum;
	}

	@Override
	public List<Jdgood2> getPageByQuery(Jdgood2 jdgood, PageInfo pageInfo) throws Exception {
		List<Jdgood2> list = null;

		// String sql =
		// "select * from (select c.*,rownum r from category c where 1=1 and cname='商品种类名称' or cdesc like '%111%') where r>=11 and r<=15"

		StringBuffer sb = new StringBuffer(
				"select * from (select c.*,rownum r from jdgood2 c where 1=1");

		String jname = jdgood.getJ2name();
		

		if (jname != null && !jname.trim().equals("")) {

			sb.append(" and j2name='");
			sb.append(jname);
			sb.append("'");
			sb.append(" or j2name like '%");
			sb.append(jname);
			sb.append("%'");
		}
		
		
		
		sb.append(") where r>=");
		sb.append(pageInfo.getBegin());
		sb.append(" and r<=");
		sb.append(pageInfo.getEnd());
		
		String sql = sb.toString();
		System.out.println(sql);

		list = dao.getPageByQuery(sql);
		return list;
	}
	
	public static void main(String[] args) throws Exception {
		Jdgood2ServiceImpl service = new Jdgood2ServiceImpl();

		Jdgood2 jdgood = new Jdgood2();
		
		PageInfo pageInfo = new PageInfo(1);
		
		List<Jdgood2> list = service.getPageByQuery(jdgood, pageInfo);
		
		for(Jdgood2 temp:list){
			System.out.println(temp);
		}
		
	}
	@Override
	public int getTotalRecordCount(Jdgood2 jdgood) throws Exception {
		int totalRecordCount = -1;

		StringBuffer sb = new StringBuffer("select count(*) from jdgood2 where 1=1");
		
		String jname = jdgood.getJ2name();
		

		if (jname != null && !jname.trim().equals("")) {

			sb.append(" and j2name='");
			sb.append(jname);
			sb.append("'");
			sb.append(" or j2name like '%");
			sb.append(jname);
			sb.append("%'");
		}
		
		
		String sql = sb.toString();
		totalRecordCount = dao.getTotalRecordCount(sql);
		return totalRecordCount;
	
	}

	


	
	
	
}
