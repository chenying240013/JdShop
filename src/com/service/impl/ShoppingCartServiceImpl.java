package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.service.inter.ShoppingCartService;
import com.vo.Jdproduct;

public class ShoppingCartServiceImpl implements ShoppingCartService{

	@Override
	public void addToCart(HttpSession session,Jdproduct category2,int ProductSum) {
		List<Jdproduct> list = (List<Jdproduct>)session.getAttribute("shoppingCart");
		if(list==null){
			//第一次买东西
			list = new ArrayList<Jdproduct>();
			list.add(category2);
			
			//加入购物车
		}else{
			//第二次买东西
			int pid = category2.getPid();
			
			boolean ifBeforeBuy = false;
			
			//查看一下 以前 是否 买过
			for(Jdproduct oldProduct:list){
				
				if(oldProduct.getPid()==pid){//如果以前买过这个东西
					//数量+1
					
					int shoppingCarSum = oldProduct.getProductSum();
					oldProduct.setProductSum(shoppingCarSum+ProductSum);
					ifBeforeBuy = true;
					break;
				}
			}
			
			if(!ifBeforeBuy){//之前如果没买过
				list.add(category2);//加入购物车
			}
			
		}
		session.setAttribute("shoppingCart", list);
	}
	
	
}
