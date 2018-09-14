<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>京东后台</title>
		<link rel="stylesheet" href="../dd/css/layui.css">
	</head>

	<body class="layui-layout-body">
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header">
				<div class="layui-logo">京东后台</div>
				<!-- 头部区域（可配合layui已有的水平导航） -->

				<ul class="layui-nav layui-layout-right">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="images/1.gif" class="layui-nav-img"> 管理员
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="">基本资料</a>
							</dd>
							<dd>
								<a href="">安全设置</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="">退了</a>
					</li>
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
									<a href="JDDispatcherServlet?target=admin/category/addCategory.jsp" target="right" >添加一级商品种类</a>
								</dd>
								<dd>
									<a href="" target="right">管理一级商品种类</a>
								</dd>
								<dd>
									<a href="" target="right">商品种类修改</a>
								</dd>
								<dd>
									<a href="" target="right">商品种类查询</a>
								</dd>
							
								
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;">商品管理</a>
							<dl class="layui-nav-child">
								<dd>
									<a href="" target="right">商品添加</a>
								</dd>
								<dd>
									<a href="" target="right">商品删除</a>
								</dd>
								<dd>
									<a href="" target="right">商品修改</a>
								</dd>
								<dd>
									<a href="" target="right">商品查询</a>
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

			<div class="layui-footer">
				<!-- 底部固定区域 -->
				底部固定区域
			</div>
		</div>
		
		<script type="text/javascript" src="../dd/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="../dd/myplugs/js/plugs.js">
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
		<script src="js/layui.js"></script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;

			});
		</script>
	</body>

</html>