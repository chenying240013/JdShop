package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.impl.JdgoodServiceImpl;
import com.service.impl.JdadminServiceImpl;
import com.service.inter.JdgoodService;
import com.vo.Jdgood;
import com.vo.Jdproduct;
import com.vo.Jdadmin;

public class JdadminServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getParameter("action");
		if("login".equals(action)){
			this.login(request,response);
		}else if("logout".equals(action)){
			this.logout(request,response);
		}
		
		
		
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String target = "";
		//一.填充数据
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//二.调用业务逻辑 
		try {
			JdadminServiceImpl service = new JdadminServiceImpl();
			Jdadmin user = service.login(username, password);
			
			if(user!=null){//根据用户名和密码找到了该用户
				
				Integer isActive = user.getIswork();
				if(isActive==1){//登录成功 
				
					HttpSession session = request.getSession(true);
					session.setAttribute("admin", user);//把user对象存到session中 以后每个页面中都可以取出来使用
					//跳到后台管理页 jdHoutai.jsp
					//查询商品种类 用来显示首页的菜单
					JdgoodService categoryService = new JdgoodServiceImpl();
					List<Jdgood> list = categoryService.getAllJdgoods();
					request.setAttribute("list", list);
					target = "/jsp/admin/jdHoutai.jsp";
				}else{
					//登录失败 跳回登录页面 显示 "用户尚未激活,请激活后再尝试登录"
					request.setAttribute("msg", "用户尚未激活,请激活后再尝试登录");
					target = "/jsp/user/CyAdmin.jsp";
				}
			}else{
				//登录失败 跳回登录页面 显示 "用户名或密码错误"
				request.setAttribute("msg", "用户名或密码错误,请重新输入");
				target = "/jsp/user/CyAdmin.jsp";
			}
		} catch (Exception e) {
			target = "/WEB-INF/msg.jsp";
			request.setAttribute("msg","登录失败 请回到登录页面从新登录");
			e.printStackTrace();
		}
		
		//三.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}

	public void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String target = "";
		//一.填充数据
		//二.调用业务逻辑
		//退出登录 注销session即可
		HttpSession session = request.getSession(true);
		session.invalidate();
		//三.转发视图
		target = "/jsp/user/CyAdmin.jsp";
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
