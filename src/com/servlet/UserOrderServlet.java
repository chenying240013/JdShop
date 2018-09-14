package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.impl.JdproductServiceImpl;
import com.service.impl.JdproductServiceImpl;
import com.service.impl.ShoppingCartServiceImpl;
import com.service.impl.UserOrderSerivceImpl;
import com.vo.Jdproduct;
import com.vo.CategoryOrder;
import com.vo.Jdproduct;
import com.vo.Login;

/**
 * Servlet implementation class UserOrderServlet
 */
public class UserOrderServlet extends HttpServlet {
		String target="";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action=request.getParameter("action");
		if("add".equals(action)){
			this.add(request,response);
		}else if("getAll".equals(action)){
			this.getAll(request,response);
		}else if("delete".equals(action)){
			this.delete(request,response);
		}else if("paymentByAll".equals(action)){
			this.paymentByAll(request,response);
		}
	}
	//添加（生成订单）
	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				System.out.println("add");
				//一.填充数据
				String cname = request.getParameter("cname");
				String cdesc = request.getParameter("cdesc");
				String cprice = request.getParameter("cprice");
				String dianpuName = request.getParameter("dianpuName");
				
				CategoryOrder cateorder= new CategoryOrder();
//				cateorder.setCprice(Integer.parseInt(cprice));
//				cateorder.setDianpuname(dianpuName);
				UserOrderSerivceImpl service = new UserOrderSerivceImpl();
				try {
					//二.调用业务逻辑
					service.addOrder(cateorder);
					request.setAttribute("msg", "添加一级商品种类成功");
				} catch (Exception e) {
					request.setAttribute("msg", "添加一级商品种类失败");
					e.printStackTrace();
				}
				//三.转发视图
				target = "/WEB-INF/msg.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(target);
				rd.forward(request, response);
	}
	
	//查询所有订单
	protected void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("test");
			UserOrderSerivceImpl service =new UserOrderSerivceImpl();
		try {
			List<CategoryOrder> list = service.getAllOrder();
			request.setAttribute("list", list);
			if(list==null||list.size()==0){
				target = "/WEB-INF/msg.jsp";
				request.setAttribute("msg", "暂时没有订单，登录后将显示您之前加入的商品 ");
			}else{
				HttpSession session = request.getSession(true);
				request.setAttribute("list", list);
				target="/WEB-INF/jsp/admin/OrderCategory/categoryMain.jsp";
				
			}
			
		} catch (Exception e) {
			request.setAttribute("msg", "查询一级商品种类失败!");
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
		}
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	//删除订单信息
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid = request.getParameter("cid");
		UserOrderSerivceImpl service =new UserOrderSerivceImpl();

		// 一.填充数据
		try {
			service.deleteOrderById(cid);
			this.getAll(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			target = "/WEB-INF/msg.jsp";
			e.printStackTrace();
			// 三.转发视图
			request.getRequestDispatcher(target).forward(request, response);
		}
	
	}
	

	protected void paymentByAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("支付成功");
//		String cid = request.getParameter("cid");
//		UserOrderSerivceImpl service = new UserOrderSerivceImpl();
//		CategoryOrder cateorder  = new CategoryOrder();
//		try {
//			CategoryOrder categoryOrderpay = service.getOrderById(cid);
//			request.setAttribute("categoryOrderpay",categoryOrderpay);
//		} catch (Exception e) {
//			request.setAttribute("msg", e.getMessage());
//			target = "/WEB-INF/msg.jsp";
//			e.printStackTrace();
//			// 三.转发视图
//			request.getRequestDispatcher(target).forward(request, response);
//		}
	
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
