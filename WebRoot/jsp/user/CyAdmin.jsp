<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			div.to_hint1 {
				position: relative;
				text-align: center;
				z-index: 100;
				width: 400px;
				height: 48px;
				line-height: 48px;
				top: 373%;
				display: none;
			}
			div.to_hint2 {
				position: relative;
				text-align: center;
				z-index: 101;
				width: 400px;
				height: 48px;
				line-height: 48px;
				top: 373%;
			}
		</style>
	
  </head>
  
  <body>
  		<div class="ChenYing">
			<h3>京东后台欢迎您</h3>
			<form id="loginForm" action="JdadminServlet"  method="post">
				<input type="hidden" name="action" value="login"/>
				<div class="input_outer">
					<span class="ChenYing_name"></span>
					<input name="username" id="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入用户名">
					
						<div class="to_hint1"><b><b/></div>
						
				</div>
				<div class="input_outer">
					<span class="ChenYing_password"></span>
					<input name="password" id="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
				</div>
				<div class="toBase">
					<a class="a-toBase submit" onclick="checkUser();" href="javascript:void(0)" style="color: #FFFFFF">
						登    录
					</a>
				</div>
				<%
					String msg = (String)request.getAttribute("msg");
					if(msg!=null){
				%>
					<div class="to_hint2"><b><b/><%=msg%></div>
				<%
					}
				 %>
			</form>
		</div>
  		<script src="js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var errors = [
				"请输入账户名和密码",
				"请输入密码"
				
			];
			var $objArr;
			var $errorDiv=$("div.to_hint1");
			var $username=$("#username");
			var $password=$("#password");
			function checkUser() {
				
				var username=trim($username.val());
				var password=trim($password.val());
				var flag = true;
				if(username== "") {
						$errorDiv.text("");
						$errorDiv.append("<b><b/>");
						$errorDiv.append(errors[0]);
						$errorDiv.show();
						flag = false;
				}
				
				if(password== "" && username!="") {
						$errorDiv.text("");
						$errorDiv.append("<b><b/>");
						$errorDiv.append(errors[1]);
						$errorDiv.show();
						flag = false;
				}
				
				
				if(flag){
					//提交表单
					$("#loginForm").submit();
				}
			}
			function trim(txt) {
				var afterTrimTxt = txt.replace(/^\s*/, "").replace(/\s*$/, "");
				return afterTrimTxt;
			}
		</script>
  </body>
</html>
