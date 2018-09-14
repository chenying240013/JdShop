package com.service.impl;

import java.util.List;


import com.dao.impl.JdgoodDaoImpl;
import com.dao.inter.JdgoodDao;
import com.page.PageInfo;
import com.service.inter.JdgoodService;

import com.vo.Jdgood;
import com.vo.Jdgood2;

public class JdgoodServiceImpl implements JdgoodService {
	private JdgoodDao dao;
	public JdgoodServiceImpl() {
		dao = new JdgoodDaoImpl();
	}

	@Override
	public int addJdgood(Jdgood jdgood) throws Exception {

		int count = dao.addJdgood(jdgood);
		return count;
	}

	@Override
	public List<Jdgood> getAllJdgoods() throws Exception {
		List<Jdgood> list = null;
				
		String sql = "select * from jdgood";
		list = dao.getPageByQuery(sql);
		return list;
	}

	@Override
	public int deleteJdgoodById(String jid) throws Exception {
		Jdgood jdgood = new Jdgood();
		jdgood.setJid(Integer.parseInt(jid));
		int count = dao.deleteJdgood(jdgood);
		
		return count;
	}

	@Override
	public Jdgood getJdgoodById(String jid) throws Exception {
		Jdgood jdgood = null;
		jdgood = dao.getJdgoodById(Integer.parseInt(jid));
		return jdgood;
	}

	@Override
	public int updateJdgood(Jdgood jdgood) throws Exception {

		int count = dao.updateJdgood(jdgood);
		return count;
	}

	@Override
	public List<Jdgood> getPageByQuery(PageInfo pageInfo) throws Exception {
		List<Jdgood> list = null;
		String sql = "select * from (select c.*,rownum r from jdgood c ) where r>=" + pageInfo.getBegin() + " and r<=" + pageInfo.getEnd();
		System.out.println(sql);
		list = dao.getPageByQuery(sql);
		
		return list;
	}

	@Override
	public int getTotalRecordCount() throws Exception {

		String sql = "select count(*) from jdgood";
		int totalRecordSum = dao.getTotalRecordCount(sql);
		return totalRecordSum;
	}

	@Override
	public List<Jdgood> getPageByQuery(Jdgood jdgood, PageInfo pageInfo) throws Exception {
		List<Jdgood> list = null;

		// String sql =
		// "select * from (select c.*,rownum r from category c where 1=1 and cname='商品种类名称' or cdesc like '%111%') where r>=11 and r<=15"

		StringBuffer sb = new StringBuffer(
				"select * from (select c.*,rownum r from jdgood c where 1=1" );

		String jname = jdgood.getJname();
		

		if (jname != null && !jname.trim().equals("")) {

			sb.append(" and jname='");
			sb.append(jname);
			sb.append("'");
			sb.append(" or jname like '%");
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
		JdgoodServiceImpl service = new JdgoodServiceImpl();

		Jdgood jdgood = new Jdgood();
		
		PageInfo pageInfo = new PageInfo(1);
		
		List<Jdgood> list = service.getPageByQuery(jdgood, pageInfo);
		
		for(Jdgood temp:list){
			System.out.println(temp);
		}
		
	}
	@Override
	public int getTotalRecordCount(Jdgood jdgood) throws Exception {
		int totalRecordCount = -1;

		StringBuffer sb = new StringBuffer("select count(*) from jdgood where 1=1");
		
		String jname = jdgood.getJname();
		

		if (jname != null && !jname.trim().equals("")) {

			sb.append(" and jname='");
			sb.append(jname);
			sb.append("'");
			sb.append(" or jname like '%");
			sb.append(jname);
			sb.append("%'");
		}
		
		
		String sql = sb.toString();
		totalRecordCount = dao.getTotalRecordCount(sql);
		return totalRecordCount;
	
	}



}
