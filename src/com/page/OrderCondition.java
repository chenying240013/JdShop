package com.page;

public class OrderCondition {
	// 条件
	private String orderCondition = "price";// 默认按商品名称排序
	private String ascOrDesc = "asc";// 默认升序
	
	public String getOrderCondition() {
		return orderCondition;
	}
	public void setOrderCondition(String orderCondition) {
		this.orderCondition = orderCondition;
	}
	public String getAscOrDesc() {
		return ascOrDesc;
	}
	public void setAscOrDesc(String ascOrDesc) {
		this.ascOrDesc = ascOrDesc;
	}
	
	
}
