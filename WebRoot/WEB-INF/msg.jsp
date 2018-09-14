<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>


<style type="text/css">
	div.msg1 {
		width:400px;
		margin:0px auto;
		position:relative;
		right:80px;
		top:140px;
	}
</style>
</head>

<body>
	<div id="my-alert" class="alert alert-danger fade in msg1">
	
		<%=request.getAttribute("msg") %>
		 <a href="#" class="close" data-dismiss="alert">X</a>
	</div>

	<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
