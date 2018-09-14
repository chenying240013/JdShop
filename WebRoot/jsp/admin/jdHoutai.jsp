<%@ page language="java" import="java.util.*,com.vo.*,com.service.inter.*,com.service.impl.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
		<title>京东后台管理页面新</title>

		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<link rel="stylesheet" type="text/css" href="dd/css/layui.css" /> 
		

  </head>
  
  <body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<div class="layui-logo">京东后台</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->

				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="dd/images/1.gif" class="layui-nav-img">
							<%
								Jdadmin admin = (Jdadmin)session.getAttribute("admin");
								if(admin==null){
									//显示 "你好,请登录"	
							%>
							          管理员
							<%
					
							}else{
							%>
								你好,<%=admin.getOthername()%>
						<dl class="layui-nav-child">
							<dd>
								<a href="">基本资料</a>
							</dd>
							<dd>
								<a href="http://localhost:8080/JDCY/jsp/user/index.jsp">我的首页</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="JdadminServlet?action=logout">退了</a>
					</li>
					<%
							//显示 "你好,XXX" 退出
						}
					%>
				</ul>
			</div>

			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree" lay-filter="test">
						<li class="layui-nav-item layui-nav-itemed">
							<a class="" href="javascript:;">商品种类管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="JDDispatcherServlet?target=admin/jdgood/addJdgood.jsp" target="right">添加一级商品种类</a>
								</dd>
								<dd>
									<a href="JdgoodServlet?action=getAllByPage&requestPage=1" target="right">管理一级商品种类</a>
								</dd>
								<dd>
									<a href="Jdgood2Servlet?action=getAllJdgoodForAddJdgood2"  target="right">添加二级商品种类</a>
								</dd>
								<dd>
									<a href="Jdgood2Servlet?action=getAllByPage&requestPage=1" target="right">管理二级商品种类</a>
								</dd>
								<dd>
									<a href="Jdgood3Servlet?action=getAllJdgoodForAddJdgood3"  target="right">添加三级商品种类</a>
								</dd>
								<dd>
									<a href="Jdgood3Servlet?action=getAllByPage&requestPage=1" target="right">管理三级商品种类</a>
								</dd>
								
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">商品管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="JdproductServlet?action=getAllJdgoodForAddProduct" target="right">添加商品</a>
								</dd>
								<dd>
									<a href="JdproductServlet?action=getAllByPage&target=productMain&requestPage=1" target="right">管理商品</a>
								</dd>
								<dd>
									<a href="JdproductServlet?action=getAllByPage&target=productMainUpDown&requestPage=1" target="right">商品上架/商品下架</a>
								</dd>
								<dd>
									<a href="JdproductServlet?action=getAllByPage&target=productMainUpload&requestPage=1" target="right">上传图片</a>
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">订单管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="" target="right">查看订单</a>
								</dd>
								<dd>
									<a href="" target="right">修改订单</a>
								</dd>
								
							</dl>
						</li>
						
						<li class="layui-nav-item">
							<a href="javascript:;">用户管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="" target="right">用户添加</a>
								</dd>
								<dd>
									<a href="" target="right">用户删除</a>
								</dd>
								<dd>
									<a href="" target="right">用户修改</a>
								</dd>
								<dd>
									<a href="" target="right">用户查询</a>
								</dd>
							</dl>
						</li>
						
						
						
					</ul>
				</div>
			</div>

			<div class="layui-body" style="z-index: 0;">
				<!-- 内容主体区域 -->
				<div style="padding: 15px;">
					<iframe src="" name="right" frameborder="0" width="100%" height="1200"></iframe>

				</div>
			</div>

			<div class="layui-footer" style="text-align: center;">
				<!-- 底部固定区域 -->
				北方民族大学  第五组
			</div>
		</div>
		
		<script type="text/javascript" src="dd/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="dd/myplugs/js/plugs.js">
		</script>
		<script type="text/javascript">
			//添加编辑弹出层
			function updatePwd(title, id) {
				$.jq_Panel({
					title: title,
					iframeWidth: 500,
					iframeHeight: 300,
					url: "updatePwd.html"
				});
			}
		</script>
		<script src="dd/js/layui.js"></script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;

			});
		</script>
	</body>

</html>
