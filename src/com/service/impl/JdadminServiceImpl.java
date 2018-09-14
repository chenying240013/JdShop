package com.service.impl;

import java.util.List;

import com.dao.impl.JdadminDaoImpl;
import com.service.inter.JdadminService;
import com.vo.Jdadmin;

public class JdadminServiceImpl implements JdadminService{
	private JdadminDaoImpl dao = new JdadminDaoImpl();
	public Jdadmin login(String username, String password) throws Exception{
		
		Jdadmin user = null;
		
		String sql = "select * from Jdadmin where username='" + username+ "' and passwords='" + password + "'";
		List<Jdadmin> list = dao.getPageByQuery(sql);
		if(list.size()>0){
			//”√ªß¥Ê‘⁄
			user = list.get(0);
			
		}
		
		return user;
	}

}
