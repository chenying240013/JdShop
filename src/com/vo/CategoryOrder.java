package com.vo;

import java.sql.Date;

public class CategoryOrder {
	private Integer oid; //订单编号
	private Date otime; //下单时间
	private Integer total; //总计
	private Integer ostate; //状态
	private String address; //收货人地址
	private String name; //收货人姓名
	private Integer telephone; //收货人电话
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public Date getOtime() {
		return otime;
	}
	public void setOtime(Date otime) {
		this.otime = otime;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getOstate() {
		return ostate;
	}
	public void setOstate(Integer ostate) {
		this.ostate = ostate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getTelephone() {
		return telephone;
	}
	public void setTelephone(Integer telephone) {
		this.telephone = telephone;
	}
	@Override
	public String toString() {
		return "CategoryOrder [oid=" + oid + ", otime=" + otime + ", total=" + total + ", ostate=" + ostate
				+ ", address=" + address + ", name=" + name + ", telephone=" + telephone + "]";
	}
	
}
