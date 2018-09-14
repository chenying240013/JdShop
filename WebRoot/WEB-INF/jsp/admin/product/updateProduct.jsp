<%@ page language="java" import="java.util.*,com.vo.*,com.service.impl.Jdgood2ServiceImpl" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">
<title>修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">


<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>
<style type="text/css">

body {
		background-color:#F9F9F9;
}

div.categoryClass {
	margin-bottom: 15px;
}

#categoryFieldset {
	width: 400px;
	height:360px;
	padding: 30px 50px;
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
	
	<%
		Jdproduct product = (Jdproduct)request.getAttribute("product");
	 %>
	<div>
			<ul class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">商品种类管理</a></li>
				<li><a href="#">修改京东商品种类</a></li>
			</ul>
	</div>			
	<form action="JdproductServlet" method="post">
		<input type="hidden" name="action" value="update"/>
		<input type="hidden" name="pid" value="<%=product.getPid()%>"/>
		<input type="hidden" name="target" value="<%=request.getAttribute("target")%>"/>
		<input type="hidden" name="requestPage" value="<%=request.getAttribute("requestPage")%>"/>
		<input type="hidden" name="searchCondition" value="${requestScope.searchCondition}"/>
		
		<fieldset id="categoryFieldset">
			<legend>修改我的商品</legend>
			
			<div class="categoryClass">
				<label for="cname">商品编号</label>
				<%=product.getPid()%>
			</div>
			
			<div class="categoryClass">
				<label for="pname">商品名称</label><input type="text"  name="pname" class="categoryLabel"
					id="pname" value="<%=product.getPname()%>"/>
			</div>

			<div class="categoryClass">
				<label for="price">商品价格</label><input type="text"  name="price" class="categoryLabel"
					id="price" value="<%=product.getPrice()%>"/>
			</div>
			
			<div class="categoryClass">
				<label for="productSum">商品数量</label><input type="text"  name="productSum" class="categoryLabel"
					id="productSum" value="<%=product.getProductSum()%>"/>
			</div>
			
			<div class="categoryClass">
				<label for="dianpuName">店铺名称</label><input type="text"  name="dianpuName" class="categoryLabel"
					id="dianpuName" value="<%=product.getDianpuName()%>"/>
			</div>
			
			<div class="categoryClass">
				<label for="pdesc">商品描述</label><input type="text"  name="pdesc" class="categoryLabel"
					id="pdesc" value="<%=product.getPdesc()%>"/>
			</div>

			<div class="categoryClass">
				<label for="fid">所属种类</label>
				<select id="category1" name="category1">
					<%
						List<Jdgood> categoryList = (List<Jdgood>)request.getAttribute("categoryList");
						int parentCid = (Integer)request.getAttribute("parentCid");
						Iterator<Jdgood> it = categoryList.iterator();
						while(it.hasNext()){
							Jdgood category = it.next();
							
							if(category.getJid()==parentCid){
							
					%>
								<option value='<%=category.getJid() %>' selected='selected'><%=category.getJname() %></option>
					<%
							}else{
					%>	
								<option value='<%=category.getJid() %>'><%=category.getJname() %></option>
					<%	
							}
			
						}
					%>
					
					
				</select>
				
				<select name="cid" id="cid">
					<%
						int productCid = product.getCid();
						
						Jdgood2ServiceImpl service = new Jdgood2ServiceImpl();
						List<Jdgood2> category2List = service.getAllJdgood2ByJdgood(parentCid);
						for(Jdgood2 temp:category2List){
					
							if(temp.getJ2id()==productCid){
					%>
								<option value='<%=temp.getJ2id()%>' selected='selected'><%=temp.getJ2name() %></option>
					<%
							}else{
					%>
								<option value='<%=temp.getJ2id()%>'><%=temp.getJ2name() %></option>
					<%
							}
						
					
						}
					
					%>
				</select>
			</div>
			
			<div class="categoryClass">
				<input type="submit" class="btn btn-success addCategoryBtn" value="修改商品" />
			</div>
		</fieldset>
	</form>

<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	
		$(function(){
		//给一级商品种类下拉列表框绑定onchange事件
		//当用户选择一级商品种类后  发送Ajax请求  去服务器查询 对应的下面的二级商品种类
		//并且使用dom技术 动态改变  二级商品种类下拉列表框中的内容
		$("#category1").change(function(){
			
			
			var category1Id = this.options[this.selectedIndex].value;
			
			$.post("JdproductServlet",{"action":"getJdgood2ByJdgoodForAddProduct","category1Id":category1Id},function(data){
				
				
				//在回调函数中  使用dom技术  更新   category2下拉列表框
				generateCategory2Select(data);
			},"json");
		});
	});
	
	function generateCategory2Select(data){
		
		/*
			<select name="cid" id="cid">
				<option value="1">手机</option>
			</select>
		*/
		var category2Select = '<select name="cid" id="cid">';
		
		for(var i=0;i<data.length;i++){
			var cid = data[i].j2id;
			var cname = data[i].j2name;
			
			category2Select = category2Select + '<option value="' + cid + '">';
			category2Select = category2Select + cname + '</option>';
		}
		
		category2Select = category2Select + '</select>';
		
		$("#cid").replaceWith(category2Select);
	}
</script>
</body>
</html>
