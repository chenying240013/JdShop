<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">
<title>上传图片</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">


<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>
<style type="text/css">

body {
		background-color:#F9F9F9;
}



#imageUploadFieldset {
	width:800px;
	padding:10px 10px 0px;
	margin:0px auto;
}



#productInfo {
	height:30px;
}


#productId {
	width:300px;
	padding:0px 25px;
	background-color: #5BC0DE;
	float:left;
}

#productName {
	width:438px;
	padding:0px 6px;
	background-color: #5BC0DE;
	float:left;
}

.listFieldset {
	width:760px;
	padding: 12px 20px 0px;
	position:relative;
	margin-bottom:20px;
}

div.listFieldsetDiv {
	width:760px;
	height:40px;
	/* background-color:blue; */
	
}



div.categoryClass1 {
	width:350px;
	height:40px;
	/* background-color:red; */
	float:left;
}

div.categoryClass2 {
	width:410px;
	height:40px;
	/* background-color:green; */
	float:left;
}

div.categoryClass3 {
	width:350px;
	height:40px;
	/* background-color:blue; */
	float:left;
}

div.categoryClass4 {
	width:410px;
	height:40px;
	/* background-color:yellowgreen; */
	float:left;
}


fieldset legend {
	font-size:20px;
	font: 14px/100% Arial, Verdana, "宋体";
}

fieldset label {
	width:110px;
	font: 14px/100% Arial, Verdana, "宋体";
	float:left;
}


label.productInfoLabel {
	position:relative;
	top:3px;
}

#uploadImageSelect label {
	width:80px;
	font: 14px/100% Arial, Verdana, "宋体";
	float:left;
	position:relative;
	top:6px;
	
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
	right:120px;
	bottom:10px;
	
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
	<%
		Jdproduct product = (Jdproduct)request.getAttribute("product");
	 %>
	<div>
			<ul class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">商品种类管理</a></li>
				<li><a href="#">上传图片</a></li>
			</ul>
	</div>			
	<form action="JdproductServlet?action=uploadImage" method="post" enctype="multipart/form-data">
		<input type="hidden" name="target" value="<%=request.getAttribute("target")%>"/>
		<input type="hidden" name="pid" value="<%=product.getPid()%>"/>
		<fieldset id="imageUploadFieldset">
			<legend>上传图片</legend>
				<div id="productInfo">
					<div id="productId">
							<label class="productInfoLabel" for="pid">商品id</label>
							<%=product.getPid()%>
					</div>
		
					<div id="productName">
							<label class="productInfoLabel" for="pname">商品名称</label>
							<span><%=product.getPname()%></span>
					</div>
				</div>
			<div id="uploadImageSelect">
				<fieldset class="listFieldset">
					<legend>列表页图片</legend>
						<div>
							<div class="listFieldsetDiv">
								<div class="categoryClass1">
									<label>大图片</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div>
							
								<div class="categoryClass2">
									<label>小图片1</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div> 
							</div>
							
							<div class="listFieldsetDiv">
								<div class="categoryClass3">
									<label>小图片2</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div>
								
								<div class="categoryClass4">
									<label>小图片3</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div> 
							</div>
						</div>
						
						
					</fieldset>
					
					<!-- 产品详细页 -->
					<fieldset class="listFieldset">
					<legend>产品详细页图片</legend>
						<div>
							<div class="listFieldsetDiv">
								<div class="categoryClass1">
									<label>大图片</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div>
							
								<div class="categoryClass2">
									<label>小图片1</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div> 
							</div>
							
							<div class="listFieldsetDiv">
								<div class="categoryClass3">
									<label>小图片2</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div>
								
								<div class="categoryClass4">
									<label>小图片3</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div> 
							</div>
							
							<div class="listFieldsetDiv">
								<div class="categoryClass3">
									<label>小图片4</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div>
								
								<div class="categoryClass4">
									<label>小图片5</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div> 
							</div>
						</div>
						
						
					</fieldset>
					<!-- 购物车图片 -->
					<fieldset class="listFieldset">
					<legend>购物车图片</legend>
						<div>
							<div class="listFieldsetDiv">
								 <div class="categoryClass1">
									<label>大图片</label><input type="file"  name="cdesc" id="cdesc" class="btn-warning"/>
								</div>
							
								<div class="categoryClass1">
									<input type="submit" class="btn btn-success addCategoryBtn" value="上传图片" />
								</div>
							</div>
							
							
						</div>
						
						
					</fieldset>
			</div>
			
			
		</fieldset>
		
		
	</form>

<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(".listFieldset>legend").click(function(){
		
		$(this).next().toggle();
		
	});
</script>
</body>
</html>
