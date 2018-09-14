<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>购物车</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/jQuery-confirm/jquery-confirm.css"/>
		<style type="text/css">
	@font-face {
  font-family: 'iconfont';  /* project id 798770 */
  src: url('//at.alicdn.com/t/font_798770_yb9940qwssd.eot');
  src: url('//at.alicdn.com/t/font_798770_yb9940qwssd.eot?#iefix') format('embedded-opentype'),
  url('//at.alicdn.com/t/font_798770_yb9940qwssd.woff') format('woff'),
  url('//at.alicdn.com/t/font_798770_yb9940qwssd.ttf') format('truetype'),
  url('//at.alicdn.com/t/font_798770_yb9940qwssd.svg#iconfont') format('svg');
}
.iconfont{
    font-family:"iconfont" !important;
    font-size:16px;font-style:normal;
    -webkit-font-smoothing: antialiased;
    -webkit-text-stroke-width: 0.2px;
    -moz-osx-font-smoothing: grayscale;}
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
		color: #666;
		text-decoration: none;
	}
	a:hover{
	text-decoration: none;
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
		background: url(img/img/img/jdlogo.png) no-repeat 0 0;
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
		background: url(img/img/img/shop-car.png) #fff no-repeat;
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
	
	.mb10{
		margin-bottom: 10px;
	}
	
	.nologin-tip {
		border: 1px solid #edd28b;
		background: #fffdee;
		padding: 10px 20px;
		line-height: 25px;
		margin-bottom: 20px;
		color: #f70;
	}
	.nologin-tip .wicon{
		display: inline-block;
		vertical-align: middle;
		margin-right: 10px;
		width: 16px;
		height: 16px;
		overflow: hidden;
		background: url(img/img/img/4179542f50f9f96bc65f66d3b1d742e4_icon16.png) 0 0 no-repeat;
	}
	.btn-1 {
		line-height: 25px;
		font-family: arial, "Microsoft YaHei";
		display: inline-block;
		height: 25px;
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
	}
	.cart-filter-bar{
		
	}
	.cart-filter-bar .switch-cart {
		float: left;
		position: relative;
		height: 26px;
		overflow: hidden;
		list-style: none;
	}
	
	.cart-filter-bar .switch-cart li .curr {
		color: #E4393C;
	}
	
	.cart-filter-bar .switch-cart li {
		float: left;
		position: relative;
		font-weight: 700;
		font-size: 16px;
		height: 26px;	
		line-height: 26px;
		text-align: center;
		padding: 0 0 10px;
		cursor: pointer;
		margin: 5px 30px 0 0;
		color: #e4393c;
	}
	.cart-filter-bar .switch-cart li .curr{
		color: #e4393c;
	}
	.cart-filter-bar .switch-cart li a{
		color: #333;
	}
	
	.cart-filter-bar .switch-cart li {
		font-family: verdana;
		font-size: 14px;
	}
	.cart-filter-bar .cart-store{
		float: right;
	}
	.cart-store {
		position: relative;
		z-index: 5;
		display: block;
		margin-bottom: 10px;
		padding-left: 122px;
		}
	
	.cart-store .label {
		float: left;
		line-height: 26px;
	}
	
	#jdarea {
		position: relative;
		float: left;
		z-index: 3;
		height: 26px;
		cursor: default;
		margin: 0;
	}
	
	.ui-area-wrap .ui-area-text-wrap {
		float: left;
		position: relative;
		top: 0;
		height: 23px;
		background: #fff;
		border: 1px solid #CECBCE;
		padding: 0 24px 0 4px;
		line-height: 23px;
		overflow: hidden;
	}
	.ui-area-wrap .ui-area-text-wrap b {
		display: inline-block;
		position: absolute;
		top: 3px;
		right: 4px;
		width: 17px;
		height: 17px;
		background: url(img/img/img/0cea035ea5fbf23067614e2137bd0852_59088392N8b6279bb.png)) no-repeat 3px 5px;
		overflow: hidden;
	}
	.clr{
		display: block;
		overflow: hidden;
		clear: both;
		height: 0;
		line-height: 0;
		font-size: 0;
	}
	.cart-filter-bar .w-line {
		height: 1px;
		background: #e0e0e0;
	}
	/*主体部分end*/
	/*添加商品部分*/
	
	.cart-filter-bar .w-line .floater{
		position: absolute;
		height: 2px;
		background: #e4393c;
		overflow: hidden;
	}
	.cart-warp{
		background-color: #fff;
		margin-bottom: 20px;
	}
	.cart-main .cart-thead{
		display: block;
		height: 32px;
		line-height: 32px;
		margin: 0 0 10px;
		padding: 5px 0;
		background: #f3f3f3;
		border: 1px solid #e9e9e9;
		border-top: 0;
		position: relative;
	}
	.cart-main .cart-thead .t-checkbox{
		height: 18px;
		line-height: 18px;
		padding-top: 7px;
		width: 122px;
		padding-left: 11px;
		
	}
	.cart-main .cart-thead .column{
		float: left;
	}
	
	.cart-checkbox{
		position: relative;
		z-index: 3;
		float: left;
		margin-right: 5px;
	}
	.cart-main .jdcheckbox{
			float: none;
			position: relative;
			z-index: 5px;
			vertical-align: middle;
			margin: 0 3px 0 0;
			padding: 0;
	
	}
	#cart-list input.jdcheckbox{
			float: none;
			position: relative;
			vertical-align: middle;
			margin: 0 3px 0 0;
		
	}
	

	.cart-main-new .cart-thead .t-goods{
		width: 208px;
	}
	
	.cart-main-new .cart-thead .t-props{
		width: 140px;
	}
	.cart-main .cart-thead .t-props{
		height: 32px;
		padding: 0 10px 0 20px;
	}
	.cart-main  .cart-thead .t-price{
		width: 120px;
		padding-left: 40px;
		text-align: right;
	}
	.cart-main .cart-thead .t-quantity{
		width: 80px;
		text-align: center;
	}
	.cart-main .cart-thead .t-sum{
		width: 100px;
		padding-right: 40px;
		text-align: right;
	}
	.cart-main .cart-thead .t-action{
		width: 75px;
	}
	.cart-item-list{
		margin-bottom: 20px;
	}
	.cart-tbody{
		font-family: "microsoft yahei",simsun,verdana;
	}
	.cart-tbody .shop{
			height: 30px;
			line-height: 30px;
			padding-left: 11px;
			font-weight: 700;
	}
	.cart-checkbox{
		position: relative;
		z-index: 3;
		float: left;
		margin-right: 5px;
	}
	.cart-main .jdcheckbox{
		float: left;
		position: relative;
		z-index: 5;
		vertical-align: middle;
		margin: 0 3px 0 0 ;
		padding: 0;
	}
	.cart-tbody .shop .shop-txt{
		float: left;
		width: 42%;
	}
	.cart-tbody .shop .shop-name{
		display: inline-block;
		max-width: 260px;
		overflow: hidden;	
		vertical-align: middle;
		height: 30px;
		line-height: 30px;
		
	}
	.cart-tbody .shop  .btn-im{
		display: inline-block;
		vertical-align: middle;
		background:url(img/img/img/cart-icons-201806.png)-84px -49px ;
		width: 16px;
		height: 16px;
		line-height: 100px;
		overflow:hidden;
		margin: 0 0 0 10px;
	}
	.cart-tbody .shop .shop-extra-r{
		float: right;
		font-weight: 400;
	}
	.item-list{
		position: relative;
		border-style: solid;
		border-width: 2px 1px 1px;
		border-color: #aaa #f1f1f1 #f1f1f1;
		background: #fff4e8;
	}
	.item_con{
		height: 118px;
		padding: 0 0 1px 40px;
	}
	.item_inp{
		position: absolute;
		z-index: 3;
		left: 10px;
		top: 0;
		width: 30px;
		min-height: 10px;
		float: left;
		padding: 15px 0 10px;
	}
	.item_from{
		height: 108px;
		width: 948px;
	}
	.item_from div{
		float: left;
	}
	.p_goods{
		width: 300px;
		padding: 15px 0 10px;
	}
	.goods_item{
		height: 82px;
	}
	.goods_item div{
		float: left;
	}
	.p-img{
		width:100px;
		margin:0 auto;
	}
	.p_name{
		height: 40px;
		width:140px;
		line-height: 20px;
		overflow: hidden;
	}
	.p_props{
		width: 130px;
		min-height: 10px;
		line-height: 20px;
		overflow: hidden;
		padding: 15px 0 0 20px;
	    padding-right: 0px;
	}
	.p_price{
		width: 150px;
		font-family: verdana;
		padding: 15px 0 10px;
		padding-right: 40px;
		text-align: right;
	}
	.p_price strong{
		display: block;
		color: #333;
		font-weight: 400;
	}
	
	.p_price div>a{
		display: inline-block;
		width: 28px;
		border: 1px solid #f9d2d3;
		color: #e4393c;
		height: 18px;
		text-align: left;
		line-height: 20px;
		padding: 0 15px 0 5px;
		cursor: pointer;
		background: #fff;
		text-decoration: none;
		float: right;
		overflow: hidden;
		position: relative;
		margin-left:98.5px;
	}
	.p_price div>a>b{
		display: block;
		position: absolute;
		right: 8px;
		top: 8px;
		width: 7px;
		height: 4px;
		margin-left: 5px;
		overflow: hidden;
		background: url(img/img/img/cart-icons-201806.png) -82px -3px;
	}
	.p_quantity{
		width: 80px;
		float: left;
		padding: 15px 0 10px;
		line-height: 20px;
	}
	.quantity_form{
		position: relative;
		height: 22px;
		width: 80px;
	}
	._form_a_del{
		display: block;
		border: 1px solid #cacbcb;
		height: 18px;
		line-height: 18px;
		padding: 1px 0;
		width: 15px;
		text-align: center;
		color: #666;
		background: #fff;
		cursor: default;
	}
	._form_a_del:hover{
	cursor:pointer;
	}
	.itxt1{
		position: absolute;
		left: 17px;
		top: 0;
		border: 1px solid #cacbcb;
		width: 42px;
		height: 18px;
		line-height: 18px;
		text-align: center;
		padding: 1px;
		margin: 0;
		font-size: 12px;
		font-family: verdana;
		color: #333;
	}
.quantity_form a.increment{
	border: 1px solid #cacbcb;
	float: right;
	border-left: 0;
	height: 18px;
	line-height: 18px;
	padding: 1px 0;
	width: 16px;
	text-align: center;
	color: #666;
	margin-top: -22px;
	background: #fff;
	}
	.p_sum{
		float: left;
		padding: 15px 0 10px;
		width: 100px;
		padding-right: 40px;
		text-align: right;
		font-family: verdana;
		font-weight: 700;
	}
	.p_sum strong{
		font-weight: 700;
		font-size: 12px;
		color: #333333;
	}
	.p_ops{
		float: left;
		padding: 15px 0 10px;
 		width: 75px;
 		line-height: 20px;
	}
	.p_ops a{
		display: block;
		color: #666;
	}
/*结算*/

.cart-floatbar{
	position: relative;
	margin-top:20px;
	border: 1px solid #aaa;
	font-weight: 30;	
}
.toolbar-wrap{
	position: relative;
	height: 52px;
	width: 988px;
	margin: 0 auto;
}
.toolbar-wrap .options-box{
	position: relative;
	height: 50px;
} 
.toolbar-wrap .selected-all{
	float: left;
	height: 18px;
	line-height: 18px;
	padding: 16px 0px 16px 9px;
	white-space: nowrap;
	margin-left: -2px;
}
.cart-checkbox{
	position: relative;
	z-index: 3;
	float: left;
	margin-right: 5px;
}
 .operation{
 	margin-left: 42px;
 	margin-top: -34px;
	float: left;
	height: 50px;
	width: 310px;
	line-height: 50px;
}
.toolbar-wrap .operation a{
	float: left;
	margin-left: 10px;
	color: #666;
	font-weight: 400;
	font-family: verdana;
}
.toolbar-wrap .operation .cleaner-opt{
	position: relative;
	font-weight: 800;
}
.toolbar-wrap .toolbar-right{
	position: absolute;
	float: right;
	width: 610px;
	height: 52px;
	left: 338px;
	top: -1px;
	
}
.toolbar-wrap .toolbar-right .normal{
	height: 52px;
}
.toolbar-wrap .toolbar-right .normal .comm-right{
	float: right;
	width: 650px;
	height: 52px;
}
.toolbar-wrap .btn-area{
	float: right;
}
.toolbar-wrap .btn-area .sumbit-btn{
	display: block;
	position: relative;
	width: 96px;
	height: 52px;
	line-height: 52px;
	color:#fff ;
	text-align: center;
	font-size: 18px;
	font-family: "微软雅黑";
	background: #e54346;
	overflow: hidden;
	left: 41px;
}
.toolbar-wrap .btn-area .sumbit-btn b{
	display: block;
	position: absolute;
	width: 96px;
	height: 54px;
	top: 0;
	left: 0;
	overflow: hidden;
	background: url(img/img/img/cart-submit-btn.png)0 0 no-repeat;
}
.toolbar-wrap .price-sum{
	float: right;
	height: 43px;
	line-height: 26px;
	margin: 7px 20px 0px 10px;
	color: #666;
	width: auto;
	position: relative;
}
.toolbar-wrap .price-sum .txt-new{
	width: 50px;
}
.toolbar-wrap .price-sum .txt{
	float: left;
	text-align: right;
	color: #999;
}
.toolbar-wrap .price-sum .price>em{
	font-size: 16px;
	color:  #e4393c;
	font-weight: 700;
}
.toolbar-wrap .price-sum .price-tips{
	vertical-align: text-bottom;
	display: inline-block;
	height: 18px;
	width: 12px;
	background: url(img/img/img/price-tips.png)0 0 no-repeat;	
}
.toolbar-wrap .price-sum .txt{
	float: left;
	width: 50px;
	text-align: right;
	color: #999;	
}
.toolbar-wrap .price-sum .price{
	display: inline-block;
	text-align: right;
	font-family: verdana;
	margin-top: -2px;
}
.toolbar-wrap .amount-sum{
	float: right;
	color: #999;
	height: 44px;
	line-height: 20px;
	margin: 7px 0px 0px;
	cursor: pointer;
}
.toolbar-wrap .amount-sum em{
	color: #e4393c;
	font-family: verdana;
	font-weight: 700;
	margin:0 3px;
	
}
.toolbar-wrap .amount-sum b{
	display: inline-block;
	width: 9px;
	height: 5px;
	background: url(img/img/img/cart-icons-201805.png) -45px -91px;
	overflow: hidden;
	vertical-align: middle;
}
.cart-smart{
		margin-top: 23px;
}
#c-tabs-new{
	position: relative;
	top:20px;
	overflow: visible;
}
#c-tabs-new .mt{
	margin-bottom: 10px;
}
#c-tabs-new .c-item{
	display: inline-block;
	margin-right: 35px;
	padding-bottom: 3px;
	border-bottom: 2px solid #fff;
}
.extra a{
	color:  #666;
	text-decoration: none;
}
#c-tabs-new .mc{
	height:230px;
	overflow: visible;
}
#c-tabs-new .goods-list-tab{
	float: right;
	position: relative;
	right: 0;
	top: -26px;
	width: 52px;
}

#c-tabs-new .goods-list-tab .curr{
	width: 26px;
	background: #aaa;	
	
}
#c-tabs-new .goods-list-tab .s-item{
	display: inline-block;
	height: 8px;
	margin-left: 3px;
	overflow: hidden;
	border-radius: 4px;
	background: #e4393c;
	
}
#c-tabs-new .mc{
	overflow: visible;
	height: 326px;
}
#c-tabs-new .goods-list li{
	float: left;
}
#c-tabs-new .goods-list .item{
	width: 206px;
	padding: 20px;
	background: #fff;
	margin: -1px 0 0 -1px;
	border: 1px dashed #cacaca;
	overflow: hidden;
}
#c-tabs-new .goods-list .p-img{
	width: 100px;
	margin: 0 auto;
}
#c-tabs-new .goods-list  .p-name{
	height: 36px;
	line-height: 18px;
	margin: 5px 0;
	overflow: hidden;	
}
#c-tabs-new .goods-list .p-price{
	width: 100%;
	margin: 5px 0px 2px;
	overflow: hidden;
	text-align: center;
}
#c-tabs-new .goods-list .p-price strong{
	font-size: 14px;
	color: #d91f20;
	font-family: verdana;
	font-weight: 400;
}
#c-tabs-new .goods-list  .p-btn{
	margin: 10px 0 0;
	text-align: center;
}
#c-tabs-new .goods-list .btn-append{
	display: inline-block;
	height: 28px;
	line-height: 28px;
	padding: 0 20px;
	border: 1px solid #999;
	color: #666;
	text-align: center;
	border-radius: 3px;
}
#c-tabs-new .goods-list .btn-append b{
	display: inline-block;
	height: 18px;
	width: 18px;
	margin-right: 5px;
	background-position: 0 -57px;
	background-repeat: no-repeat;
	overflow: hidden;
	vertical-align: middle;
}
#c-tabs-new .goods-list .btn-append b{
	background-image: url(img/img/img/addtocart-icons.png);
}
#c-tabs-new .goods-list .item-1{
	float: right;
	width: 206px;
	padding: 20px;
	background: #fff;
	margin: -19px 0 0 -1px;
	border: 1px dashed #cacaca;
	overflow: hidden;
}
#service-2017{
	
	padding-bottom: 18px;
	background: #eaeaea;
	overflow: hidden;
	width: 1349px;
	height: 322px;
}
#service-2017 .slogen{
	height: 42px;
	padding: 30px 0 30px 55px;
	position: relative;
	overflow: hidden;
}
#service-2017 .slogen .item{
	display: block;
	float: left;
	position: relative;
	width: 224px;
	height: 42px;
	font-size: 18px;
	font-weight: 700;
	text-indent: 46px;
	color: #444;
	line-height: 42px;
	
}
#service-2017 .slogen .item i{
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 36px;
	height: 42px;
	text-indent: -9999px;
	background-image:url(img/img/img/ico_service.png) ;
	background-repeat: no-repeat;
	background-position: 0 0;
}
#service-2017 .slogen .fore2 i{
	background-position: 0 -43px;
}
#service-2017 .slogen .fore3 i{
	background-position: 0 -86px;
}
#service-2017 .slogen .fore4 i{
	background-position: 0 -129px;
}
#service-2017 .jd-help{
	border-bottom: 1px solid #dedede;
	border-top: 1px solid #dedede;
	height: 202px;
}
#service-2017 .wrap{
	padding: 20px 0 20px 55px;
	margin-right: -340px;
}
#service-2017 .jd-help dl{
	width: 206px;
	line-height: 22px;
}
#service-2017 dl{
	float: left;
}
#service-2017 .jd-help .s-font{
	font-weight: 600;
	font-size: 15px;
	font-family: verdana;
}
#service-2017 dt{
	padding-bottom: 6px;
	font-weight: 700;	
	font-size: 14px;
		color: #777;
		height: 22px;
}
.clr{
	display: block;
	overflow: hidden;
	clear: both;
	height: 0;
	line-height: 0;
	font-size: 0;
}
#footer-2017{
	height: 189px;
	padding-bottom: 30px;
	text-align: center;
	background: #eaeaea;
}
#footer-2017 .copyrights-links{
	font-size: 0;
}
#footer-2017 .copyrights-links p a{
	font-weight: 500;
	font-size: 12px;
	font-family: verdana;
}
#footer-2017 .copyrights-split{
	margin: 0 6px;
	color: #ccc;
	
}

#footer-2017 .copyrights-links p span{
	font-size: 12px;
	
}
#footer-2017 .copyrights-info{
	padding: 10px 0;
	line-height: 22px;
	color: #999;
	height: 110px;
}
#footer-2017 .copyrights-info p a{
	font-family: verdana;
	font-weight: 500;
	color: #999;
	
}
#footer-2017  .copyrights-info a{
	color: #999;
}
#footer-2017 .copyrights_license{
	margin-left: 16px;
}
#footer-2017 .copyrights-info a{
	color: #999;
}
#footer-2017 .mod_copyright_inter_ico_global{
	width: 15px;
	height: 12px;
	margin-top: -1px;
	background-position: 0 0;
}
#footer-2017 .mod_copyright_inter_ico{
	display: inline-block;
	vertical-align: -1px;
	margin-right: 10px;
	background-repeat: no-repeat;
	background-image: url(img/img/img/index.png);
}
#footer-2017 .mod_copyright_inter_ico_rissia{
	background-position:-20px 0px ;
	width: 15px;
	height: 10px;
}
#footer-2017 .mod_copyright_inter_ico_indonesia{
	background-position: 0px -17px;
	width: 15px;
	height: 10px;
}
#footer-2017 .mod_copyright_inter_ico_spain{
	background-position: -40px 0;
	width: 15px;
	height: 10px;
}	

.last-icno-bottom a.ac-1{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	

}
.last-icno-bottom a.ac-1{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	
	
}
.last-icno-bottom a.ac-2{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	
	background-position-x: -104px;
	
}

.last-icno-bottom a.ac-3{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	
	background-position-y:65px;
}

.last-icno-bottom a.ac-4{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	
	background-position-x:-104px;
	background-position-y:65px;
}

.last-icno-bottom a.ac-5{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	
	background-position-y:32px;
}
.last-icno-bottom a.ac-6{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img/img/img/ico_footer.png);	
	background-position-x:104px;
	background-position-y:-65px;
}
.car{
	margin-top: 50px;
}
.myiframe{
	width:990px;
	height: 380px;
	border:0;
}
</style>

	</head>
	<body>
		<!-- top导航栏start -->
		<div class="site-nav">
			<div class="w">

				<ul class="site-nav-fl">
					<li class="BJSY">
						<i></i>
						<a href="#">京东首页</a>
					</li>
					<li class="BJDB"><i></i>
						<a href="#">北京</a>
					</li>

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
					<li class="fore">
						<a href="IndexActionServlet?action=getAllOrder">我的订单</a>
						<i></i>
					</li>
					<li class="spacer"></li>
					<li class="my-jd">
						<a href="#">我的京东</a>
					</li>
					<li class="spacer"></li>
					<li>
						<a href="#">京东会员</a>
					</li>
					<li class="spacer"></li>
					<li class="fore">
						<a href="#" class="Business">企业采购</a><i></i>
					</li>
					<li class="spacer"> </li>
						<li class="fore">
							客户服务
							<i></i>
						</li>
						<li class="spacer"></li>
						<li class="fore">
							网站导航
							<i></i>
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
					<a class="logoImg-a1"></a>
					<a class="logoImg-a2">
						<b class="logo-b"></b>
					</a>
				</div>
				<div class="SouSuBox">
					<div class="form">
						<input id="key" type="text" class="itxt" value="自营" style="color: rgb(153, 153, 153);">
						<input type="button" class="button" value="搜索" clstag="clickcart|keycount|xincart|cart_search" onclick="javascript:void(0);">
					</div>
				</div>
			</div>
		</div>
		<!--logo部分end  -->

		<!--主体部分start-->
		<div id="container" class="cart">
			<div class="w">
				<div id="chunjie" class="mb10"></div>
				<% 
				if(user==null){
					%>
					<div class="nologin-tip">
						<span class="wicon"></span> 您还没有登录！登录后购物车的商品将保存到您账号中
						<a class="btn-1 mb10" href="#none">立即登录</a>
					</div>
					<%
				}else{
					
				}
				%>
				
				<div class="cart-filter-bar">
					<ul class="switch-cart">
						<li class="switch-cart-item curr">
							<a href="//cart.jd.com/cart.action">
								<em>全部商品</em>
								<span class="number">1</span>
							</a>
						</li>
						<li class="switch-cart-item ui-switchable-panel-selected">
							<a class="" href="//cart.yiyaojd.com/cart" clstag="pageclick|keycount|cart_201610202|26">
								<em>京东大药房</em>
							</a>
						</li>
					</ul>
					<div class="cart-store">

						<span class="label">配送至：</span>
						<div id="jdarea" class="ui-area-wrap">
							<div class="ui-area-text-wrap">
								<div class="ui-area-text">北京朝阳区三环到四环之间</div>
								<b></b>
							</div>
						</div>
					</div>

					<div class="clr"></div>
					<div class="w-line">
						<div class="floater" style="width:79px;left: 0;"></div>
					</div>
					<div class="tab-con ui-switchable-panel-selected" style="display: block;"></div>
					<div class="tab-con hide" style="display: none;"></div>
				</div>
			</div>
			<div class="cart-warp">
				<div class="w">
					<div id="jd-cart">
						<div class="cart-main cart-main-new">
							<div class="cart-thead">
								<div class="column t-checkbox">
									<div class="cart-checkbox">
										<input type="checkbox" name="toggle-checkboxs" id="toogle-checkboxs-up" class="jdcheckbox" checked="checked" />
									</div>
									全选
								</div>
								<div class="column t-goods">
									商品
								</div>
								<div class="column t-props">

								</div>
								<div class="column t-price">
									单价
								</div>
								<div class="column t-quantity">
									数量
					
								</div>
								<div class="column t-sum">
									小计
								</div>
								<div class="column t-action">
									操作
								</div>
							</div>
							<div id="cart-list">
								<div id="cart-item-list-01" class="cart-item-list">
									<div id="verder_10010611" class="cart-tbody">
										<div class="shop">
											<div class="cart-checkbox">
												<input type="checkbox" name="checkShop" checked="checked" class="jdcheckbox" />

											</div>
											<span class="shop-txt">
												<a href="#none" class="shop-name" id="verderId_10010611">南极人乐众专卖店</a>
												<a href="javascript:;" class="btn-im" _vid="10010611">联系客服</a>
											</span>
											<div id="shop-extra-r_10010611" class="shop-extra-r">
												已免运费
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
					<!--myiframe-->
		<%
			List<Jdproduct> list =(List<Jdproduct>) request.getAttribute("list");
			double allsum = 0;
		if(list!=null){
			for(Jdproduct pro:list){
				int shoppingCarSum = pro.getProductSum();
				double price = pro.getPrice();
				double sum = price * shoppingCarSum;
				allsum = allsum + sum;
		%>
		<!--下一行-->
		<div class="item-list w">
			<div class="item_con">
				<div class="item_from">
					<div class="item_inp">
						<input type="checkbox" name="" id="" value="" />
					</div>
					<!---->
					<div class="p_goods">
						<div class="goods_item">
							<div class="p-img">
								<img  src="img/img/img/bead.jpg" />
							</div>
							<div class="p_msg">
								<div class="p_name">
									<a href="#"><%=pro.getPname() %></a>
								</div>
							</div>
						</div>
					</div>
					<!---->
					<div class="p_props">
						<div class="props-txt" title="2976蓝色">颜色：2976蓝色</div>
					</div>
					<!---->
					<div class="p_price">
						<strong>¥<%=pro.getPrice() %></strong>
						<div class="p_1">
							<a href="#">促销<b></b></a>
						</div>
					</div>
					<!---->
				<form action="UserProductServlet?action=JieSuan" method="post">	
					<div class="p_quantity">
						<div class="quantity_form">
							<a href="javascript:void(0);" class="_form_a_del">-</a>
							<input type="text" name="JieSuanTxt" id="txtSum" value="<%=pro.getProductSum() %>" class="itxt1" />
							<a href="javascript:void(0);" class="increment">+</a>
						</div>
					</div>
				
					<!---->
					<div class="p_sum">
						<strong>¥<%=sum %></strong>
					</div>
					<!---->
					<div class="p_ops">
						<a href="javascript:void(0);" id="btn" onclick="deleteCategoryById(<%=pro.getPid() %>)">删除</a>
						<a href="#">移到我的关注</a>
						<a href="#">加到我的关注</a>
					</div>
				</div>
			</div>
		</div>
		<%
			}
		}
		 %>
		
		
	
		<!--结算-->
		<!--结算商品-->
		<div class="cart-floatbar w">
			<div class="ui-ceilinglamp-1">
				<div class="toolbar-wrap">
					<div class="options-box">
						<div class="selected-all">
							<div class="cart-checkbox">
								<input type="checkbox" checked="checked" value="" />
							</div>
							<div>
								全选
							</div>
							<div class="operation">
								<a href="#">删除选中的商品</a>
								<a href="#">移到我的关注</a>
								<a href="#" class="cleaner-opt">清理购物车</a>
							</div>
							<div class="toolbar-right">
								<div class="normal">
									<div class="comm-right">
										<div class="btn-area">
											<input type="submit" class="sumbit-btn" value="结算" />
												<b></b>
									
											</div>
										</form>
										<div class="price-sum">
											<div>
												<span class="txt txt-new">
													总价：
												</span>
												<span class="price sumPrice">
													￥<%=allsum %>
												</span>
												<b class="m15 price-tips"></b>
												<br />
												<span class="txt">已节省：</span>
												<span class="price totalreprice">
													-￥60.00
												</span>
											</div>
										</div>
										<div class="amount-sum">
											已选择
											<em>1</em> 件商品
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--主体部分end-->
		<!--还喜欢-->
		<div class="w">
			<div id="c-tabs-new" class="m m1">
				<div class="mt">
					<div class="extra-1">
						<a href="#none" class="c-item">猜你喜欢</a>
						<a href="#none" class="c-item">随手购</a>
						<a href="#nonoe" class="c-item">我的关注</a>
					</div>
					<div class="extra-r">

					</div>
				</div>
				<div class="mc c-panel-main" style="position: relative;">
					<div class="guess-prouducts" class="c-panel ui-switchable " style="position: relative;z-index: 1; opacity: 1;">
						<div class="goods-list-tab">
							<a href="#" class="s-item curr"></a>
							<a href="#" class="s-item"></a>
							<a href="#" class="s-item"></a>
						</div>
						<div class="mc c-panel-main" style="position: relative;">
							<div class="goods-list c-panel ui-switchabl" style="position: relative; z-index: 1;opacity: 1;">
								<ul>
									<li>
										<div class="item">
											<div class="p-img">
												<a href="#">
													<img src="img/img/img/photoOne.jpg" width="160" height="160" />
												</a>
											</div>
											<div class="p-name">
												<a href="#">
													御泥坊男士 黑茶清爽矿物面膜20片（男士护肤 清洁补水 控油保湿 收缩毛孔 去油改善黑头 黑面膜贴
												</a>
											</div>
											<div class="p-price">
												<strong>
													<em>￥</em>
													<i>69.90</i>
												</strong>
											</div>
											<div class="p-btn">
												<a href="#" class="btn-append">
													<b></b>加入购物车
												</a>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="p-img">
												<a href="#">
													<img src="img/img/img/photoTwo.jpg" width="160" height="160" />
												</a>

											</div>
											<div class="p-name">
												<a href="#">
													创尔美 安润睡眠免洗面膜 男女补水保湿胶原修复敏感肌肤提亮肤色修护
												</a>
											</div>
											<div class="p-price">
												<strong>
																			<em>￥</em>
																			<i>128.00</i>
																		</strong>
											</div>
											<div class="p-btn">
												<a href="#" class="btn-append">
													<b></b>加入购物车
												</a>
											</div>
										</div>
									</li>
									<li>
										<div class="item">
											<div class="p-img">
												<a href="#">
													<img src="img/img/img/photoThree.jpg" width="160" height="160" />
												</a>

											</div>
											<div class="p-name">
												<a href="#">
													统一 阿萨姆奶茶原味奶茶 500ml*15瓶 整箱 精选喜马拉雅山麓红茶
												</a>
											</div>
											<div class="p-price">
												<strong>
												<em>￥</em>
													<i>49.00</i>
												</strong>
											</div>
											<div class="p-btn">
												<a href="#" class="btn-append">
													<b></b> 加入购物车
												</a>
											</div>
										</div>
									</li>
									<li>
										<div class="item-1">
											<div class="p-img">
												<a href="#">
													<img src="img/img/img/photoFour.jpg" width="160" height="160" />
												</a>

											</div>
											<div class="p-name">
												<a href="#">
													丽颜肌 (LIYANJI) 氨基酸洗面奶 洁面乳温和保湿补水滋润深层清洁敏感肌舒
												</a>
											</div>
											<div class="p-price">
												<strong>
															<em>￥</em>
																			<i>86.00</i>
																		</strong>
											</div>
											<div class="p-btn">
												<a href="#" class="btn-append">
													<b></b> 加入购物车
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

		<div id="service-2017">
			<div class="w">
				<ol class="slogen">
					<li class="item fore1">
						<i></i> 品类齐全，轻松购物
					</li>
					<li class="item fore2">
						<i></i> 多仓直发，轻松配送
					</li>
					<li class="item fore3">
						<i></i> 正品行货，精致服务
					</li>
					<li class="item fore4">
						<i></i> 天天低价，畅选无忧
					</li>
				</ol>
			</div>
			<div class="jd-help">
				<div class="w">
					<div class="wrap">
						<dl class="fore1">
							<dt>购物指南</dt>
							<dd>
								<a href="#">购物流程</a>
							</dd>
							<dd>
								<a href="#">会员介绍</a>
							</dd>
							<dd>
								<a href="#">生活旅行/团购</a>
							</dd>
							<dd>
								<a href="#">常见问题</a>
							</dd>
							<dd>
								<a href="#">大家电</a>
							</dd>
							<dd>
								<a href="#">联系客服</a>
							</dd>

						</dl>
						<dl class="fore2">
							<dt>配送方式</dt>
							<dd>
								<a href="#">上门自提</a>
							</dd>
							<dd>
								<a href="#">211限时达</a>
							</dd>
							<dd>
								<a href="#">配送服务查询</a>
							</dd>
							<dd>
								<a href="#">配送费收取标准</a>
							</dd>
							<dd>
								<a href="#">海外配送</a>
							</dd>

						</dl>
						<dl>
							<dt>支付方式</dt>
							<dd>
								<a href="#">货到付款</a>
							</dd>
							<dd>
								<a href="#">在线支付</a>
							</dd>
							<dd>
								<a href="#">分期付款</a>
							</dd>
							<dd>
								<a href="#">邮局汇款</a>
							</dd>
							<dd>
								<a href="#">公司转账</a>
							</dd>
						</dl>
						<dl class="fore4">
							<dt>售后服务</dt>
							<dd>
								<a href="#">售后政策</a>
							</dd>
							<dd>
								<a href="#">价格保护</a>
							</dd>
							<dd>
								<a href="#">退款说明</a>
							</dd>
							<dd>
								<a href="#">返修/退换货</a>
							</dd>
							<dd>
								<a href="#">取消订单</a>
							</dd>
						</dl>
						<dl class="fore5">
							<dt>特色服务</dt>
							<dd>
								<a href="#">夺宝岛</a>
							</dd>
							<dd>
								<a href="#">DIY装机</a>
							</dd>
							<dd>
								<a href="#">延保服务</a>
							</dd>
							<dd>
								<a href="#">京东E卡</a>
							</dd>
							<dd>
								<a href="#">京东通信</a>
							</dd>
							<dd>
								<a href="#">京东JD+</a>
							</dd>

						</dl>
						<span class="clr"></span>
					</div>
				</div>
			</div>
		</div>
		<div id="footer-2017">
			<div class="w">
				<div class="copyrights-links">
					<p>
						<a href="#">关于我们</a>
						<span class="copyrights-split">|</span>
						<a href="#">联系我们</a>
						<span class="copyrigh	ts-split">|</span>
						<a href="#">联系客服</a>
						<span class="copyrights-split">|</span>
						<a href="#">合作招商</a>
						<span class="copyrights-split">|</span>
						<a href="#">商家帮助</a>
						<span class="copyrights-split">|</span>
						<a href="#">营销中心</a>
						<span class="copyrights-split">|</span>
						<a href="#">手机京东</a>
						<span class="copyrights-split">|</span>
						<a href="#">友情链接</a>
						<span class="copyrights-split">|</span>
						<a href="#">销售联盟</a>
						<span class="copyrights-split">|</span>
						<a href="#">京东社区</a>
						<span class="copyrights-split">|</span>
						<a href="#">风检测</a>
						<span class="copyrights-split">|</span>
						<a href="#">隐私政策</a>
						<span class="copyrights-split">|</span>
						<a href="#">京东公益</a>
						<span class="copyrights-split">|</span>
						<a href="#">English Site</a>
						<span class="copyrights-split">|</span>
						<a href="#">Media & IR</a>

					</p>
				</div>
				<div class="copyrights-info">
					<p>
						<a href="#">京公网安备11000002000088号</a>
						<span class="copyrights-split">|</span>
						<span>京ICP证070359号</span>
						<span class="copyrights-split">|</span>
						<a href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>
						<span class="copyrights-split">|</span>
						<span>新出发京零  字第大120007号</span>
					</p>
					<p>
						<span>互联网出版许可证编号新出网证(京)字150号</span>
						<span class="copyrights-split">|</span>
						<a href="#">出版物经营许可证</a>
						<span class="copyrights-split">|</span>
						<a href="#">网络文化经营许可证京网文[2014]2148-348号</a>
						<span class="copyrights-split">|</span>
						<span>违法和不良信息举报电话：4006561155</span>
					</p>
					<p>
						<span class="copyrights-text">Copyright @ 2004-
										<em id="copyrights_year">2018 &nbsp;&nbsp;</em>
										京东JD.com版权所有
									</span>
						<span class="copyrights-split">|</span>
						<span>消费者维权热线：4006067733</span>
						<a class="copyrights_license" href="#">经营执照</a>
						<span class="copyrights-split">|</span>
						<span>(京)网械平台备字(2018)第00003号</span>
					</p>
					<p>
						<a class="mod_copyright_inter_lk" class="#">
							<i class="mod_copyright_inter_ico mod_copyright_inter_ico_global"></i> Global Site
						</a>
						<span class="copyrights-split">|</span>

						<a class="mod_copyright_inter_lk" class="#">
							<i class="mod_copyright_inter_ico mod_copyright_inter_ico_rissia"></i> Сайт России
						</a>
						<span class="copyrights-split">|</span>

						<a class="mod_copyright_inter_lk" class="#">
							<i class="mod_copyright_inter_ico mod_copyright_inter_ico_indonesia"></i> Situs Indonesia
						</a>
						<span class="copyrights-split">|</span>

						<a class="mod_copyright_inter_lk" class="#">
							<i class="mod_copyright_inter_ico mod_copyright_inter_ico_spain"></i> Sitio de Espana
						</a>
						<span class="copyrights-split">|</span>
					</p>
					<p>
						<span>京东旗下网站：</span>
						<a href="#">京东钱包</a>
						<span class="copyrights-split">|</span>
						<a href="#">京东云</a>
					</p>

					<p class="last-icno-bottom">
						<a href="" class="ac-1"></a>
						<a href="" class="ac-2"></a>
						<a href="" class="ac-3"></a>
						<a href="" class="ac-4"></a>
						<a href="" class="ac-5"></a>
						<a href="" class="ac-6"></a>
					</p>
				</div>

			</div>
		</div>
		</div>
		</div>
		
		
		
	<script src="css/bootstrap/js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script src="css/jQuery-confirm/jquery-confirm.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	function deleteCategoryById(id){
				$.confirm({
					title: '',
					content: '您确认删除吗?',
					confirm: function() {
						
						location.assign("UserProductServlet?action=deleteCategory&pid=" + id);
					},
					cancel: function() {
						
					},
					
				});
	}
	//购物车的增减
		$(function(){
			var add = $(".increment");
			var del = $("._form_a_del")
			var title = $(".itxt1");
			var txtSum = $("#txtSum").val();
			
			//购物车增加与减少
			add.click(function() {
				var count = $(this).prev().val(); 
				if(count < 200) {
					$(this).prev().val(++count);
				} else {
					alert('商品数量最多为200');
				}
			});
			//给减少按钮绑定事件
			del.click(function() {
				var count = $(this).next().val();
				if(count > 1) {
					$(this).next().val(--count);
				} else {
					alert('商品数量最少为1');
				}
			});

		});
		

	</script>
	</body>

</html>