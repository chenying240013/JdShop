package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.page.PageInfo;

import com.service.impl.Jdgood2ServiceImpl;
import com.service.impl.JdgoodServiceImpl;

import com.service.inter.Jdgood2Service;
import com.service.inter.JdgoodService;

import com.vo.Jdgood;
import com.vo.Jdgood2;

public class JdgoodServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if ("add".equals(action)) {
			this.add(request, response);
		} else if ("getAll".equals(action)) {
			this.getAll(request, response);
		} else if ("delete".equals(action)) {
			this.delete(request, response);
		} else if ("getOneForUpdate".equals(action)) {
			this.getOneForUpdate(request, response);
		} else if ("update".equals(action)) {
			this.update(request, response);
		} else if ("getAllByPage".equals(action)) {
			this.getAllByPage(request, response);
		}else if("getPageByQuery".equals(action)){	
			this.getPageByQuery(request,response);
		}else if("getMenuForFirstPage".equals(action)){	
			this.getMenuForFirstPage(request,response);
		}else if("testjd".equals(action)){	
			this.testjd(request,response);
		}

	}

	public void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String target = "";
		// 一.填充数据
		String jname = request.getParameter("jname");


		// 二.调用业务逻辑
		Jdgood jdgood = new Jdgood();
		jdgood.setJname(jname);
		

		JdgoodService service = new JdgoodServiceImpl();
		try {
			service.addJdgood(jdgood);
			request.setAttribute("msg", "添加一级商品种类成功");
		} catch (Exception e) {
			request.setAttribute("msg", "添加一级商品种类失败");
			e.printStackTrace();
		}
		// 三.转发视图
		target = "/WEB-INF/msg.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(target);

		rd.forward(request, response);
	}

	public void getAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		// 1.填充数据
		// 2.调用业务逻辑
		JdgoodService service = new JdgoodServiceImpl();

		try {
			List<Jdgood> list = service.getAllJdgoods();

			request.setAttribute("list", list);

			target = "/WEB-INF/jsp/admin/jdgood/jdgoodMain.jsp";

		} catch (Exception e) {

			request.setAttribute("msg", "查询一级商品种类失败");
			target = "/WEB-INF/msg.jsp";

			e.printStackTrace();
		}
		// 3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}

	public void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		//1.填充数据
		String cid = request.getParameter("jid");
		
		//2.调用业务逻辑
		try {
			//删除前 应该先查询有没有对应的二级商品种类
			Jdgood2Service service = new Jdgood2ServiceImpl();
			
			int count = service.getJdgood2SumByJdgood(cid);
			if(count>0){//有对应的二级商品种类		
				request.setAttribute("msg", "删除失败");
				request.setAttribute("msgDetail", "已找到子种类 请先删除子种类 再继续删除");
			}else{
				JdgoodService service2 = new JdgoodServiceImpl();
				service2.deleteJdgoodById(cid);
				request.setAttribute("msg", "删除成功!");
				
			}
			
			this.getPageByQuery(request, response);
			
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			target = "/WEB-INF/msg.jsp";
			e.printStackTrace();
			//3.转发视图
			request.getRequestDispatcher(target).forward(request, response);
		}


	}

	public void getOneForUpdate(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String target = "";
		// 1.填充数据
		String jid = request.getParameter("jid");

		// 2.调用业务逻辑
		JdgoodService service = new JdgoodServiceImpl();

		try {
			Jdgood jdgood = service.getJdgoodById(jid);
			request.setAttribute("jdgood", jdgood);
			target = "/WEB-INF/jsp/admin/jdgood/updateJdgood.jsp";
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "查询单个一级商品种类失败!");
			target = "/WEB-INF/msg.jsp";
		}
		// 3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}

	public void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		// 1.填充数据
		String jid = request.getParameter("jid");
		String jname = request.getParameter("jname");
		
		// 二.调用业务逻辑
		Jdgood jdgood = new Jdgood();
		jdgood.setJid(Integer.parseInt(jid));
		jdgood.setJname(jname);
		
		// 2.调用业务逻辑
		JdgoodService service = new JdgoodServiceImpl();
		try {
			service.updateJdgood(jdgood);
			request.setAttribute("msg", "修改一级产品种类成功!");
			this.getAllByPage(request, response);
		} catch (Exception e) {
			request.setAttribute("msg", "修改一级产品种类失败!");
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
			// 3.转发视图
			request.getRequestDispatcher(target).forward(request, response);
		}

	}

	public void getAllByPage(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String target = "";
		// 1.填充数据
		String requestPage = request.getParameter("requestPage");
		// 2.调用业务逻辑

		
		try {
			JdgoodServiceImpl service = new JdgoodServiceImpl();
			
			int totalRecordSum = service.getTotalRecordCount();
			
			JdgoodServiceImpl service2 = new JdgoodServiceImpl();

			int intRequestPage = Integer.parseInt(requestPage);
			PageInfo pageInfo = new PageInfo(intRequestPage);
			
			pageInfo.setTotalRecordCount(totalRecordSum);
			
			List<Jdgood> list = service2.getPageByQuery(pageInfo);

			request.setAttribute("list", list);
			request.setAttribute("pageInfo", pageInfo);
			target = "/WEB-INF/jsp/admin/jdgood/JdgoodMain.jsp";

		} catch (Exception e) {

			request.setAttribute("msg", "查询一级商品种类失败");
			target = "/WEB-INF/msg.jsp";

			e.printStackTrace();
		}
		// 3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}
	public void getPageByQuery(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String target = "";
		//1.填充数据
		String searchCondition = request.getParameter("searchCondition");
		
		String requestPage = request.getParameter("requestPage");
		if(requestPage==null){
			
			requestPage = "1";
		}
		
		Jdgood jdgood = new Jdgood();
		
		if(searchCondition!=null&&!searchCondition.trim().equals("")){
			jdgood.setJname(searchCondition);
			
		}
		
		try {
			
			
			//按照条件查询一共多少条记录
			JdgoodService service = new JdgoodServiceImpl();
			
			int totalRecordCount = service.getTotalRecordCount(jdgood);
			PageInfo pageInfo = new PageInfo(Integer.parseInt(requestPage));
			pageInfo.setTotalRecordCount(totalRecordCount);
			//2.调用业务逻辑
			JdgoodService service2 = new JdgoodServiceImpl();

			List<Jdgood> list = service2.getPageByQuery(jdgood, pageInfo);
			request.setAttribute("list", list);
			request.setAttribute("searchCondition", searchCondition);
			request.setAttribute("pageInfo", pageInfo);
			target = "/WEB-INF/jsp/admin/jdgood/JdgoodMain.jsp";
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
		}
		//3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
		
	}
	public void getMenuForFirstPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		String target = "";
		//1.填充数据
		//2.调用业务逻辑
		JdgoodService service = new JdgoodServiceImpl();
		
		try {
			List<Jdgood> list = service.getAllJdgoods();
			
			request.setAttribute("list", list);
			
			target = "/jdchenying/base.jsp";
		} catch (Exception e) {
			request.setAttribute("msg", "查询一级商品种类失败!");
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
		}
		//3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}
	//这是测试
	public void testjd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				
		String target = "";
	
		//1.填充数据
		//2.调用业务逻辑
		JdgoodService service = new JdgoodServiceImpl();
		
		
		
		try {
			List<Jdgood> list = service.getAllJdgoods();
			
			request.setAttribute("list", list);
			
			target = "/WEB-INF/jsp/user/fs.jsp";
		} catch (Exception e) {
			request.setAttribute("msg", "查询二级商品种类失败!");
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
		}
		//3.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	

}
