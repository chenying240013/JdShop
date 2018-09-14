package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.page.OrderCondition;
import com.page.PageInfo;
import com.service.impl.Jdgood2ServiceImpl;
import com.service.impl.Jdgood3ServiceImpl;
import com.service.impl.JdgoodServiceImpl;
import com.service.impl.JdproductServiceImpl;
import com.service.impl.ShoppingCartServiceImpl;
import com.service.impl.UserProductServiceImpl;
import com.service.inter.Jdgood2Service;
import com.service.inter.JdgoodService;
import com.service.inter.JdproductService;
import com.service.inter.UserProductService;
import com.vo.Jdgood;
import com.vo.Jdgood2;
import com.vo.Jdgood3;
import com.vo.Jdproduct;
import com.vo.Login;

public class UserProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");

		if ("getProductListByCategory".equals(action)) {
			this.getProductListByCategory(request, response);
		}else if ("getPageByQuery".equals(action)) {
			this.getPageByQuery(request, response);
		}else if ("getOneProduct".equals(action)) {
			this.getOneProduct(request, response);
		}else if ("getOneProductUrl".equals(action)) {
			this.getOneProductUrl(request, response);
		}else if("addCar".equals(action)){	
			this.addCar(request,response);
		}else if("JieSuan".equals(action)){	
			this.JieSuan(request,response);
		}else if("getAll".equals(action)){
			this.getAll(request, response);
		}else if("deleteCategory".equals(action)){
			this.deleteCategory(request,response);	
		}
		
	}

	public void getProductListByCategory(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		System.out.println("in UsreProductServlet getProductListByCategory!!!");
		String target = "";
		// 一.填充数据
		
		String cid = request.getParameter("cid");// 62 查手机
		System.out.println(cid);
		
		
		String requestPage = request.getParameter("requestPage");
		System.out.println(requestPage);
		//获取一级商品种类
		JdgoodServiceImpl service2 = new JdgoodServiceImpl();
		//获取二级商品种类
		Jdgood2ServiceImpl service3 = new Jdgood2ServiceImpl();
		//获取三级商品种类
		Jdgood3ServiceImpl service4 = new Jdgood3ServiceImpl();
		String orderCondition = request.getParameter("orderCondition");
		String ascOrDesc = request.getParameter("ascOrDesc");
		
		OrderCondition orderConditionObj = new OrderCondition();
		
		if(orderCondition!=null&&!orderCondition.trim().equals("")){
			orderConditionObj.setOrderCondition(orderCondition);
			orderConditionObj.setAscOrDesc(ascOrDesc);
		}
		
		
		// 二.调用业务逻辑
		PageInfo pageInfo = new PageInfo(Integer.parseInt(requestPage), 8);// 每页显示8条记录

		List<Jdproduct> list;
		try {
			
			
			//查询单个二级商品
			Jdgood2 jdgood2 = service3.getJdgoodById(cid);
			
			System.out.println("jdgood2="+jdgood2);
			//获取它的fid
			int fid = jdgood2.getFid();
			System.out.println("fid="+fid);
			//查询一级商品种类下的二级商品种类
			List<Jdgood3> jdgood3s = service4.getAllJdgood3ByJdgood(Integer.parseInt(cid));
			//System.out.println("jdgood2s="+jdgood2s);
			//查询单个一级商品
			Jdgood jdgood = service2.getJdgoodById(Integer.toString(fid));
			// 查询指定商品种类下 总共有多少条商品记录
			UserProductServiceImpl service1 = new UserProductServiceImpl();
			int totalRecordSum = service1.getTotalRecordSumByCategory(cid);
			pageInfo.setTotalRecordCount(totalRecordSum);
			// 根据商品种类 查询 商品
			UserProductServiceImpl service = new UserProductServiceImpl();
			
			
			list = service.getAllByPageByCategory(pageInfo, cid,orderConditionObj);
			// 三.转发视图
			request.setAttribute("jdgood", jdgood);
			request.setAttribute("jdgood2", jdgood2);
			request.setAttribute("jdgood3s", jdgood3s);
			request.setAttribute("totalRecordSum", totalRecordSum);
			request.setAttribute("list", list);
			request.setAttribute("cid", cid);
			request.setAttribute("pageInfo", pageInfo);
			
			request.setAttribute("orderConditionObj", orderConditionObj);
			target = "/WEB-INF/jsp/user/jdlist.jsp";
		} catch (Exception e) {
			target = "/WEB-INF/msg.jsp";
			e.printStackTrace();
		}

		request.getRequestDispatcher(target).forward(request, response);
	}

	public void getPageByQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in getPageByQuery");
		String cid = request.getParameter("cid");
		
		
		System.out.println("cid=" + cid);
		if (cid != null && !cid.trim().equals("")) {
			// 点菜单的商品种类的时候 使用这个
			System.out.println("点菜单过来的");
			this.getProductListByCategory(request, response);
		} else {
			// 搜索框使用
			System.out.println("搜索框使用");
			this.getPageByQuery2(request, response);
		}
	}

	// 搜索框使用这个
	public void getPageByQuery2(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		System.out.println("in UserProductServlet--->getPageByQuery1234");
		String target = "";

		// 一.填充数据

		String requestPage = request.getParameter("requestPage");

		System.out.println("requestPage=" + requestPage);
		if (requestPage == null) {
			requestPage = "1";
		}

		String searchCondition = request.getParameter("searchCondition");
		System.out.println("searchCondition=" + searchCondition);
		
		String orderCondition = request.getParameter("orderCondition");
		System.out.println("orderCondition=" + orderCondition);
		
		String ascOrDesc = request.getParameter("ascOrDesc");
		System.out.println("ascOrDesc=" + ascOrDesc);
		// 二.调用业务逻辑
		PageInfo pageInfo = new PageInfo(Integer.parseInt(requestPage), 8);

		// 按查询条件查询 计算查询结果总共有多少条记录
		UserProductServiceImpl service1 = new UserProductServiceImpl();

		Jdproduct product = new Jdproduct();

		// 如果是按商品种类名称查询 需要把传过来的商品种类名称转换成cid
		Jdgood2Service service = new Jdgood2ServiceImpl();

		
		try {
			Jdgood2 category  = service.getJdgoodByName(searchCondition);
			if (searchCondition != null && !searchCondition.trim().equals("")) {
				product.setPname(searchCondition);

				product.setDianpuName(searchCondition);

				if (category != null) {
					product.setCid(category.getJ2id());
				}

			}

			OrderCondition orderConditionObj = new OrderCondition();
			//设置排序条件
			if(orderCondition!=null&&!orderCondition.trim().equals("")){
				orderConditionObj.setOrderCondition(orderCondition);
				orderConditionObj.setAscOrDesc(ascOrDesc);
				product.setOrderConditionObj(orderConditionObj);
			}
			
			
			
			int totalRecordSum = service1
					.getTotalRecordSumBySearchCondition(product);
			pageInfo.setTotalRecordCount(totalRecordSum);

			UserProductServiceImpl service2 = new UserProductServiceImpl();
			List<Jdproduct> list = service2.getPageByQuery(product, pageInfo);

			// 三.转发视图
			target = "/WEB-INF/jsp/user/jdlist.jsp";
			request.setAttribute("list", list);
			request.setAttribute("pageInfo", pageInfo);
			request.setAttribute("searchCondition", searchCondition);
			request.setAttribute("orderConditionObj", orderConditionObj);
		
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			e.printStackTrace();
			target = "/WEB-INF/msg.jsp";
		}

	
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	//查询单一商品
	public void getOneProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String target = "";
		//1.填充数据
		String pid = request.getParameter("pid");
		
		//2.调用业务逻辑
		UserProductService service = new UserProductServiceImpl();
		try {
			Jdproduct product = service.getProductById(pid);
			request.setAttribute("product", product);
			target = "/WEB-INF/jsp/user/MyJsp.jsp";  
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			target = "/WEB-INF/msg.jsp";
			e.printStackTrace();
		}
		//3.转发视图
		request.getRequestDispatcher(target).forward(request, response);;
	}
	
	public void getOneProductUrl(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("使用URL重写方式实现会话跟踪");
		String target = "";
		//一.填充数据
		String pid = request.getParameter("pid");
		
		//二.调用业务逻辑
		
		try {
			UserProductServiceImpl service = new UserProductServiceImpl();
			Jdproduct product = service.getProductById(pid);
			
			
			String url = "ShoppingCartServlet?action=addToCart&pid=" + pid;
			
			// 使用URL重写技术 实现 session  适用于 cookie 被禁用的情况
			
			HttpSession session = request.getSession(true);
			
			//如果cookie 被禁用了  帮你重写url
			//如果没有禁用cookie 原样返回这个url
			String afterURL = response.encodeURL(url);
			System.out.println(afterURL);
			
			//三.转发视图
			request.setAttribute("product", product);
			request.setAttribute("afterURL", afterURL);
			target = "/WEB-INF/jsp/user/productURL.jsp";
		} catch (Exception e) {
			request.setAttribute("msg", e.getMessage());
			target = "/WEB-INF/msg.jsp";
			e.printStackTrace();
		}
		
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	//加入购物车
	public void addCar(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {

		String target = "";
		// 一.填充数据
		
		String csum = request.getParameter("ShuLiang");
		String pid = request.getParameter("pid");
		try {
			JdproductServiceImpl categoryservlet = new JdproductServiceImpl();
			Jdproduct category2 = categoryservlet.getProductById(pid);
			category2.setProductSum(Integer.parseInt(csum));
			ShoppingCartServiceImpl shoppingCartService = new ShoppingCartServiceImpl();
			
			// true 如果有和当前用户(浏览器窗口)相关联的session 返回这个 session
			// 如果没有 就为这个用户(浏览器窗口)创建一个对应的session
			// false 如果有和当前用户(浏览器窗口)相关联的session 返回这个 session
			// 没有相关联的session 返回null
			HttpSession session = request.getSession(true);// 必须要使用true
			shoppingCartService.addToCart(session, category2, Integer.parseInt(csum));
			// 三.转发视图
			target ="/WEB-INF/jsp/user/JoinSucceed.jsp";
			request.setAttribute("category2", category2);
		} catch (Exception e) {
			target = "/WEB-INF/msg.jsp";
			request.setAttribute("msg", e.getMessage());
			e.printStackTrace();
		}
		// 二.调用业务逻辑

		request.getRequestDispatcher(target).forward(request, response);
	}
	
	public void JieSuan(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用业务逻辑
		String target = "";
		String toWhere=null;
		String csum = request.getParameter("JieSuanTxt");
		System.out.println("这是页面上获取到的sum="+csum);
		int csum2=0;
		try {
			HttpSession session = request.getSession(true);
			Login user = (Login)session.getAttribute("user");
//					for(Category2 category:list){
//						csum2 = category.getCsum();
//						int pid2 = category.getPid();
//						System.out.println("这是购物车中显示的Sum2="+csum2);
//					}
			if(user!=null){
				List<Jdproduct> list = (List<Jdproduct>) session.getAttribute("shoppingCart");
				request.setAttribute("list", list);
				target="WEB-INF/jsp/user/jiesuan.jsp";
			}else{
				System.out.println("toWhere");
				session.setAttribute("toWhere", "jiesuan");
				target = "/WEB-INF/jsp/JD/login.jsp";
			}
			
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 一.填充数据
		// 二.调用业务逻辑
		
		// 三.转发视图
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	//查询购物车中所有的数据
	public void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//调用业务逻辑
		String target = "";
		HttpSession session = request.getSession(true);
		List<Jdproduct> list = (List<Jdproduct>) session.getAttribute("shoppingCart");
		if(list==null||list.size()==0){
			target = "WEB-INF/jsp/user/myCartNull.jsp";
		}else{
			request.setAttribute("list", list);
			target="WEB-INF/jsp/product/myCartMain.jsp";
		}
		request.getRequestDispatcher(target).forward(request, response);
	}
	
	//删除
		public void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String target = "";
			//1.填充数据
			String pid = request.getParameter("pid");
			try {
				HttpSession session = request.getSession(true);
				List<Jdproduct> list = (List<Jdproduct>) session.getAttribute("shoppingCart");
				//先查询有没有对应的二级商品种类 如果有 不能删除
				for(int i=0;i<list.size();i++){
					if(list.get(i).getPid()==Integer.parseInt(pid)){
						list.remove(i);
					}
				}
					//2.调用业务逻辑
				this.getAll(request, response);
			} catch (Exception e) {
				request.setAttribute("msg", e.getMessage());
				target = "/WEB-INF/msg.jsp";
				e.printStackTrace();
				//3.转发视图
				request.getRequestDispatcher(target).forward(request, response);
			}
			
			

		}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
