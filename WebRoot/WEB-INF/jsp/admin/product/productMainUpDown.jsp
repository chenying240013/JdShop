<%@ page language="java"
	import="java.util.*,com.vo.*,com.page.PageInfo,com.service.impl.Jdgood2ServiceImpl,com.util.ProductDictionary"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title></title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="stylesheet" type="text/css"
	href="css/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="css/jQuery-confirm/jquery-confirm.css" />
<style type="text/css">
body {
	background-color: #F9F9F9;
}

a:link {
	text-decoration: none;
}

#productTable {
	table-layout: fixed;
}

#productTable td {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

tr.tableHead {
	background-color: #337AB7;
	color: #ffffff;
}

tr.tableHead>th {
	text-align: center;
}

/*鼠标悬停的 当前行高亮*/
/*table>tbody>tr:hover {
				background-color:#BAD0EF !important;
			}*/
div.categoryTableDiv {
	width: 1060px;
	margin: 0px auto;
	position: relative;
	top: 110px;
}

#pageInfoDiv {
	position: absolute;
	right: 0px;
}

#requestPage {
	width: 40px;
}

.mySpan {
	vertical-align: middle;
}

.mySpan>span {
	font-size: 12px;
	color: #333;
	padding: 0px 4px;
}

/*一级商品种类搜索框*/
#jdCategorySearch {
	width: 500px;
	margin: 0px auto;
	position: relative;
	top: 50px;
	right: 60px;
}
</style>
	</head>

	<body>
	 <%
	 	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	 %> 
   
		<div>
			<ul class="breadcrumb">
				<li><a href="#">首页</a></li>
				<li><a href="#">商品管理</a></li>
				<li><a href="#">上架下架</a></li>
			</ul>
		</div>
		
		<form id="categoryForm" action="JdproductServlet?action=getPageByQuery&target=productMainUpDown" method="post">
		
		<div id="jdCategorySearch" class="input-group">
			<input type="search" id="searchCondition" name="searchCondition" value='${requestScope.searchCondition}' class="form-control"/>
			
<span class="input-group-btn">
<input type="submit"  value="搜索" class="btn btn-default"/>
			</span>
	</div>
	
	</form>
	
		<div class="text-center categoryTableDiv">
			
	
			<table id="productTable" class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="tableHead">
						<th width="10%">商品编号</th>
						<th width="25%">商品名称</th>
						<th width="10%">商品价格</th>
						<th width="10%">商品数量</th>
						<th width="10%">商品状态</th>
						<th width="15%">所属种类</th>
						<th width="10%">操作</th>
						<th width="10%">操作</th>
					</tr>
				</thead>

				<tbody>
				
				<%
									List<Jdproduct> list = (List<Jdproduct>)request.getAttribute("list");
											Iterator<Jdproduct> it = list.iterator();
											while(it.hasNext()){
												Jdproduct product = it.next();
								%>	
					<tr>
						<td><%=product.getPid()%></td>
						<td title="<%=product.getPname()%>" alt="<%=product.getPname()%>"><%=product.getPname()%></td>
						<td><%=product.getPrice()%></td>
						<td><%=product.getProductSum()%></td>
						<td><%=ProductDictionary.onsaleIntToStr(product.getOnsale())%></td>
						
				<%
											int cid = product.getCid();
													Jdgood2ServiceImpl service = new Jdgood2ServiceImpl();
													Jdgood2 category = service.getJdgoodById(String.valueOf(cid));
										%>
						<td><%=category.getJ2name()%></td>
						
						<td>
							<%
								int onsale = product.getOnsale();
													//上架状态的商品  上架按钮灰掉
													if(onsale==1){
							%>
									<button onclick="productUp(<%=product.getPid()%>)" class="btn btn-success btn-xs disabled" disabled="disabled">上架</button>
							<%
								}else{
							%>
									<button onclick="productUp(<%=product.getPid()%>)" class="btn btn-success btn-xs">上架</button>
							<%
								}
							%>
							
						</td>
						
						<td>
							<%
								if(onsale==0){
							%>
									<button onclick="productDown(<%=product.getPid()%>)" class="btn btn-danger btn-xs disabled" disabled="disabled">下架</button>
							<%
								}else{
							%>
									<button onclick="productDown(<%=product.getPid()%>)" class="btn btn-danger btn-xs">下架</button>
							<%
								}
							%>
							
						</td>
					</tr>
				<%
					}
				%>
					

				
			
				</tbody>
					
			</table>
			
<form id="productForm2" action="JdproductServlet?action=getPageByQuery&target=productMainUpDown" method="post">

			<div id="pageInfoDiv">
			
	<a id="first" class="btn btn-default btn-sm" href='JdproductServlet?action=getPageByQuery&target=productMainUpDown&searchCondition=${requestScope.searchCondition}&requestPage=1'>首页</a>
    
    
    <a id="previous" class="btn btn-default btn-sm" href='JdproductServlet?action=getPageByQuery&target=productMainUpDown&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getPreviousPage()%>'> 上一页</a>
      <a id="next" class="btn btn-default btn-sm" href='JdproductServlet?action=getPageByQuery&target=productMainUpDown&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getNextPage()%>'> 下一页</a>
    
   
     <a id="last" class="btn btn-default btn-sm" href='JdproductServlet?action=getPageByQuery&target=productMainUpDown&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getTotalPageCount()%>'>尾页</a>
    
   <span class="mySpan">
    <span>当前第<%=pageInfo.getCurrentPage()%>页</span>
    
   <span>共<%=pageInfo.getTotalRecordCount()%>条记录 </span>
    
    <span>共<%=pageInfo.getTotalPageCount()%>页</span>
    
    <span>每页<%=pageInfo.getPerPageRecordCount()%>条</span>
   
     
    <span>跳到第 </span>
   
    	<input type="hidden" name="searchCondition" value="${requestScope.searchCondition}"/>
    	
    	<select id="requestPage" name="requestPage">
    		<%
    			int TotalPageCount = pageInfo.getTotalPageCount();
    		    			
    		    			int currentPage = pageInfo.getCurrentPage();
    		    			for(int i=1;i<=TotalPageCount;i++){
    		    				
    		    				if(currentPage==i){
    		    					out.println("<option selected='selected'>" + i + "</option>");
    		    				}else{
    		    					out.println("<option>" + i + "</option>");
    		    				}
    		    				
    		    			}
    		%>
    		
    	</select>
    	
    <span>页 </span>
    </form>
   </span>
    	
    	
		
		</div>	
		</div>
		
		
		
			

		<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
		<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="css/jQuery-confirm/jquery-confirm.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			function trim(txt){
	var afterTrimTxt = txt.replace(/^\s*/,"").replace(/\s*$/,"");
	return afterTrimTxt;
}
			$(function(){
				//对id为categoryTable表格进行隔行换色
				$("#productTable>tbody>tr:even").css("background-color","#fff");
				
				//给跳到第几页下拉列表框绑定事件
				$("#requestPage").change(function(){
					
					
					//提交请求
					$("#productForm2").submit();
				});
				
				//第一页时 "首页"和上一页不能用
				
				var currentPage = <%=pageInfo.getCurrentPage()%>;
				var totalPageCount = <%=pageInfo.getTotalPageCount()%>;
				if(currentPage==1){
					$("#first").addClass("disabled");
					$("#previous").addClass("disabled");
				}else if(currentPage==totalPageCount){
					//最后一页时 "下一页"和"尾页"不能能用
					$("#next").addClass("disabled");
					$("#last").addClass("disabled");
				} 
				
				
				
			});
			
			function productDown(pid){
				$.confirm({
				    title: ' ',
				    content: '您确认下架编号为' + pid + '的商品吗?',
				    confirm: function(){
				       	//发请求
				       	location.assign("JdproductServlet?action=productDown&target=productMainUpDown&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getCurrentPage()%>&pid=" + pid);
				    },
				    cancel: function(){
				       
				    }
				});
			}
			
			function productUp(pid){
				$.confirm({
				    title: ' ',
				    content: '您确认上架编号为' + pid + '的商品吗?',
				    confirm: function(){
				       	//发请求
				       	location.assign("JdproductServlet?action=productUp&target=productMainUpDown&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getCurrentPage()%>&pid=" + pid);
				    },
				    cancel: function(){
				       
				    }
				});
			}
			
			
			
			
			
		</script>
			<%
				String msg = (String)request.getAttribute("msg");
				String msgDetail = (String)request.getAttribute("msgDetail");
				if(msg!=null){
			%>
			
		<script type="text/javascript">
				
			 $.alert({
                   title: '${msg}',
                   content: '${msgDetail}',
                   animation: 'rotate',
                   closeAnimation: 'right',
                   opacity: 0.5
               });
			
			
		</script>
		
		<%
					}
				%>
		
	</body>

</html>