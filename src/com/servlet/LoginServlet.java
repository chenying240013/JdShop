package com.servlet;


import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.service.impl.LoginServiceImpl;
import com.service.inter.LoginService;
import com.util.MailUtils;
import com.util.Random;
import com.vo.Jdproduct;
import com.vo.Login;


public class LoginServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		// 分发请求
		String action = request.getParameter("action");

		if("add".equals(action)){	
			this.add(request,response);
		}else if("getAllLogins".equals(action)){	
			this.getAllLogins(request,response);
		}else if("login".equals(action)){	
			this.login(request,response);
		}else if("checkUsername".equals(action)){	
			this.checkUsername(request,response);
		}else if("checkEmail".equals(action)){	
			this.checkEmail(request,response);
		}else if("checkPhone".equals(action)){	
			this.checkPhone(request,response);
		}else if("active".equals(action)){
			this.active(request,response);			
		}else if("pictureCheck".equals(action)){
			this.pictureCheck(request,response);			
		}else if("logout".equals(action)){
			this.logout(request,response);			
		}			
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}	

	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		//一.填充数据
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String mail = request.getParameter("mail");
		String phoneNumber = request.getParameter("phoneNumber");
		String code=Random.getCode();
		//发送邮件
		try {
			MailUtils.sendMail(mail, code);
		} catch (AddressException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (MessagingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		Login login = new Login();								
		login.setUsername(username);
		login.setPassword(password);
		login.setMail(mail);
		login.setCode(code);
		login.setPhoneNumber(phoneNumber);
		System.out.println("");
		Login user;	
		
		//二.调用业务逻辑
		LoginService service = new LoginServiceImpl();
			try {
				service.addLogin(login);
				request.setAttribute("msg", username);
				target = "/WEB-INF/jsp/JD/registeSuccess.jsp";
			} catch (Exception e) {
				request.setAttribute("msg", "注册失败");
				e.printStackTrace();
			}
			
		//三.转发视图
		
		RequestDispatcher rd = request.getRequestDispatcher(target);
		
		rd.forward(request, response);
	}
	
	public void getAllLogins(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//1.填充数据
		//2.调用业务逻辑
		LoginService service = new LoginServiceImpl();
		String target = request.getParameter("target");
		try {
			List<Login> list = service.getAllLogin();			
			request.setAttribute("list", list);
			target = "/WEB-INF/jsp/JD/"+ target;
			System.out.println(target);
		} catch (Exception e) {
			request.setAttribute("msg", "查询用户信息失败!");
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
		}
		//3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("loginSerlet中的login方法");
		String target = "";
		//一.填充数据
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		//二.调用业务逻辑 
		try {
			LoginServiceImpl service = new LoginServiceImpl();
			Login user = service.login(username, password);
			
			if(user!=null){//根据用户名和密码找到了该用户
				
				Integer isActive = user.getIsActive();
				System.out.println("isActive="+isActive);
				if(isActive==1){//登录成功 
				
					HttpSession session = request.getSession(true);
					session.setAttribute("user", user);//把user对象存到session中 以后每个页面中都可以取出来使用
					
					String toWhere = (String)session.getAttribute("toWhere");
					System.out.println("toWhere="+toWhere);
					if(toWhere==null||toWhere.trim().equals("")){
						//跳到京东首页 firstPage
						//查询商品种类 用来显示首页的菜单
						//CategoryService categoryService = new CategoryServiceImpl();
						//List<Category> list = categoryService.getAllCategorys();
						//request.setAttribute("list", list);
						target = "/jsp/user/index.jsp";
					}else if("jiesuan".equals(toWhere)){
						//跳到 结算页
						//查询购物车里的东西 在结算页  再显示一遍  为了确认
						List<Jdproduct> list = (List<Jdproduct>)session.getAttribute("shoppingCart");
						//三.转发视图
						request.setAttribute("list", list);
						target="WEB-INF/jsp/JD/jiesuan.jsp";
					}
					
					
										
				}else{
					//登录失败 跳回登录页面 显示 "用户尚未激活,请激活后再尝试登录"
					
					request.setAttribute("msg", "用户尚未激活,请激活后再尝试登录");
					target = "/jsp/user/login.jsp";
				}
			}else{
				//登录失败 跳回登录页面 显示 "用户名或密码错误"	
				System.out.println("用户不存在");
				request.setAttribute("msg", "用户名或密码错误");
				target = "/jsp/user/login.jsp";
			}
		} catch (Exception e) {
			target = "/WEB-INF/msg.jsp";
			request.setAttribute("msg","登录失败 请回到登录页面从新登录");
			e.printStackTrace();
		}	
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	private void checkUsername(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("checkUsername 的servlet");
		//一.填充数据
		String username = request.getParameter("username");		
		System.out.println(username);
		//二.调用业务逻辑
		LoginServiceImpl service = new LoginServiceImpl();
		try {
			boolean isExist = service.checkUsername(username);
			System.out.println("servlet中的isExist="+isExist);
			response.getWriter().write("{\"isExist\":"+isExist+"}");
		} catch (Exception e1) {			
			System.out.print("校验用户名失败");
			e1.printStackTrace();
		}
		
	}
	
	private void checkEmail(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("checkEmail 的servlet");
		//一.填充数据
		String email = request.getParameter("email");		
		System.out.println(email);
		//二.调用业务逻辑
		LoginServiceImpl service = new LoginServiceImpl();
		try {
			boolean isExist = service.checkEmail(email);
			System.out.println("servlet中的isExist="+isExist);
			response.getWriter().write("{\"isExist\":"+isExist+"}");
		} catch (Exception e1) {			
			System.out.print("校验邮箱是否存在失败");
			e1.printStackTrace();
		}
		
	}
	
	private void checkPhone(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("checkPhone 的servlet");
		//一.填充数据
		String phoneNumber = request.getParameter("phoneNumber");		
		System.out.println(phoneNumber);
		//二.调用业务逻辑
		LoginServiceImpl service = new LoginServiceImpl();
		try {
			boolean isExist = service.checkPhone(phoneNumber);
			System.out.println("servlet中的isExist="+isExist);
			response.getWriter().write("{\"isExist\":"+isExist+"}");
		} catch (Exception e1) {			
			System.out.print("校验手机号是否存在失败");
			e1.printStackTrace();
		}		
	}
	
	//邮箱验证
	public void active(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("servlet中的active");
		//1.获取激活码
		String target ="";
		String code=request.getParameter("code");
		//2.调用业务层功能
		LoginService service=new LoginServiceImpl();
		boolean flag=service.uerActive(code);
		//3.进行激活信息提示
		if(flag==true){
			//用户激活成功，向request放入提示信息，转发到登录界面
			request.setAttribute("msg","用户激活成功，请登录！");
			target= "/jsp/user/login.jsp";			
		}else{
			//用户激活失败，向request放入提示信息，转发到提示界面
			request.setAttribute("msg","用户激活失败，请重新激活！");
			target= "/WEB-INF/msg.jsp";			
		}
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	public void pictureCheck(HttpServletRequest request, HttpServletResponse response) {
		//获取客户端输入的验证码
		String checkCodeClient=request.getParameter("checkcode");
		System.out.println("checkCodeClient:"+checkCodeClient);
		int resultTip=0;
		//获取服务端session中的验证码
		String checkcodeServer=(String)(request.getSession().getAttribute("CHECKCODE"));
		System.out.println("checkcodeServer:"+checkcodeServer);
		//比较客户端与服务端中的验证码
		if(checkCodeClient.equalsIgnoreCase(checkcodeServer)){
			resultTip=1;
			System.out.println("成功");
		}else{			
			resultTip=0;
			System.out.println("失败");
		}
		//以IO流的方式，返回resultTip值，提示图片路径		
			PrintWriter pw;		
			try {
				pw = response.getWriter();
				pw.print(resultTip);
				pw.flush();
				pw.close();
			} catch (IOException e) {
				System.out.println("传输失败");
				e.printStackTrace();
			}					
	}
	//用户退出
	public void logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String target="";
			HttpSession session = request.getSession(true);
			session.invalidate();
			target="/jsp/user/login.jsp";
			//3.转发视图
			request.getRequestDispatcher(target).forward(request, response);
	}
	
}
