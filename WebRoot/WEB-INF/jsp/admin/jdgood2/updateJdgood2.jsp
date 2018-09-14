<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">

<title>修改一级商品种类</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">

<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>

<style type="text/css">

body {
		background-color:#F9F9F9;
}

div.categoryClass {
	margin-bottom: 20px;
}

#categoryFieldset {
	width: 370px;
	height:300px;
	padding: 50px;
	position:relative;
	top:10px;
	left:200px;
}

fieldset legend {
	font-size:20px;
	font: 16px/100% Arial, Verdana, "宋体";
}

fieldset label {
	margin-right: 50px;
	font: 16px/100% Arial, Verdana, "宋体";
}

/*bootstrap 按钮样式*/
.btn {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: normal;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
      touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
}

.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}

.addCategoryBtn {
	position:absolute;
	right:50px;
	bottom:50px;
}

.categoryLabel
 {
  
  padding: 0px 10px;
  font-size: 16px;
  border-radius: 3px;
}
</style>



</head>

<body>
	<div>
			<ul class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">商品种类管理</a></li>
				<li><a href="#">修改一级商品种类</a></li>
			</ul>
	</div>	
	
	<form action="Jdgood2Servlet" method="post">
		<input type="hidden" name="action" value="update"/>
		
		<%
			Jdgood2 jdgood2 = (Jdgood2)request.getAttribute("jdgood2");
			
			//版本 分页 修改完毕以后再跳到当前页
			String requestPage = request.getParameter("requestPage");
		 %>
		<fieldset id="categoryFieldset">
			<legend>修改二级商品种类</legend>
			
			<input type="hidden" name="j2id" value="<%=jdgood2.getJ2id()%>"/>
			<input type="hidden" name="requestPage" value="<%=requestPage%>"/>
			<div class="categoryClass">
				<label for="jname">商品种类名称</label><input type="text" class="jdgoodLabel" name="j2name"
					id="cname" value="<%=jdgood2.getJ2name()%>"/>
			</div>
			<div class="categoryClass">
				<label>请选择所属种类</label>
				
				<select class="parentCategorySelect" name="fid" >
				
				<%
					List<Jdgood> list = (List<Jdgood>)request.getAttribute("list");
					for(Jdgood jdgood:list){
				%>	
					
					 <option value="<%=jdgood.getJid()%>"><%=jdgood.getJname()%></option>
				<%
					}
				 %>
				
				</select>
			</div>
			

			<div class="categoryClass">
				<input type="submit" class="btn btn-success addCategoryBtn" value="修改一级商品种类" />
			</div>
		</fieldset>
	</form>

<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
