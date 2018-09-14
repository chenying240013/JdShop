package com.dao.inter;

import java.util.List;

import com.vo.Login;

public interface LoginDao {

	//1.添加
	public int addLogin(Login login) throws Exception;
	//2.删除
	public int deleteLogin(Login login)throws Exception;
	//3.修改
	public int updateLogin(Login login);
	//4.查1
	public Login getLoginById(int id)throws Exception;
	//5.按SQL语句查
	public List<Login> getPageByQuery(String sql) throws Exception;
	public Login userActive(String code);
}
