package com.vo;

public class Jdadmin {
	private Integer userid;    
	private String  username;//用户名
	private String  passwords;//密码
	private String  othername;//外号
	private Integer age;//年龄
	private String  sex;//性别
	private String  userdesc;//个人描述
	private Integer iswork  ;//激活状态
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPasswords() {
		return passwords;
	}
	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}
	public String getOthername() {
		return othername;
	}
	public void setOthername(String othername) {
		this.othername = othername;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserdesc() {
		return userdesc;
	}
	public void setUserdesc(String userdesc) {
		this.userdesc = userdesc;
	}
	public Integer getIswork() {
		return iswork  ;
	}
	public void setIswork(Integer iswork  ) {
		this.iswork   = iswork  ;
	}
	@Override
	public String toString() {
		return "Jdadmin [userid=" + userid + ", username=" + username + ", passwords=" + passwords + ", othername="
				+ othername + ", age=" + age + ", sex=" + sex + ", userdesc=" + userdesc + ", iswork  =" + iswork  
				+ "]";
	}
	
	
}
