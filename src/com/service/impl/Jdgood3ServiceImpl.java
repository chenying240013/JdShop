package com.service.impl;

import java.util.List;

import com.dao.impl.Jdgood3DaoImpl;

import com.dao.inter.Jdgood3Dao;
import com.page.PageInfo;
import com.service.inter.Jdgood3Service;

import com.vo.Jdgood;
import com.vo.Jdgood3;

public class Jdgood3ServiceImpl implements Jdgood3Service{
	private Jdgood3Dao dao;

	public Jdgood3ServiceImpl() {
		dao = new Jdgood3DaoImpl();
	}

	@Override
	public int addJdgood(Jdgood3 jdgood) throws Exception {

		int count = dao.addJdgood(jdgood);
		return count;
	}

	// 查询二级商品种类下的三级商品种类数量
	public int getJdgood3SumByJdgood(String fid) throws Exception {

		int count = 0;
		String sql = "select count(*) from jdgood3 where fid=" + fid;
		count = dao.getTotalRecordCount(sql);
		return count;
	}

	// 查询二级商品种类下对应的三级商品种类
	public List<Jdgood3> getAllJdgood3ByJdgood(int j2id) throws Exception {
		List<Jdgood3> list = null;

		String sql = "select * from jdgood3 where fid=" + j2id;
		list = dao.getPageByQuery(sql);
		return list;
	}

	

	// 根据商品种类名字得到Jdgood3
	public Jdgood3 getJdgoodByName(String jname) throws Exception {
		Jdgood3 jdgood3 = null;
		String sql = "select * from Jdgood3 where j3name='" + jname + "'";
		List<Jdgood3> list = dao.getPageByQuery(sql);
		if (list.size() > 0) {
			jdgood3 = list.get(0);
		}
		return jdgood3;
	}

	// 查询指定三级种类的父亲二级种类的jid
	// 形参: jid 三级种类的jid
	// 返回值: 所属二级种类jcid
	public int getParentJdgoodById(int jid) throws Exception{
		int parentCid = 0;
		String sql = "select fid from jdgood3 where j3id=" + jid;
		try {
			parentCid = dao.getTotalRecordCount(sql);
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("查询三级种类对应的二级商品种类失败");
			
		}
		return parentCid;
	}

	@Override
	public List<Jdgood3> getAllJdgoods() throws Exception {
		List<Jdgood3> list = null;
				
		String sql = "select * from jdgood3";
		list = dao.getPageByQuery(sql);
		return list;
	}

	@Override
	public int deleteJdgoodById(String jid) throws Exception {
		Jdgood3 jdgood = new Jdgood3();
		jdgood.setJ3id(Integer.parseInt(jid));
		int count = dao.deleteJdgood(jdgood);
		
		return count;
	}

	@Override
	public Jdgood3 getJdgoodById(String jid) throws Exception {
		Jdgood3 jdgood = null;
		jdgood = dao.getJdgoodById(Integer.parseInt(jid));
		return jdgood;
	}

	@Override
	public int updateJdgood(Jdgood3 jdgood) throws Exception {

		int count = dao.updateJdgood(jdgood);
		return count;
	}

	@Override
	public List<Jdgood3> getPageByQuery(PageInfo pageInfo) throws Exception {
		List<Jdgood3> list = null;
		String sql = "select * from (select c.*,rownum r from jdgood3 c) where r>=" + pageInfo.getBegin() + " and r<=" + pageInfo.getEnd();
		System.out.println(sql);
		list = dao.getPageByQuery(sql);
		
		return list;
	}
	
	@Override
	public int getTotalRecordCount() throws Exception {

		String sql = "select count(*) from jdgood3";
		int totalRecordSum = dao.getTotalRecordCount(sql);
		return totalRecordSum;
	}

	@Override
	public List<Jdgood3> getPageByQuery(Jdgood3 jdgood, PageInfo pageInfo) throws Exception {
		List<Jdgood3> list = null;

		// String sql =
		// "select * from (select c.*,rownum r from category c where 1=1 and cname='商品种类名称' or cdesc like '%111%') where r>=11 and r<=15"

		StringBuffer sb = new StringBuffer(
				"select * from (select c.*,rownum r from jdgood3 c where 1=1");

		String jname = jdgood.getJ3name();
		

		if (jname != null && !jname.trim().equals("")) {

			sb.append(" and j3name='");
			sb.append(jname);
			sb.append("'");
			sb.append(" or j3name like '%");
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
		Jdgood3ServiceImpl service = new Jdgood3ServiceImpl();

		Jdgood3 jdgood = new Jdgood3();
		
		PageInfo pageInfo = new PageInfo(1);
		
		List<Jdgood3> list = service.getPageByQuery(jdgood, pageInfo);
		
		for(Jdgood3 temp:list){
			System.out.println(temp);
		}
		
	}
	@Override
	public int getTotalRecordCount(Jdgood3 jdgood) throws Exception {
		int totalRecordCount = -1;

		StringBuffer sb = new StringBuffer("select count(*) from jdgood3 where 1=1");
		
		String jname = jdgood.getJ3name();
		

		if (jname != null && !jname.trim().equals("")) {

			sb.append(" and j3name='");
			sb.append(jname);
			sb.append("'");
			sb.append(" or j3name like '%");
			sb.append(jname);
			sb.append("%'");
		}
		
		
		String sql = sb.toString();
		totalRecordCount = dao.getTotalRecordCount(sql);
		return totalRecordCount;
	
	}

	


	
	
	
}
