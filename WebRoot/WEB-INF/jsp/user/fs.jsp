<%@ page language="java" import="java.util.*,com.vo.*,com.service.inter.*,com.service.impl.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/swiper.min.css">
	<link rel="stylesheet" type="text/css" href="css/baceNext.css"/>
	<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
	<link rel="shortcut icon"href="favicon.ico" >
	<link rel="stylesheet" type="text/css" href="css/bace.css"/>
  </head>
  
  <body>
  <% //这是没有用的测试,请忽略%>
    		<div class="fs">
				<div class="w">
					<div class="fs-col1">
						<div class="fs-col1l-ist">
							<ul class="ist-uls ">
							<%
							List<Jdgood> list = (List<Jdgood>) request.getAttribute("list");
							
							for (Jdgood jdgoods : list) {
						%>
							<li class="ist-thisli togood2and3">
								<a class="ist-thisa" href=""><%=jdgoods.getJname()%></a>
								
								<div class="jdgood2and3">
									<%
										//根据一级商品种类 查询下面的二级商品种类
										Jdgood2Service service = new Jdgood2ServiceImpl();
									
										List<Jdgood2> jdgood2List = service.getAllJdgood2ByJdgood(jdgoods.getJid());
									
										for(Jdgood2 jdgood2:jdgood2List){
									%>	
									<div class="jdgood2andjd3" >
										<div class="jdgood2">
											<div class="jdgood2-text">
												<a href=""><%=jdgood2.getJ2name()%></a>
												<i class="iconfont" style="float: right;">&#xe617;</i>
											</div>
										</div>
										<%
										//根据二级商品种类 查询下面的三级商品种类
											Jdgood3Service service2 = new Jdgood3ServiceImpl();
										
											List<Jdgood3> jdgood3List = service2.getAllJdgood3ByJdgood(jdgood2.getJ2id());
										
											for(Jdgood3 jdgood3:jdgood3List){
										%>
											<div class="jdgood3">
												<a href=""><%=jdgood3.getJ3name()%></a>
											</div>
										<%
											}
										 %>
									</div>
								
									<%
										}
									 %>
								</div>	
							</li>
						<%
							}
						%>	
				
							
						
							</ul>
						</div>
					</div>
					
				</div>
	
			</div>
	
  </body>
</html>
