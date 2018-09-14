<%@ page language="java"
	import="java.util.*,com.vo.*,com.page.PageInfo"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<base href="<%=basePath%>">
<head>
<meta charset="UTF-8">
<title>第一个Bootstrap程序</title>
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
	top: 80px;
}

#pageDiv {
	position: absolute;
	right: 0px;
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
		PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
	%>

	<div>
		<ul class="breadcrumb">
			<li><a href="#">首页</a></li>
			<li><a href="#">商品种类管理</a></li>
			<li><a href="#">管理二级商品种类</a></li>
		</ul>
	</div>
	
	
	<form id="categoryForm" action="Jdgood2Servlet?action=getPageByQuery"
		method="post">

		<div id="jdCategorySearch" class="input-group">
			<input type="search" id="searchCondition" name="searchCondition"
				value='${requestScope.searchCondition}' class="form-control" /> <span
				class="input-group-btn"> <input type="submit" value="搜索"
				class="btn btn-default" />
			</span>
		</div>

	</form>

	<div class="text-center categoryTableDiv">

		<table id="categoryTable"
			class="table table-striped table-bordered table-hover">
			<thead>
				<tr class="tableHead">
					<th width="15%">商品种类编号</th>
					<th width="15%">商品种类名称</th>
					<th width="15%">所属一级商品</th>
					<th width="10%">操作</th>
					<th width="10%">操作</th>
				</tr>
			</thead>

			<tbody>

				<%
					List<Jdgood2> list = (List<Jdgood2>) request.getAttribute("list");

					for (Jdgood2 jdgood : list) {
				%>

				<tr>
					<td><%=jdgood.getJ2id()%></td>
					<td><%=jdgood.getJ2name()%></td>
					<td><%=jdgood.getFid()%></td>

					<td>


						<button class="btn btn-success btn-xs"
							onclick="getOneForUpdate(<%=jdgood.getJ2id()%>)">修改</button>
					</td>
					<td>
						<button class="btn btn-danger btn-xs"
							onclick="deleteCategoryById(<%=jdgood.getJ2id()%>)">删除</button>


					</td>
				</tr>

				<%
					}
				%>






			</tbody>

		</table>


		<div id="pageDiv">


			<form id="categoryForm2"
				action="Jdgood2Servlet?action=getPageByQuery" method="post">
				<input type="hidden" name="searchCondition"
					value="${requestScope.searchCondition}" /> <a id="first"
					class="btn btn-default btn-sm"
					href="Jdgood2Servlet?action=getPageByQuery&searchCondition=${requestScope.searchCondition}&requestPage=1">首页</a>


				<a id="previous" class="btn btn-default btn-sm"
					href="Jdgood2Servlet?action=getPageByQuery&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getPreviousPage()%>">
					上一页</a> <a id="next" class="btn btn-default btn-sm"
					href="Jdgood2Servlet?action=getPageByQuery&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getNextPage()%>">
					下一页</a> <a id="last" class="btn btn-default btn-sm"
					href="Jdgood2Servlet?action=getPageByQuery&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getTotalPageCount()%>">尾页</a>

				<span class="mySpan"> <span>当前第<%=pageInfo.getCurrentPage()%>页
				</span> <span>共<%=pageInfo.getTotalRecordCount()%>条记录
				</span> <span>共<%=pageInfo.getTotalPageCount()%>页
				</span> <span>每页<%=pageInfo.getPerPageRecordCount()%>条
				</span> <span>跳到第 </span> <select id="requestPage" name="requestPage">
						<%
							int TotalPageCount = pageInfo.getTotalPageCount();

							int currentPage = pageInfo.getCurrentPage();
							for (int i = 1; i <= TotalPageCount; i++) {

								if (currentPage == i) {
									out.println("<option selected='selected'>" + i + "</option>");
								} else {
									out.println("<option>" + i + "</option>");
								}

							}
						%>

				</select> <span>页 </span>
				</span>


			</form>

		</div>
	</div>



	<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="css/bootstrap/js/bootstrap.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="css/jQuery-confirm/jquery-confirm.js"
		type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
			
			$(function(){
				//对id为categoryTable表格进行隔行换色
				$("#categoryTable>tbody>tr:even").css("background-color","#fff");
				
				//给跳到第几页下拉列表框绑定事件
				$("#requestPage").change(function(){
					
					//提交请求
					$("#categoryForm2").submit();
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
			
			
			function deleteCategoryById(id){
				
			
				$.confirm({
					title: '',
					content: '您确认删除吗?',
					confirm: function() {
						
						location.assign("Jdgood2Servlet?action=delete&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getCurrentPage()%>&j2id=" + id);
					},
					cancel: function() {
						
					},
					
				});
			
			}
			
			function getOneForUpdate(id){
				
				location.assign("Jdgood2Servlet?action=getOneForUpdate&searchCondition=${requestScope.searchCondition}&requestPage=<%=pageInfo.getCurrentPage()%>&j2id=" + id);
			}
			
	
		</script>

	<%
		String msg = (String) request.getAttribute("msg");
		String msgDetail = (String) request.getAttribute("msgDetail");
		if (msg != null) {
	%>

	<script type="text/javascript">
	
		$.alert({
			title : '${msg}',
			content : '${msgDetail}',
			animation : 'rotate',
			closeAnimation : 'right',
			opacity : 0.5
		});
	</script>

	<%
		}
	%>
</body>

</html>