<%@ page language="java" import="java.util.*,com.vo.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

<head>
<base href="<%=basePath%>">
<meta charset="utf-8" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/shopping.css" />
<title></title>
<style type="text/css">
@font-face {
	font-family: 'icomoon';
	src: url('fonts/icomoon.eot?d46h9l');
	src: url('fonts/icomoon.eot?d46h9l#iefix') format('embedded-opentype'),
		url('fonts/icomoon.ttf?d46h9l') format('truetype'),
		url('fonts/icomoon.woff?d46h9l') format('woff'),
		url('fonts/icomoon.svg?d46h9l#icomoon') format('svg');
	font-weight: normal;
	font-style: normal;
}
/*css 初始化 */
html, body, ul, li, ol, dl, dd, dt, form, fieldset, legend, img {
	margin: 0;
	padding: 0;
}

fieldset, img, input, button {
	/*fieldset组合表单中的相关元素*/ : none;
	padding: 0;
	margin: 0;
	outline-style: none;
}

ul, ol {
	list-style: none;
	/*清除列表风格*/
}

input {
	padding-top: 0;
	padding-bottom: 0;
	font-family: "SimSun", "宋体";
}

select, input {
	vertical-align: middle;
}

select, input, textarea {
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

.clearfix:before, .clearfix:after {
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
	color: #666;
	text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
	text-decoration: none;
	font-size: 100%;
}

s, i, em {
	font-style: normal;
	text-decoration: none;
	font-family: 'icomoon';
}

.col-red {
	color: #C81623 !important;
}

.w {
	width: 990px;
	margin: 0 auto;
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

a:hover, a:active {
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
	font-family: tahoma, arial, Microsoft YaHei, Hiragino Sans GB,
		"\u5b8b\u4f53", sans-serif;
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
	top: -30px;
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
/*logobox部分start*/
.logoBox {
	height: 97px;
	padding: 10px 0 0;
}

.logoImg {
	float: left;
	position: relative;
	width: 277px;
	padding: 0;
	z-index: 12;
	float: left;
	width: 276px;
	height: 50px;
	margin: 15px 0 22px;
}

.logoImg-a1 {
	display: block;
	margin-top: 2px;
	width: 134px;
	height: 42px;
	background: url(img/img/jdlogo.png) no-repeat 0 0;
	background-size: 134px 42px;
	text-indent: -20000px;
}

.logoImg-a2 {
	overflow: hidden;
	display: block;
	position: absolute;
	width: 100px;
	height: 40px;
	line-height: 99em;
	top: 14px;
	right: 38px;
	background: #fff;
}

.SouSuBox {
	float: right;
	border: 2px solid #c91623;
	height: 24px;
	width: 326px;
	margin-top: 30px;
	overflow: hidde;
	position: relative;
}

.logo-b {
	display: block;
	position: absolute;
	width: 100px;
	height: 40px;
	line-height: 99em;
	top: 0;
	right: 0;
	background: url(img/img/shop-car.png) #fff no-repeat;
}

.itxt {
	border: 0;
	height: 18px;
	line-height: 18px;
	width: 260px;
	padding: 3px 5px;
	outline: 0;
}

.button {
	display: inline-block;
	vertical-align: top;
	width: 48px;
	height: 24px;
	position: relative;
	background: #c91623;
	text-align: center;
	color: #fff;
	font-weight: 700;
	left: 5px;
	text-decoration: none;
	-webkit-appearance: none;
}
/*logobox部分end*/
/*主体部分start*/
.w {
	width: 990px;
	margin: auto;
}

.nullBox {
	height: 298px;
}

.inner {
	height: 98px;
	padding-left: 300px;
	padding-top: 75px;
}

.inner-img {
	height: 100px;
	width: 100px;
	float: left;
	position: relative;
	left: 10px;
}

.inner-img img {
	height: 55px;
	width: 75px;
}

.inner-ul {
	list-style: none;
}

.li-text {
	font-size: 14px;
	line-height: 26px;
}

.car-icon {
	font-family: arial, "Microsoft YaHei";
	display: inline-block;
	height: 25px;
	line-height: 25px;
	background-color: #e74649;
	background-image: linear-gradient(to top, #e74649 0, #df3134 100%);
	border-radius: 3px;
	color: #fff;
	font-size: 12px;
	font-weight: 400;
	padding: 0 10px;
	vertical-align: middle;
	cursor: pointer;
	border: 0;
	float: none;
	transition: all .2s ease-out;
	margin-right: 10px;
}

.car-icon:hover {
	color: #fff;
}

.car-icon2 {
	color: #005ea7;
}
/*主体部分end*/
/*添加商品部分*/

/*结算*/
.cart-floatbar {
	position: relative;
	margin-top: 20px;
	border: 1px solid #aaa;
	font-weight: 30;
}

.toolbar-wrap {
	position: relative;
	height: 52px;
	width: 988px;
	margin: 0 auto;
}

.toolbar-wrap .options-box {
	position: relative;
	height: 50px;
}

.toolbar-wrap .selected-all {
	float: left;
	height: 18px;
	line-height: 18px;
	padding: 16px 0px 16px 9px;
	white-space: nowrap;
	margin-left: -2px;
}

.cart-checkbox {
	position: relative;
	z-index: 3;
	float: left;
	margin-right: 5px;
}

.operation {
	margin-left: 42px;
	margin-top: -34px;
	float: left;
	height: 50px;
	width: 310px;
	line-height: 50px;
}

.toolbar-wrap .operation a {
	float: left;
	margin-left: 10px;
	color: #666;
	font-weight: 400;
	font-family: verdana;
}

.toolbar-wrap .operation .cleaner-opt {
	position: relative;
	font-weight: 800;
}

.toolbar-wrap .toolbar-right {
	position: absolute;
	float: right;
	width: 610px;
	height: 52px;
	left: 338px;
	top: -1px;
}

.toolbar-wrap .toolbar-right .normal {
	height: 52px;
}

.toolbar-wrap .toolbar-right .normal .comm-right {
	float: right;
	width: 650px;
	height: 52px;
}

.toolbar-wrap .btn-area {
	float: right;
}

.toolbar-wrap .btn-area .sumbit-btn {
	display: block;
	position: relative;
	width: 96px;
	height: 52px;
	line-height: 52px;
	color: #fff;
	text-align: center;
	font-size: 18px;
	font-family: "微软雅黑";
	background: #e54346;
	overflow: hidden;
	left: 41px;
}

.toolbar-wrap .btn-area .sumbit-btn b {
	display: block;
	position: absolute;
	width: 96px;
	height: 54px;
	top: 0;
	left: 0;
	overflow: hidden;
	background: url(img/img/cart-submit-btn.png) 0 0 no-repeat;
}

.toolbar-wrap .price-sum {
	float: right;
	height: 43px;
	line-height: 26px;
	margin: 7px 20px 0px 10px;
	color: #666;
	width: auto;
	position: relative;
}

.toolbar-wrap .price-sum .txt-new {
	width: 50px;
}

.toolbar-wrap .price-sum .txt {
	float: left;
	text-align: right;
	color: #999;
}

.toolbar-wrap .price-sum .price>em {
	font-size: 16px;
	color: #e4393c;
	font-weight: 700;
}

.toolbar-wrap .price-sum .price-tips {
	vertical-align: text-bottom;
	display: inline-block;
	height: 18px;
	width: 12px;
	background: url(img/img/price-tips.png) 0 0 no-repeat;
}

.toolbar-wrap .price-sum .txt {
	float: left;
	width: 50px;
	text-align: right;
	color: #999;
}

.toolbar-wrap .price-sum .price {
	display: inline-block;
	text-align: right;
	font-family: verdana;
	margin-top: -2px;
}

.toolbar-wrap .amount-sum {
	float: right;
	color: #999;
	height: 44px;
	line-height: 20px;
	margin: 7px 0px 0px;
	cursor: pointer;
}

.toolbar-wrap .amount-sum em {
	color: #e4393c;
	font-family: verdana;
	font-weight: 700;
	margin: 0 3px;
}

.toolbar-wrap .amount-sum b {
	display: inline-block;
	width: 9px;
	height: 5px;
	background: url(img/img/cart-icons-201805.png) -45px -91px;
	overflow: hidden;
	vertical-align: middle;
}

.cart-smart {
	margin-top: 23px;
}

#c-tabs-new {
	position: relative;
	top: 20px;
	overflow: visible;
}

#c-tabs-new .mt {
	margin-bottom: 10px;
}

#c-tabs-new .c-item {
	display: inline-block;
	margin-right: 35px;
	padding-bottom: 3px;
	border-bottom: 2px solid #fff;
}

.extra a {
	color: #666;
	text-decoration: none;
}

#c-tabs-new .mc {
	height: 230px;
	overflow: visible;
}

#c-tabs-new .goods-list-tab {
	float: right;
	position: relative;
	right: 0;
	top: -26px;
	width: 52px;
}

#c-tabs-new .goods-list-tab .curr {
	width: 26px;
	background: #aaa;
}

#c-tabs-new .goods-list-tab .s-item {
	display: inline-block;
	height: 8px;
	margin-left: 3px;
	overflow: hidden;
	border-radius: 4px;
	background: #e4393c;
}

#c-tabs-new .mc {
	overflow: visible;
	height: 326px;
}

#c-tabs-new .goods-list li {
	float: left;
}

#c-tabs-new .goods-list .item {
	width: 206px;
	padding: 20px;
	background: #fff;
	margin: -1px 0 0 -1px;
	border: 1px dashed #cacaca;
	overflow: hidden;
}

#c-tabs-new .goods-list .p-img {
	width: 160px;
	margin: 0 auto;
}

#c-tabs-new .goods-list .p-name {
	height: 36px;
	line-height: 18px;
	margin: 5px 0;
	overflow: hidden;
}

#c-tabs-new .goods-list .p-price {
	width: 100%;
	margin: 5px 0px 2px;
	overflow: hidden;
	text-align: center;
}

#c-tabs-new .goods-list .p-price strong {
	font-size: 14px;
	color: #d91f20;
	font-family: verdana;
	font-weight: 400;
}

#c-tabs-new .goods-list .p-btn {
	margin: 10px 0 0;
	text-align: center;
}

#c-tabs-new .goods-list .btn-append {
	display: inline-block;
	height: 28px;
	line-height: 28px;
	padding: 0 20px;
	border: 1px solid #999;
	color: #666;
	text-align: center;
	border-radius: 3px;
}

#c-tabs-new .goods-list .btn-append b {
	display: inline-block;
	height: 18px;
	width: 18px;
	margin-right: 5px;
	background-position: 0 -57px;
	background-repeat: no-repeat;
	overflow: hidden;
	vertical-align: middle;
}

#c-tabs-new .goods-list .btn-append b {
	background-image: url(img/img/car.png);
}

#c-tabs-new .goods-list .item-1 {
	float: right;
	width: 206px;
	padding: 20px;
	background: #fff;
	margin: -19px 0 0 -1px;
	border: 1px dashed #cacaca;
	overflow: hidden;
}

/*服务及版权等*/
#service-2014 {
	margin-bottom: 20px;
}

#service-2014 .slogen .item {
	display: inline-block;
	position: absolute;
	left: 50%;
	top: 20px;
	width: 245px;
	height: 54px;
	text-align: left;
	vertical-align: middle;
	font: 400 18px/50px "microsoft yahei";
}

.slogen {
	position: relative;
	height: 54px;
	padding: 20px 0;
	margin-bottom: 14px;
	background: #F5F5F5;
	text-align: center;
}

#service-2014 .slogen .fore1 {
	margin-left: -490px;
}

#service-2014 .slogen .fore1 i {
	background-image:
		url(//misc.360buyimg.com/jdf/1.0.0/unit/service/1.0.0/i/service_items_1.png);
}

#service-2014 .slogen .item i {
	display: block;
	position: absolute;
	top: 0;
	left: 10px;
	width: 220px;
	height: 54px;
	background-repeat: no-repeat;
	background-position: 0 0;
}

#service-2014 .slogen .item b {
	padding: 0 10px;
	font-size: 24px;
	color: #C81623;
}

#service-2014 .slogen .fore2 {
	margin-left: -245px;
}

#service-2014 .slogen .fore3 {
	margin-left: 0;
}

#service-2014 .slogen .fore4 {
	margin-left: 245px;
}

#service-2014 .slogen .fore1 i {
	background-image: url(img/img/duo.png);
}

#service-2014 .slogen .fore2 i {
	background-image: url(img/img/kuai.png);
}

#service-2014 .slogen .fore3 i {
	background-image: url(img/img/hao.png);
}

#service-2014 .slogen .fore4 i {
	background-image: url(img/img/duo.png);
}

#service-2014 dl {
	float: left;
	width: 222px;
}

#service-2014 dt {
	padding: 6px 0;
	font: 400 16px/24px "microsoft yahei";
}

#service-2014 dd {
	line-height: 20px;
}

#service-2014 dl.fore5 {
	width: 100px;
}

.clear, .clr {
	display: block;
	overflow: hidden;
	clear: both;
	height: 0;
	line-height: 0;
	font-size: 0;
}

/*右边悬浮等*/
.backpanel-inner {
	position: fixed;
	z-index: 999;
	left: 50%;
	margin-left: 495px;
	bottom: 51px;
}

.backpanel-inner .bp-item {
	width: 38px;
	height: 38px;
	background: #fff;
}

.backpanel-inner .bp-item .myfollow, .backpanel-inner .bp-item .survey,
	.backpanel-inner .bp-item .tohelp {
	background-position: 0 0;
	line-height: 14px;
	background-image: none;
	text-decoration: none;
	background-color: #aaa;
	color: #fff;
}

.backpanel-inner .bp-item {
	width: 38px;
	height: 38px;
	background: #fff;
}

.backpanel-inner .bp-item .backtop {
	background-position: 0 -55px;
}

.backpanel-inner .bp-item a {
	display: block;
	background-image: url(img/img/xiangshang.png);
	background-color: #aaa;
	background-repeat: no-repeat;
	padding: 5px 0 0 7px;
	color: #fff;
	height: 33px;
	line-height: 1000px;
	overflow: hidden;
	margin-top: 5px;
}

/*�ײ���Ȩ��*/
#footer-2014 {
	border-top: 1px solid #E5E5E5;
	padding: 20px 0 30px;
	text-align: center;
}

#footer-2014 .links a {
	margin: 0 10px;
}

#footer-2014 .copyright {
	margin: 10px 0;
}

#footer-2014 .authentication a {
	margin: 0 5px;
	text-decoration: none;
}

img {
	border: 0;
	vertical-align: middle;
}

.all-bottom {
	width: 0px;
	height: 15px;
}

.w {
	width: 990px;
	margin: 0 auto;
}

.tjbtn b {
	position: absolute;
	left: 0;
	top: 0;
	width: 135px;
	height: 36px;
	background: url(img/img/btn-submit.jpg) no-repeat;
	cursor: pointer;
	overflow: hidden;
}

.car {
	margin-top: 50px;
}
</style>

</head>

<body>

	<!-- top导航栏start -->
	<div class="site-nav">
		<div class="w">

			<ul class="site-nav-fl">
				<li class="BJSY"><i></i> <a href="#">京东首页</a></li>
				<li class="BJDB"><i></i> <a href="#">北京</a></li>

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
							}
						%>
					
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
			<div class="logoImg">
				<a class="logoImg-a1"></a> <a class="logoImg-a2"> <b
					class="logo-b"></b>
				</a>
			</div>
			<div class="SouSuBox">
				<div class="form">
					<input id="key" type="text" class="itxt" value="自营"
						style="color: rgb(153, 153, 153);"> <input type="button"
						class="button" value="搜索"
						clstag="clickcart|keycount|xincart|cart_search"
						onclick="javascript:void(0);">
				</div>
			</div>
		</div>
	</div>
	<!--logo部分end  -->

	<!--主体部分start-->
	<div class="nullBox">
		<div class="w">
			<div class="inner">
				<div class="inner-img">
					<img src="img/img/shopping-car.png" />
				</div>
				<ul class="inner-ul">
					<li class="li-text">
					<li class="txt">购物车空空的哦~，去看看心仪的商品吧~</li>
					<li><a class="car-icon">登录</a> <a class="car-icon2">去购物</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!--下一行-->


	</div>

	<!--结算-->
	<!--结算商品-->

	<!--主体部分end-->
	<!--还喜欢-->
	<div class="w">
		<div id="c-tabs-new" class="m m1">
			<div class="mt">
				<div class="extra-1">
					<a href="#none" class="c-item">猜你喜欢</a> <a href="#none"
						class="c-item">随手购</a> <a href="#nonoe" class="c-item">我的关注</a>
				</div>
				<div class="extra-r"></div>
			</div>
			<div class="mc c-panel-main" style="position: relative;">
				<div class="guess-prouducts" class="c-panel ui-switchable "
					style="position: relative;z-index: 1; opacity: 1;">
					<div class="goods-list-tab">
						<a href="#" class="s-item curr"></a> <a href="#" class="s-item"></a>
						<a href="#" class="s-item"></a>
					</div>
					<div class="mc c-panel-main" style="position: relative;">
						<div class="goods-list c-panel ui-switchabl"
							style="position: relative; z-index: 1;opacity: 1;">
							<ul>
								<li>
									<div class="item">
										<div class="p-img">
											<a href="#" class="p-img-a"> <img src="img/img/man.jpg"
												width="160" height="160" />
											</a>
										</div>
										<div class="p-name">
											<a href="#"> 御泥坊男士 黑茶清爽矿物面膜20片（男士护肤 清洁补水 控油保湿 收缩毛孔 去油改善黑头
												黑面膜贴 </a>
										</div>
										<div class="p-price">
											<strong> <em>￥</em> <i>69.90</i>
											</strong>
										</div>
										<div class="p-btn">
											<a href="#" class="btn-append"> <b></b>加入购物车
											</a>
										</div>
									</div>
								</li>
								<li>
									<div class="item">
										<div class="p-img">
											<a href="#"> <img src="img/img/Heini.jpg" width="160"
												height="160" />
											</a>

										</div>
										<div class="p-name">
											<a href="#"> 悦诗风吟黑珍珠炭黑面膜[细嫩] 23ml*6片（京东自营 补水美白祛痘面膜 精华液面膜
												男女通用） </a>
										</div>
										<div class="p-price">
											<strong> <em>￥</em> <i>128.00</i>
											</strong>
										</div>
										<div class="p-btn">
											<a href="#" class="btn-append"> <b></b>加入购物车
											</a>
										</div>
									</div>
								</li>
								<li>
									<div class="item">
										<div class="p-img">
											<a href="#"> <img src="img/img/mike.jpg" width="160"
												height="160" />
											</a>

										</div>
										<div class="p-name">
											<a href="#"> 德国DMK进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12盒 </a>
										</div>
										<div class="p-price">
											<strong> <em>￥</em> <i>139.00</i>
											</strong>
										</div>
										<div class="p-btn">
											<a href="#" class="btn-append"> <b></b> 加入购物车
											</a>
										</div>
									</div>
								</li>
								<li>
									<div class="item-1">
										<div class="p-img">
											<a href="#"> <img src="img/img/niunaiTaohe.jpg"
												width="160" height="160" />
											</a>

										</div>
										<div class="p-name">
											<a href="#"> 光明 莫斯利安 常温酸奶酸牛奶(原味)350g*6盒/礼盒装 </a>
										</div>
										<div class="p-price">
											<strong> <em>￥</em> <i>86.00</i>
											</strong>
										</div>
										<div class="p-btn">
											<a href="#" class="btn-append"> <b></b> 加入购物车
											</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--最后部分-->

	<div class=""
		style="margin-top: 80px; background-color:rgba(227,228,229,0.5)">
		<!--服务 -->
		<div id="service-2014">
			<div class="slogen">
				<span class="item fore1"><i></i></span> <span class="item fore2"><i></i></span>
				<span class="item fore3"><i></i></span> <span class="item fore4"><i></i></span>
			</div>
			<div class="w">
				<dl class="fore1">
					<dt>购物指南</dt>
					<dd>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-29.html">购物流程</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-151.html">会员介绍</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue.html">常见问题</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-136.html">大家电</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/index.html">联系客服</a>
						</div>
					</dd>
				</dl>
				<dl class="fore2">
					<dt>配送方式</dt>
					<dd>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-81-100.html">上门自提</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-81.html">211限时达</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/103-983.html">配送服务查询</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a>
						</div>
						<div>
							<a target="_blank" href="//en.jd.com/chinese.html">海外配送</a>
						</div>
					</dd>
				</dl>
				<dl class="fore3">
					<dt>支付方式</dt>
					<dd>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-172.html">货到付款</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-173.html">在线支付</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-176.html">分期付款</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-174.html">邮局汇款</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-175.html">公司转账</a>
						</div>
					</dd>
				</dl>
				<dl class="fore4">
					<dt>售后服务</dt>
					<dd>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/321-981.html">售后政策</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-132.html">价格保护</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/130-978.html">退款说明</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//myjd.jd.com/repair/repairs.action">返修/退换货</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//help.jd.com/user/issue/list-50.html">取消订单</a>
						</div>
					</dd>
				</dl>
				<dl class="fore5">
					<dt>特色服务</dt>
					<dd>
						<div>
							<a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a>
						</div>
						<div>
							<a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank"
								href="//o.jd.com/market/index.action">京东E卡</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank" href="//mobile.jd.com/">京东通信</a>
						</div>
						<div>
							<a rel="nofollow" target="_blank" href="//s.jd.com/">京东JD+</a>
						</div>
					</dd>
				</dl>
				<span class="clr"></span>
			</div>
		</div>

		<!-- 底部版权等 -->
		<div class="w">
			<div id="footer-2014" style="background-color:rgba(227,228,229,0.5)">
				<div class="links">
					<a rel="nofollow" target="_blank"
						href="//www.jd.com/intro/about.aspx">关于我们</a>| <a rel="nofollow"
						target="_blank" href="//www.jd.com/contact/">联系我们</a>| <a
						rel="nofollow" target="_blank"
						href="//www.jd.com/contact/joinin.aspx">商家入驻</a>| <a
						rel="nofollow" target="_blank" href="//jzt.jd.com">营销中心</a>| <a
						rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>| <a
						target="_blank" href="//club.jd.com/links.aspx">友情链接</a>| <a
						target="_blank" href="//media.jd.com/">销售联盟</a>| <a
						href="//club.jd.com/" target="_blank">京东社区</a>| <a
						href="//gongyi.jd.com" target="_blank">京东公益</a>| <a
						href="//en.jd.com/" target="_blank">English Site</a>| <a
						href="//en.jd.com/help/question-58.html" target="_blank">Contact
						Us</a>
				</div>
				<div class="copyright">
					<a target="_blank"
						href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088"><img
						src="img/img/gongan.png"> 京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;
					<a target="_blank"
						href="//img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;
					<a rel="nofollow"
						href="//img30.360buyimg.com/uba/jfs/t1036/328/1487467280/1405104/ea57ab94/5732f60aN53b01d06.jpg"
						target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a
						href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;©&nbsp;2004-2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733<br>京东旗下网站：
					<a href="https://www.jdpay.com/" target="_blank">京东钱包</a>
				</div>
				<div class="authentication">
					<a rel="nofollow" target="_blank"
						href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026">
						<img alt="经营性网站备案中心" src="img/img/jingying.png"
						class="err-product" height="32" width="103">
					</a> <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1"
						href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&amp;ct=df&amp;pa=294005">
						<img onclick="CNNIC_change('urlknet')"
						oncontextmenu="return false;" name="CNNIC_seal" alt="可信网站"
						src="img/img/kexin.png" class="err-product" height="32"
						border="true" width="103">
					</a> <a rel="nofollow" target="_blank"
						href="http://www.bj.cyberpolice.cn/index.do"> <img alt="网络警察"
						src="img/img/wangluo.png" class="err-product" height="32"
						width="103">
					</a> <a rel="nofollow" target="_blank"
						href="https://search.szfw.org/cert/l/CX20120111001803001836">
						<img src="img/img/chengxin.png" class="err-product" height="32"
						width="103">
					</a> <a target="_blank" href="http://www.12377.cn"><img
						src="img/img/zhongguo.png" height="32" width="103"></a> <a
						target="_blank" href="http://www.12377.cn/node_548446.htm"><img
						src="img/img/jubao.png" height="32" width="103"></a>
				</div>
			</div>
		</div>
	</div>

</body>

</html>



<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript"
	charset="utf-8"></script>
<script src="css/bootstrap/js/bootstrap.js" type="text/javascript"
	charset="utf-8"></script>
<script src="css/jQuery-confirm/jquery-confirm.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function deleteCategoryById(id) {
		$.confirm({
			title : '',
			content : '您确认删除吗?',
			confirm : function() {

				location.assign("ProductServlet?action=deletePorduct&cid=" + id);
			},
			cancel : function() {},
		});
	}
</script>
</body>

</html>