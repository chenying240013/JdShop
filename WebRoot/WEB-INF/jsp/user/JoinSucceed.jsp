		<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
		%>
		
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
		<html>
		<head>
		<meta charset="UTF-8">
		<base href="<%=basePath%>">
		<title>成功加入购物车</title>
		<link rel="icon" type="text/css" href="img/img/favicon.ico" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
		<link rel="stylesheet" type="text/css" href="fonts/glyphicons-halflings-regular.eot" />
		<link rel="stylesheet" type="text/css" href="fonts/glyphicons-halflings-regular.svg" />
		<link rel="stylesheet" type="text/css" href="fonts/glyphicons-halflings-regular.ttf" />
		<link rel="stylesheet" type="text/css" href="fonts/glyphicons-halflings-regular.woff" />
		<link rel="stylesheet" type="text/css" href="css/JoinSucceed.css" />
		
		
		<style type = "text/css">
				@CHARSET "UTF-8";

									@charset "UTF-8";
									@font-face {
										font-family: 'icomoon';
										src: url('fonts/icomoon.eot?d46h9l');
										src: url('fonts/icomoon.eot?d46h9l#iefix') format('embedded-opentype'), url('fonts/icomoon.ttf?d46h9l') format('truetype'), 
											 url('fonts/icomoon.woff?d46h9l') format('woff'), url('fonts/icomoon.svg?d46h9l#icomoon') format('svg');
										font-weight: normal;
										font-style: normal;
									}
									/*css 初始化 */
									
									html,
									body,
									ul,
									li,
									ol,
									dl,
									dd,
									dt,
									form,
									fieldset,
									legend,
									img {
										margin: 0;
										padding: 0;
									}
									
									fieldset,
									img,
									input,
									button {
										/*fieldset组合表单中的相关元素*/
										: none;
										padding: 0;
										margin: 0;
										outline-style: none;
									}
									
									ul,
									ol {
										list-style: none;
										/*清除列表风格*/
									}
									
									
						
									input {
										padding-top: 0;
										padding-bottom: 0;
										font-family: "SimSun", "宋体";
									}
									
									select,
									input {
										vertical-align: middle;
									}
									
									select,
									input,
									textarea {
										font-size: 12px;
										margin: 0;
									}
									
									textarea {
										resize: none;
									}
									/*防止多行文本框拖动*/
									
									img {
										border: 0;
										vertical-align: middle;
									}
									/*  去掉图片低测默认的3像素空白缝隙*/
									
									table {
										-collapse: collapse;
										/*合并外边线*/
									}
									
									body {
										font: 12px/150% Arial, Verdana, "\5b8b\4f53";
										/*宋体，Unicode，统一码*/
										color: #666;
										background: #fff
									}
									
									strong {
										font-weight: 400;
									}
									
									.clearfix:before,
									.clearfix:after {
										content: "";
										display: table;
									}
									
									.clearfix:after {
										clear: both;
									}
									
									.clearfix {
										*zoom: 1;
										/*IE/7/6*/
									}
									
									a {
										/*color: #666;*/
										text-decoration: none;
									}
									
									a:hover {
										color: #C81623;
									}
									
									h1,
									h2,
									h3,
									h4,
									h5,
									h6 {
										text-decoration: none;
										font-size: 100%;
									}
									
									s,
									i,
									em {
										font-style: normal;
										text-decoration: none;
										font-family: 'icomoon';
									}
									
									.col-red {
										color: #C81623 !important;
									}
									
									.w {
										width: 1200px;
										margin: 0 auto;
										background-color: white;
									}
									
									body {
										font: 12px/150% Arial, Verdana, "宋体";
										color: #666;
										background: #fff;
									}
									
									s,
									i,
									em {
										font-style: normal;
										text-decoration: none;
										font-family: 'icomoon';
									}
									
									.clear {
										clear: both;
									}
									
									.leftFloat {
										float: left;
									}
									
									.rightFloat {
										float: right;
									}
									
									a {
										text-decoration: none;
										color: #666;
									}
									
									a:hover,
									a:active {
										color: #e4393c;
										text-decoration: none;
									}
									
									.spacer {
										width: 1px;
										height: 13px;
										margin: 10px 0;
										background: #eee;
										overflow: hidden;
									}
									/*top导航start*/
									
									.site-nav {
										height: 30px;
										background-color: rgb(246, 246, 246);
										line-height: 30px;
										width: 100%;
										color: #999;
										background: #e3e4e5;
										border-bottom: solid 1px #ddd;
										font-family: tahoma, arial, Microsoft YaHei, Hiragino Sans GB, "\u5b8b\u4f53", sans-serif;
									}
									
									.site-nav-fl {
										width: 152px;
										height: 30px;
										padding: 0 2px;
										float: left;
										position: absolute;
									}
									
									.BJSY {
										width: 73px;
										height: 30px;
										position: relative;
										
									}
									
									.BJDB {
										width: 79px;
										display: inline-block;
										height: 30px;
										position: relative;
										margin-left: 78px;
										margin-top: -30px;
										
									}
									
									.BJDB:hover {
										background-color: white;
									}
									
									.site-nav-fl li {
										padding: 0 10px;
									}
									
									.site-nav-fr {
										width: 696px;
										height: 30px;
										float: right;
										font-family: "verdana,simsun";
										color: #999;
										display: block;
										float: right;
										margin-right: 85px;
									}
									
									.site-nav-fr>li {
										float: left;
										padding: 0 5px;
									}
									
									.site-nav-fr ul i {
										float: left;
									}
									
									li.spacer {
										width: 1px;
										height: 12px;
										margin-top: 10px;
										padding: 0;
										float: left;
										line-height: 30px;
										background: #ccc;
										overflow: hidden;
										margin-left: 7px;
									}
									/*top导航结束*/
									/*logo部分start*/
									
									.logoDog {
										position: relative;
										z-index: 12;
										float: left;
										width: 276px;
										height: 50px;
										margin: 15px 0 22px;
									}
									
									.logoDog img {
										height: 42px;
										width: 134px;
									}
									
									.SousuoBox {
										width: 584px;
										height: 40px;
										margin: 27px 30px 0 105px;
										position: relative;
										left: 258px;
										top: 30px;
									}
									
									.SousuoBox input {
										/*float: left;*/
										width: 446px;
										height: 39px;
										line-height: 24px;
										color: #666;
										padding: 4px;
										border-width: 2px 0 2px 2px;
										border-color: #f30213;
										border-style: solid;
										font-size: 14px;
										position: relative;
										font-family: "microsoft yahei";
										top: -90px;
									}
									/*搜索框*/
									
									.SousuoBox button {
										width: 82px;
										height: 39px;
										background: #f30213;
										border: none;
										line-height: 1;
										color: #fff;
										font-family: "Microsoft YaHei";
										font-size: 16px;
										cursor: pointer;
										position: relative;
										top: -88px;
										left: -3px;
									}
									/*购物车*/
									
									.ShopCar {
										float: left;
										z-index: 11;
										width: 140px;
										height: 36px;
										margin-top: 27px;
										background-color: #F9F9F9;
										position: relative;
										left: 672px;
										top: -36px;
										border: 1px solid #dfdfdf;
									}
									
									.icon1 {
										width: 18px;
										height: 16px;
										top: 8px;
										left: 16px;
										position: absolute;
										background-image: url(img/img/tel.png);
										background-position-y: -58px;
									}
									
									.icon2 {
										width: 16px;
										height: 16px;
										line-height: 14px;
										background-color: #c81623;
										color: white;
										position: absolute;
										float: right;
										top: -1px;
										left: 110px;
										text-align: center;
										border-radius: 8px 8px 8px 0px;
									}
									
									.myCar {
										color: #C81623;
										width: 60px;
										height: 17px;
										text-decoration: none;
										line-height: 34px;
										margin-left: 42px;
										margin-top: 10px;
										font-family: Microsoft YaHei, tahoma, arial, Hiragino Sans GB, \\5b8b\4f53, sans-serif;
									}
									/*搜索框下的链接*/
									
									.under-SouSuoBox {
										float: left;
										padding-left: 3px;
										width: 384px;
										height: 20px;
										line-height: 20px;
										position: relative;
										left: -40px;
										top: 32px;
										/*overflow: hidden;*/
									}
									
									.under-SouSuoBox a {
										margin-right: 10px;
										color: #999;
									}
									/*logo部分end*/
									/*全部商品分类start*/
									
									.ShoppingDemo {
										width: 100%;
										margin-top: 73px;
										height: 33px;
										border-bottom: 2px solid #f30213;
									}
									
									.ShoppingDemo-left {
										float: left;
										position: relative;
										z-index: 10;
										width: 190px;
										height: 33px;
										line-height: 33px;
										background: #f30213;
										overflow: visible;
										
									}
									
									
									
									.ShoppingDemo-left-a {
										display: block;
										height: 33px;
										background: #f30213;
										color: #fff;
										text-decoration: none;
										text-align: center;
										font-size:14px;
									}
									.ShoppingDemo-left-a:hover {
										color: #fff;
									}
									
									.ShoppingDemo-right {
										float: left;
										position: relative;
										z-index: 2;
									}
									
									.ShoppingDemo-right ul li {
										float: left;
									}
									
									.ShoppingDemo-right a {
										height: 33px;
										padding: 0 22px;
										text-align: center;
										text-decoration: none;
										font-size: 14px;
										line-height: 33px;
										color: #333;
									}
									
									.shop-icon1 {
										font-weight: 700;
									}
									
									.icon-A {
										font-size: 12px;
									}
									
									.ShoppingDemo-inner {
										width: 190px;
										height: 460px;
										padding: 10px 0 11px;	
										border-bottom: 1px solid rgb(222, 222, 222);
										border-left: 1px solid rgb(222, 222, 222);
										border-right: 1px solid rgb(222, 222, 222);
										-moz-box-shadow: 0 0 2px 2px #eee;
										-webkit-box-shadow: 0 0 2px 2px #eee;
										box-shadow: 0 0 2px 2px #eee;
										padding: 10px 0 11px;
    									border: none;
										font-size: 14px;
										position: relative;
										color: #fff;
										display:none;
									}
									
									.item-fore1 {
									    position: relative;
									   	z-index: 1;
									    height: 27px;
									    color: #fff;
									    background:#fff;
																			
									}
									.item-fore1:hover {
										background-color:rgb(222,222,222);
									}
									
									.item-fore-h3 {
									    position: absolute;
									    /*z-index: 2;*/
									    height: 27px;
									    padding-left: 16px;
									    line-height: 27px;
									    font-size: 14px;
									    font-weight: 400;
									    color: #333;
									    }
									/*全部商品分类end*/
									
									
									/*SucceedMain部分start*/
									.SucceedMain {
										height:1198px;
										width:100%;
										background-color:#fff;
									}
									
									.SucceedMain-top {
										height:145px;
										width:100%;    
   										background: #f5f5f5;
   										margin-bottom: 20px;
									}
									
									.aready-succeed {
										height:127px;
										width:100%;
										font-family: "Microsoft YaHei";
										float:left;
									}
									
									.succeed-left {
										width:592px;
										height:127px;
										float:left;
										overflow: hidden;
						
									}
									
									.succeed-left-part1 {
										width:592px;
										height:25px;
										position: relative;
   										padding-left: 35px;
   										margin: 20px 0;
   										overflow: hidden;
									}
									
									.succeed-icon {
										position: absolute;
									    width: 25px;
									    height: 25px;
									    left:2px;
									    overflow: hidden;
									    
									    background-image: url(img/img/bc40d1e21831aea88c8379e0ae61a1bf_addtocart-icons.png);
									  
									}
									
									.icon-h3 {
									    font-size: 18px;
									    line-height: 25px;
									    font-weight: 400;
									    color: #71b247;
									 }
									 
									 .succeed-left-part2 {
									 	width:592px;
										height:62px;
										
									 
									 }
									 
									 .left-part2-img {
									 	width:62px;
										height:62px;
									 }
									 
									 .left-part2-desc {
									 
									 	width:520px;
									 	height:46px;
									 	float:right;
										display:block;
										position: relative;
										top:-46px;
										left:530px;
									 	
									 }
									
									.desc-name {
										width: 100%;
									    line-height: 28px;
									    overflow: hidden;
									    text-overflow: ellipsis;
									    white-space: nowrap;
									    font-size: 14px;
									}
									.desc-info {
										display: inline-block;
									    display: block;
									    color: #aaa;
									}
									.succeed-right {
										width:336px;
										height:126px;
										float:left;
									}
									
									.nullBox {
										float: right;
									    height: 70px;
									    width: 106px;
									    margin: 10px 0;
									    

									}
									
									.lookAndquery {
										height: 36px;
									    width: 336px;
									    position:relative;
									    
									    
									}
									.lookDetail {
										height:36px;
										width:100px;
										padding: 0 30px;
									    margin-right: 10px;
									    background: #fff;
									    color: #e4393c;
									    font-size:22px;
									    border: 1px solid #fff;
									    display: inline-block;
									    line-height: 36px;
									    font-size: 16px;
									    vertical-align: middle;
									    position: relative;
									    top:82px;
									   
									
									}
									.btn-addtocart {
										height:36px;
										position: relative;
									    width: 136px;
									    background: #e4393c;
									    border: 1px solid #e4393c;
									    color: #fff;
										top:44px;
										left:183px;
									    line-height: 36px;
									    font-size: 16px;
									    text-decoration: none;
									    display: inline-block;
									    vertical-align: middle;
									}
									
									.btn-addtocart-b {
										/*position: absolute;*/
									    top: 8px;
									    right: 15px;
									    width: 10px;
									    height: 20px;
									    display: inline-block;
									   
																		
									}
									.btn-addtocart:hover {
										color:#fff;
									}
									
									/*SucceedMain部分end*/
									
									/*MaybeNeed部分start*/
									
									.MaybeNeed {
										width:100%;
									    height: 330px;
									    position: relative;
									    overflow: hidden;
									    font-family: "Microsoft YaHei";
									    background-color:white;
									}
									.needTitle {
										display: block;
										height:18px;
    									margin-bottom: 10px;
									}
									.needTitle-h3 {
										float: left;
									    font-size: 16px;
									    color: #666;
									    font-weight: 600;
									}
									.needThings {
										width: 100%;
										height:290px;
									    left: 0px;
									    position: absolute;
									}
									.needthings-ul {
										display: block;
									    width: 100%;
									    height: 100%;
									    list-style:none;
									    float:left;
									}
									
									.needthings-li {
										margin-bottom: 40px;
										width:300px;
										height:100px;
										float:left;
										
									}
									.needItem1 {
										position: relative;
									    width: 270px;
									    background: #fff;
									    overflow: hidden;
									    margin: 0 40px 0 0;
									    height:100px;
									   
									}
									
									.needImg {
										width: 90px;
										height:100px;
									    margin-right: 10px;
									    float: left;
									    border: 1px solid #eee;
									}
									.needName {
									
										height: 36px;
									    width: 160px;
									    float: left;
									    line-height: 18px;
									    overflow: hidden;
									    margin-bottom: 4px;
									}
									.needPrice {
										width: 160px;
									    height: 19px;
									    overflow: hidden;
									    text-align: left;
									    margin-bottom: 11px;
									}
									.needPrice strong {
										font-size: 14px;
									    color: #d91f20;
									    font-family: verdana;
									    font-weight: 400;
									}
									.pt {
										color: #fff;
									    background: #e4393c;
									    padding: 0 2px;
									    margin-right: 2px;
									    font-size: 12px;
									}
									
									.putInCar {
										height:30px;
										width:150px;
										text-align: center;
    									float: left;
									}
									
									.putInCar-a {
									
										display: inline-block;
									    height: 28px;
									    line-height: 28px;
									    padding: 0 10px;
									    border: 1px solid #ddd;
									    color: #333;
									    font-size:16px;
									    text-align: center;
									    border-radius: 2px;
									}
									
									.putInCar-b {
										display: inline-block;
									    height: 18px;
									    width: 18px;
									    margin-right: 5px;
									    background-position: 0 -52px;
									    background-repeat: no-repeat;
									    position:relative;
									    overflow: hidden;
									   /* vertical-align: middle;*/
									    background-image:url(img/img/bc40d1e21831aea88c8379e0ae61a1bf_addtocart-icons.png);
											
									}
									
									.needFlash {
										height:30px;
									}
									/*MaybeNeed部分end*/
									
										
		
		</style>
		
		</head>
		
		<body>
		
			<!-- top导航栏start -->
			<div class="site-nav">
				<div class="w">
					<ul class="site-nav-fl">
						<li class="BJSY"><i></i> <a href="#">京东首页</a></li>
						<li class="BJDB"><i></i> <a href="#">北京</a></li>
						<div class="content">
							<ul class="toProvince"></ul>
						</div>
		
					</ul>
		
					<ul class="site-nav-fr">
						<li class="fore1">
							<%
							Login user = (Login)session.getAttribute("user");
							if(user==null){
							//显示 "你好,请登录"	
							%>
					
							<a href="jsp/user/login.jsp">你好,请登录</a>
							<a href="JDDispatcherServlet?target=JD/register.jsp" class="col-red">免费注册</a>
						<%
					
						}else{
						%>
							<b>你好,<%=user.getUsername()%></b>
							<a href="LoginServlet?action=logout" class="col-red">退出</a>
						<%
							//显示 "你好,XXX" 退出
							}
						%>
						</li>
						</li>
						<li class="spacer"></li>
						<li class="fore"><a href="IndexActionServlet?action=getAllOrder">我的订单</a> <i></i></li>
						<li class="spacer"></li>
						<li class="my-jd"><a href="#">我的京东</a></li>
						<li class="spacer"></li>
						<li><a href="#">京东会员</a></li>
						<li class="spacer"></li>
						<li class="fore"><a href="#" class="Business">企业采购</a><i></i>
						</li>
						<li class="spacer"></li>
						<li class="fore">客户服务 <i></i>
						</li>
						<li class="spacer"></li>
						<li class="fore">网站导航 <i></i>
						</li>
						<li class="spacer"></li>
						<li>手机京东</li>
					</ul>
		
				</div>
		
			</div>
			<!--top导航栏end  -->
			
			
			<!--logo部分start  -->
			<div class="logoBox">
				<div class="w">
					<div class="logoDog">
						<img
							src="img/img/bff8f7956d52a4ecf455ec5d2aead824_jdlogo-201708-@1x.png" />
					</div>
					<div class="SousuoBox">
						<input type="text" name="" value="电视影音" />
						<button class="searchButton">搜索</button>
					</div>
					<div class="ShopCar">
						<a href="UserProductServlet?action=getAll" class="myCar">我的购物车</a> <i class="icon1"></i> <i
							class="icon2">0</i>
					</div>
					<div class="under-SouSuoBox">
						<a href="#">海信</a> <a href="#">创维</a> <a href="#">夏普</a> <a href="#">乐视</a>
						<a href="#">飞利浦</a> <a href="#">4K高清线</a> <a href="#">闭路线</a> <a
							href="#">电源线</a>
					</div>
				</div>
			</div>
			<!--logo部分end  -->
		
		
			<!--全部商品分类start-->
			<div class="ShoppingDemo">
				<div class="w">
				
				
					<div class="ShoppingDemo-left">
						<a href="#" class="ShoppingDemo-left-a">全部商品分类</a>
						
						<!--全部商品分类隐藏部分start-->
						<div class="ShoppingDemo-inner">
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//jiadian.jd.com" target="_blank">家用电器</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//shouji.jd.com/" target="_blank">手机</a> <span
										class="cate_menu_line">/</span><a href="//wt.jd.com"
										target="_blank">运营商</a> <span class="cate_menu_line">/</span><a
										href="//shuma.jd.com/" target="_blank">数码</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//diannao.jd.com/" target="_blank">电脑</a><span
										class="cate_menu_line">/</span> <a href="//bg.jd.com"
										target="_blank">办公</a>
								</h3>
							</div>
		
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//channel.jd.com/home.html" target="_blank">家居</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/furniture.html" target="_blank">家具</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/decoration.html" target="_blank">家装</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/kitchenware.html" target="_blank">厨具</a>
								</h3>
							</div>
		
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//channel.jd.com/1315-1342.html" target="_blank">男装</a>
									<span class="cate_menu_line">/</span><a
										href="//channel.jd.com/1315-1343.html" target="_blank">女装</a> <span
										class="cate_menu_line">/</span><a
										href="//channel.jd.com/children.html" target="_blank">童装</a> <span
										class="cate_menu_line">/</span><a
										href="//channel.jd.com/1315-1345.html" target="_blank">内衣</a>
								</h3>
							</div>
		
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//beauty.jd.com/" target="_blank">美妆</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/beauty.html" target="_blank">个护清洁</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/pet.html" target="_blank">宠物</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//channel.jd.com/womensshoes.html" target="_blank">女鞋</a>
									<span class="cate_menu_line">/</span><a
										href="//channel.jd.com/bag.html" target="_blank">箱包</a> <span
										class="cate_menu_line">/</span><a
										href="//channel.jd.com/watch.html" target="_blank">钟表</a> <span
										class="cate_menu_line">/</span><a
										href="//channel.jd.com/jewellery.html" target="_blank">珠宝</a>
								</h3>
							</div>
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//channel.jd.com/mensshoes.html" target="_blank">男鞋</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/yundongcheng.html" target="_blank">运动</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/outdoor.html" target="_blank">户外</a>
								</h3>
							</div>
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//realestate.jd.com/" target="_blank">房产</a><span
										class="cate_menu_line">/</span> <a href="http://car.jd.com/"
										target="_blank">汽车</a><span class="cate_menu_line">/</span> <a
										href="//che.jd.com/" target="_blank">汽车用品</a>
								</h3>
							</div>
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//baby.jd.com" target="_blank">母婴</a><span
										class="cate_menu_line">/</span> <a href="//toy.jd.com/"
										target="_blank">玩具乐器</a>
								</h3>
							</div>
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//channel.jd.com/food.html" target="_blank">食品</a><span
										class="cate_menu_line">/</span> <a href="//jiu.jd.com"
										target="_blank">酒类</a><span class="cate_menu_line">/</span><a
										href="//fresh.jd.com" target="_blank">生鲜</a> <span
										class="cate_menu_line">/</span><a href="//china.jd.com"
										target="_blank">特产</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//art.jd.com" target="_blank">艺术</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/1672-2599.html" target="_blank">礼品鲜花</a><span
										class="cate_menu_line">/</span> <a href="//nong.jd.com"
										target="_blank">农资绿植</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//health.jd.com" target="_blank">医药保健</a><span
										class="cate_menu_line">/</span> <a
										href="//channel.jd.com/9192-9196.html" target="_blank">计生情趣</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//book.jd.com/" target="_blank">图书</a><span
										class="cate_menu_line">/</span> <a href="//mvd.jd.com/"
										target="_blank">音像</a><span class="cate_menu_line">/</span> <a
										href="//e.jd.com/ebook.html" target="_blank">电子书</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//jipiao.jd.com/" target="_blank">机票</a><span
										class="cate_menu_line">/</span> <a href="//hotel.jd.com/"
										target="_blank">酒店</a><span class="cate_menu_line">/</span> <a
										href="//trip.jd.com/" target="_blank">旅游</a><span
										class="cate_menu_line">/</span> <a href="//ish.jd.com/"
										target="_blank">生活</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//licai.jd.com/" target="_blank">理财</a><span
										class="cate_menu_line">/</span> <a href="//z.jd.com/"
										target="_blank">众筹</a><span class="cate_menu_line">/</span> <a
										href="//baitiao.jd.com" target="_blank">白条</a><span
										class="cate_menu_line">/</span> <a href="//bao.jd.com/"
										target="_blank">保险</a>
								</h3>
							</div>
		
							<div class="item-fore1">
								<h3 class="item-fore-h3">
									<a href="//anzhuang.jd.com" target="_blank">安装</a><span
										class="cate_menu_line">/</span> <a href="//jdwx.jd.com"
										target="_blank">维修</a><span class="cate_menu_line">/</span>
										 <a href="//cleanclean.jd.com" target="_blank">清洗保养</a>
								</h3>
							</div>
						</div>
					<!--全部商品分类隐藏部分end-->
				</div>
				<div class="ShoppingDemo-right">
					<ul class="shop-icon1">
						<li class="icon-A"><a href="#">京东服饰</a></li>
						<li class="icon-B"><a href="#">美妆馆</a></li>
						<li class="icon-C"><a href="#">超市</a></li>
						<li class="icon-D"><a href="#">生鲜</a></li>
						<li class="icon-E"><a href="#">全球购</a></li>
						<li class="icon-F"><a href="#">闪购</a></li>
						<li class="icon-G"><a href="#">拍卖</a></li>
						<li class="icon-H"><a href="#">金融</a></li>
					</ul>
				</div> 

		</div>
		</div>
			<!--全部商品分类end--> 
			<%
				Jdproduct category=(Jdproduct)request.getAttribute("category2");
			%>
			
			<!--SucceedMain部分start  -->
			<div class = "SucceedMain">
				<div class = "SucceedMain-top">
					<div class = "w">
						<div class = "aready-succeed">
							<div class = "succeed-left">
								<div class = "succeed-left-part1">
										<div class = "succeed-icon"></div>
										<h3 class = "icon-h3">商品已成功加入购物车！</h3>
								</div>
								
								<div class = "succeed-left-part2">
									<div class = "left-part2-img clearfix">
										<a href = "#">
											<img src = "img/img/洗面奶.jpg"/>
										</a>
										<div class = "left-part2-desc">
											<div class = "desc-name">
											<a href = "//item.jd.com/4896340.html"target = " _blank"><%=category.getPdesc() %></a>
											</div>
											<div class = "desc-info">
												<span class="txt" title="洁面【加量装150g】">颜色：洁面【加量装150g】</span>
												<span class="txt">/  数量：<%=category.getProductSum() %></span>
											</div>
										</div>
									</div>
									
								</div>
							</div>
							<div class = "succeed-right">
								<div class = "nullBox"></div>
								<div class = "lookAndquery">
									<a class="lookDetail" href="//item.jd.com/4896340.html" target="_blank" clstag="pageclick|keycount|201601152|3">查看商品详情</a>
									<a class="btn-addtocart" href="UserProductServlet?action=getAll" id="GotoShoppingCart" clstag="pageclick|keycount|201601152|4">
										<b class = "btn-addtocart-b "></b>
										去购物车结算
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--MaybeNeed部分start-->
				<div class = "w">
					<div class = "MaybeNeed">
						<div class = "needTitle">
							<h3 class = "needTitle-h3">购买了该商品的用户还购买了</h3>
						</div>
						<div class = "needBox">
							<div class = "needThings">
								<ul class = "needthings-ul">
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/XiaoMiHu.jpg" alt="小迷糊 玻尿酸补水黑面膜套装21片（补水清洁 锁水保湿 男女士护肤化妆品）">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">小迷糊 玻尿酸补水黑面膜套装21片（补水清洁 锁水保湿 男女士护肤化妆品）</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/FangShaiShuang.jpg" alt="妮维雅(NIVEA)冰爽透明防晒气雾200ml（防晒喷雾 户外SPF50 德国进口 男女护肤适用）">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">妮维雅(NIVEA)冰爽透明防晒气雾200ml（防晒喷雾 户外SPF50 德国进口 男女护肤适用）</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>139.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/Fangshaishuang2.jpg" alt="【第二件5折】资生堂安热沙（Anessa）小金瓶安耐晒防晒霜防水防汗防晒喷雾 18年新款小金瓶60ml">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">【第二件5折】资生堂安热沙（Anessa）小金瓶安耐晒防晒霜防水防汗防晒喷雾 18年新款小金瓶60ml</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/ManXiuLei.jpg" alt="曼秀雷敦（Mentholatum）控油冰爽洁面泡沫150ml（绵密泡沫 清透毛孔 控油清爽 抑制油脂分泌 护肤男）">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">曼秀雷敦（Mentholatum）控油冰爽洁面泡沫150ml（绵密泡沫 清透毛孔 控油清爽 抑制油脂分泌 护肤男））</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/kouhong.jpg" alt="迪奥（Dior） 口红  女士唇膏 情人节七夕生日礼品礼盒礼物 烈艳蓝金999 烈艳蓝金365#[肉粉色]">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">迪奥（Dior） 口红  女士唇膏 情人节七夕生日礼品礼盒礼物 烈艳蓝金999 烈艳蓝金365#[肉粉色]</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/Taohe.jpg" alt="【京东JOY联名款】兰芝(LANEIGE)水衡透润京东定制礼盒(水200+50ml+乳120+50ml+洁面50ml+面膜15ml)(护肤品)">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">【京东JOY联名款】兰芝(LANEIGE)水衡透润京东定制礼盒(水200+50ml+乳120+50ml+洁面50ml+面膜15ml)(护肤品)）</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/zhijiayou.jpg" alt="MissCandy健康美甲 可撕拉指甲油 美甲套装  亮片脚指甲油  美甲钻饰香樟树MCS262">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">MissCandy健康美甲 可撕拉指甲油 美甲套装  亮片脚指甲油  美甲钻饰香樟树MCS262</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									<li class = "needthings-li">
										<div class = "needItem1" >
											<div class = "needImg">
												<a target="_blank" href="//item.jd.com/1862177.html">
													<img width="98" height="98" +="" src="img/img/manOu.jpg" alt="欧莱雅（LOREAL） 套装男士护肤品防晒霜水能保湿洗面奶爽肤水乳液 四件套洁面膏+水凝露+滋润乳+防晒保湿露">
												</a>
											</div>
											<div class = "needName">
												<a target="_blank" href="//item.jd.com/1862177.html">欧莱雅（LOREAL） 套装男士护肤品防晒霜水能保湿洗面奶爽肤水乳液 四件套洁面膏+水凝露+滋润乳+防晒保湿露</a>
											</div>
											<div class = "needPrice">
												<strong><em>￥</em><i>59.00</i></strong>
												<a class="pt" title="购买本商品送赠品">赠品</a>
											</div>
											<div class = "putInCar">
												<a class = "putInCar-a">
													<b class = "putInCar-b"></b>
													加入购物车
												</a>
											</div>
										</div>
									</li>
									
								</ul>
							</div>
						</div>
						<div class = "needFlash"></div>
					</div>
				</div>
				<!--MaybeNeed部分end-->
			</div>
			<!--SucceedMain部分end  -->
			
			
				<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
				<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
				<script src="js/JoinSucceed.js" type="text/javascript" charset="utf-8"></script>
				
				<script>
					/**
 * 
 */

	$(document).ready(function() {
		
			//全部分类下的隐藏框
			$(".ShoppingDemo-left-a").mouseover(function() {
				
				$(".ShoppingDemo-inner").show();
			});
			

			$(".ShoppingDemo-left-a").mouseout(function() {
				$(".ShoppingDemo-inner").hide();
			});
			
			$(".ShoppingDemo-inner").mouseout(function() {
				$(".ShoppingDemo-inner").hide();
			});
			
			$(".ShoppingDemo-inner").mouseover(function() {
				
				$(".ShoppingDemo-inner").show();
			});
			
			
	
			
			});
				</script>
		</body>
		</html>
		
		
