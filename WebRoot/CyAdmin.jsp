<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>京东后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
			
			body {
				background-image: url(img/timg1.jpeg);
			}
			.ChenYing{
				width: 400px;
				height: 500px;
				padding: 35px;
				color: #EEE;
				position: absolute;
				left: 50%;
				top:50%;
				margin-left: -200px;
				margin-top: -250px;
			}
			.input_outer{
				height: 46px;
				padding: 0 5px;
				margin-bottom: 30px;
				border-radius: 50px;
				position: relative;
				border: rgba(255,255,255,0.2) 2px solid !important;
			}
			.ChenYing h3{
				text-align: center;
				height: 20px;
				font: 20px ;
				color: #FFFFFF;
				height: 20px;
				line-height: 20px;
				padding:0 0 35px 0; 
			}
			.ChenYing_name{
				width: 25px;
				height: 25px;
				background: url(img/login_ico.png);
				background-position:  -125px 0;
				position: absolute;
				margin: 10px 13px;
			}
			.ChenYing_password{
				width: 25px;
				height: 25px;
				background-image: url(img/login_ico.png);
				background-position: -125px -34px;
				position: absolute;
				margin: 10px 13px;
			}
			.text{
				width: 220px;
				height: 46px;
				outline: none;
				display: inline-block;
				font: 14px ;
				margin-left: 50px;
				border: none;
				background: none;
				line-height: 46px;
			}
			.toBase{
				margin-bottom: 20px
			}
			.toBase a{
				text-decoration: none;
				outline: none;
			}
			.submit {
				padding: 15px;
				margin-top: 20px;
				display: block;
			}
			.a-toBase{
				height: 20px;
				line-height: 20px;
				text-align: center;
				font-size: 20px;
				border-radius: 50px;
				background-color: cornflowerblue;
				
			}
		</style>
	
  </head>
  
  <body>
  		<div class="ChenYing">
			<h3>京东后台欢迎您</h3>
			<form action="#" name="f" method="post">
				<div class="input_outer">
					<span class="ChenYing_name"></span>
					<input name="cyname" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入用户名">
				</div>
				<div class="input_outer">
					<span class="ChenYing_password"></span>
					<input name="cypass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
				</div>
				<div class="toBase"><a class="a-toBase submit" href="" style="color: #FFFFFF">登录</a></div>
			</form>
		</div>
  	
  </body>
</html>
