package com.service.inter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.vo.Jdproduct;

public interface ShoppingCartService {

	//把商品加入购物车
	public void addToCart(HttpSession session,Jdproduct category2,int ProductSum);
	//把商品删除购物车
}
