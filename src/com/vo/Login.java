package com.vo;

//java     数据库
//1.类		表
//2.属性	        字段
/*
 * 	  lid    number(10)  primary key,
      username  varchar2(50)  unique,
      password  varchar2(50),
       mail varchar2(50),
      isActive  number(1),--1 已激活   0  未激活
      nickname  varchar2(50),
      address    varchar2(200),
      phoneNumber  varchar2(12)
 * */
public class Login {

	private int lid;
	private String username;
	private String password;
	private String mail;
	private int isActive;
	private String code;
	private String phoneNumber;
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	@Override
	public String toString() {
		return "Login [lid=" + lid + ", username=" + username + ", password=" + password + ", mail=" + mail
				+ ", isActive=" + isActive  +", code=" + code  +", phoneNumber=" + phoneNumber  + "]";
	}

	
}
	