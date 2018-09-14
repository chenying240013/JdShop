<%@ page language="java" import="java.util.*,com.vo.*,com.service.impl.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
	    <base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>我的京东--我的订单</title>
		<style type="text/css">
		@charset "UTF-8";
/*css 初始化 */
html, body, ul, li, ol, dl, dd, dt, p, h1, h2, h3, h4, h5, h6, form, fieldset, legend, img {
    margin: 0;
    padding: 0;
}

fieldset, img, input, button { 			/*fieldset组合表单中的相关元素*/
    border:1px solid rgb(245,245,245);
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
    border-collapse: collapse;			/*合并外边线*/
}


body {
    font: 12px/150% Arial, Verdana, "\5b8b\4f53";	/*宋体，Unicode，统一码*/
    color: #666;
    background: rgba(227,228,229,0.5)
}

.clearfix:before, .clearfix:after {
    content: "";
    display: table;
}

.clearfix:after {
    clear: both;
}

.clearfix {
    *zoom: 1; /*IE/7/6*/
}

a {
    color: #666;
    text-decoration: none;
    font-weight: 700;
}

a:hover {
    color: #C81623;
}

h1, h2, h3, h4, h5, h6 {
    text-decoration: none;
    font-weight: normal;
    font-size: 100%;
}

s, i, em {				
    font-style: normal;
    text-decoration: none;
}

.col-red {
    color: #C81623 !important;
}

/*公共类*/
.w {
    /*版心 提取 */
    width: 1210px;
   	/*height: 500px;
   	background-color: red;	*/
    margin: 0 auto;

}

.fl {
    float: left;
}

.fr {
    float: right
}

.al {
    text-align: left
}

.ac {
    text-align: center
}

.ar {
    text-align: right
}

.hide {
    display: none
}
.clearfix{
	clear: both;
}

#ceshi{
	background-color: royalblue;
	height: 500px;
	width: 100%;
}

	#main {
		position: relative;
		left:-20px;
		background-color: #fff;
		width: 1088.9px;
		float: left;
			}
			
#main-iframe{
		width: 1048.9px;
		height:500px;
		padding:20px;
}
/*第一行开始*/
/*左边开始*/
.box1{
	width: 100%;
	 height: 30px;
     line-height: 30px;
     background-color: #e3e4e5;
}
.box1 li{
	float: left;
	height: 30px;
	padding: 0px 1px;
}

#icon-one{
	position: relative;
	display:inline;
	color: black;
	font-size: 14px;
	padding-right: 5px;
}
#con-one a{
	color:#999;
	font-family:"微软雅黑";
	font-weight: normal;
}
.con-two{
	display: inline-block;
	position: relative;
	left: 10px;
	height: 30px;
	width: 77px;
	border-bottom: none;
	
}
#icon-one-3{
	position: relative;
	left: 5px;
	font-size: 14px;
}


#text-beijing{
	position: relative;
	left: 5px;
	color:#999;
	font-family:"微软雅黑";
	font-weight: normal;
	font-size: 12px;

}

/*第一行右边开始*/

#fr-1{
	margin-right: 10px;
}
.box1 .fr li{
	height: 30px;
	font-size: 11px;
	font-weight: normal;
}
.box1 a{
	color: #999;
	line-height: 30px;
}
.box1 .link-1{

	font-size: 11px;
	font-weight: normal;
	color: #999;
}
.box1 .link-2{
	position: relative;
	left: 3px;
	color: red;
}
.box1 .fr li a{
	height: 30px;
	font-size: 11px;
	font-weight: normal;
}
 .box1 li.spacer{
	width: 1px;
	height: 12px;
	margin-top: 9px;
	padding: 0;
	background: #ccc;
	overflow: hidden;
}
/*.fore2{
	width: 66px;
}
.fore4{
	width: 66px;
}
.fore8{
	width: 66px;
}*/
.dt{
		width: 48px;
		padding: 0px   8px;
}
#icon-myjd{
	font-size: 10px;
	margin-left: 5px;
}
li.fore3{
	width:79px;
	
}
li.fore3 div.dt2:hover{

	background-color: white;
	
}
.dt2{
	padding-left: 7px;
}
li.fore5{
	width:79px;
}
.dt4{
	padding-left: 7px;
}

li.fore5 div.dt4:hover{

	background-color: white;
	
}
li.fore6{
	width:79px;
}
.dt5{
	padding-left: 7px;
}

li.fore6 div.dt5:hover{

	background-color: white;
	
}

li.fore7{
	width:79px;
}
.dt6{
	padding-left: 7px;
}

li.fore7 div.dt6:hover{

	background-color: white;
	
}
.box1 a:hover{
	color: red;
}

/*第二行开始*/
.myjd{
	height:80px;
	background-color: #e2231a;
}
.tl-icon{
	height: 80px;
	width: 272px;
}
.tl-icon a{
	float: left;

}
.left-icon{
	display: block;
	height: 80px;
	width: 158px;
	margin-right:10px;
	background:url(img3/logo_2017.png) no-repeat;
}
.left-icon-1{
	display: inline-block;
	float: left;
	margin: 20px 0px 0px 6px;
	height: 22px;
	font-family: "微软雅黑";
	font-size:20px;
	font-weight: normal;
	color: white;
}
.left-icon-2{
	display: inline-block;
	margin: 5px 0px 0px;
	color: #ffb2b2;
	height: 18px;
	line-height: 18px;
	padding: 0px 10px;
	border: 1px solid #ffb2b2 ;
	border-radius: 10px;
	font-family: "微软雅黑";
	font-weight: normal;
}
.left-icon-2:hover{
	background-color: white;
}
.left-icon-1:hover{
	color: white;
}
/*中间部分内容*/
.two_content div{
	float: left;
}
.middle-con{
	padding: 22px 0px;
	margin: 0px 0 0 30px;
	width: 342px;
	height: 36px;
	color: white;
}
.middle-con li{
	float: left;
	height: 36px;
	line-height: 36px;
}
.fore-1 a{
	display: block;
	margin: 0 20px 0 0;
	color: white;
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: normal;
}
#fore2_span{
	padding: 9px 16px;
	height: 18px;
	width: 74px;
	line-height: 18px;
	color: white;
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: normal;
}
#fore2_span b{
	display: inline-block;
	vertical-align: middle;
	width: 9px;
	height: 6px;
	overflow: hidden;
	margin-left:5px;
	background: url(img3/icon.png) 0 -120px no-repeat;
	position: relative;
	left: 56px;
	top:-19px;	
}
#fore3_span{
	padding: 9px 16px;
	height: 18px;
	width: 56px;
	line-height: 18px;
	color: white;
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: normal;
}
#fore3_span b{
	display: inline-block;
	vertical-align: middle;
	width: 9px;
	height: 6px;
	overflow: hidden;
	margin-left:5px;
	background: url(img3/icon.png) 0 -120px no-repeat;
	position: relative;
	top:-1px;	
}
.fore-4 a{
	display: block;
	margin: 0 20px 0 0;
	color: white;
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: normal;
}
.fore-2:hover #fore2_span{
	background-color: white;
	color: #333;
}
.fore-3:hover #fore3_span{
	background-color: white;
	color: #333;
}
/*购物c车*/
#icon{
	position: relative;
	top: 22px;
	height: 30px;
	width: 138.6px;
	border: solid 1px bisque;
}

#iconCar{
	position:absolute;
	background-color: #F9F9F9;
	z-index:3;
	padding-left:22px;
	height: 31px;
	width: 118.6px;
}
#iconSpan{
	position: relative;
	left: 20px;
	text-align:center;
	line-height: 31px;
	color: #f30213;
	font-weight: normal;
}
#icon:hover{
	box-shadow: 0px 0px 5px rgba(0,0,0,0.2);	
	background-color: white;
	cursor: pointer;
}

i#ImgC{
	position: absolute;
	left:20px;
	top: 7px;
	width: 20px;
	height: 20px;
	overflow: hidden;	
}
img#imgCar{
	position: absolute;
	top:-57px;
}
#icon-Car-mag{
position: absolute;
top: -4px;
left: 104px;
display: inline-block;
*zoom: 1;
*display: inline;
padding: 1px 2px;
font-size: 12px;
line-height: 12px;
color: #fff;
background-color: #c81623;
border-radius: 7px 7px 7px 0;
min-width: 12px;
text-align: center;
}

/*搜索框*/
.search{
	float: right;
	width: 186px;
	margin-top:22px;
	margin-right: 20px;
	background-color: white;
}
#search-1{
	padding: 4px;
	font-size: 12px;
	border: none;
	width: 120px;
	height: 24px;
	line-height: 24px;
	font-family: "微软雅黑";
	color: #666666;
}
#search-2{
	float: right;
	width: 56px;
	height: 32px;
	background-color: #f7f7f7;
	font-size: 12px;
	font-weight: normal;
}
#search-2:hover{
	cursor: pointer;
}
/*下一行*/
.myjd-main{
	height:auto;
}
.nav-left{
	float: left;
	width: 100px;
	margin-top: 20px;
}

.nav-con-dl{
	padding-left: 10px;
	padding-bottom: 15px;
}
.nav-con-dl dt{
	font-size: 14px;
	font-family: "微软雅黑";
	color: #333;
	font-weight: 700;
	width: 100px;
	height: 28px;
	line-height: 28px;
}
.nav-con-dl dd{
	width: 100px;
	height: 24px;
	font-size: 12px;
	font-family: "微软雅黑";
	color: #777;
	font-weight: normal;
	line-height:24px;
}
/*订单内容*/
.con-1{
	padding-left: 120px;
	padding-top: 20px;
	height:auto;
}
.con-title-one{
	padding: 10px 20px 20px;
	background-color:#fff;
	margin-bottom: 20px;
	width: 1048.9px;
	height:28px;
}
.con_one{
	padding: 10px 0 0 0;
}
.con_one h3{
	font-family: "微软雅黑";
	font-weight: 700;
	font-size: 12px;
}
/*   */
.con-title-two{
	padding: 10px 20px 20px;
	margin-bottom: 20px;
	background-color:#fff;
	width: 1048.9px;
	height: auto;
	
}
.con_two{
	padding: 10px 0;
	width: 1048.9px;
	height: 24.6px;
}
.con_ul li{
	float:left;
	padding-right: 20px;
}
.con_li_1 a{
	display: block;
	color: #e4393c;;
	border-bottom: 2px solid #e4393c;;
}
.con_li_2 a{
	font-family: "微软雅黑";
	font-size: 12px;
	font-weight: normal;
}
.con_li_2 em{
	position: relative;
	display: inline-block;
	height: 15px;
	line-height: 15px;
	font-family: arial;
	top: -5px;
	padding: 0 4px;
	background: #e4393c;
	border-radius: 15px;
	color: #fff;
	font-size: 10px;
	margin: 0 0 0 2px;
}
.con_li_5{
	padding-left: 40px;
	margin-left: 20px;
	border-left:1px dotted #ddd;
	
}
.con_li_6{
	padding-left: 40px;
	margin-left: 20px;
	b-left:1px dotted #ddd;
}
.con_li_5 a{
	color: #333;
	font-family: "微软雅黑";
}
.con_li_6 a{
	color: #333;
	font-family: "微软雅黑";
}
.con_li_7{
	padding-left: 40px;
	margin-left: 20px;
	border-left:1px dotted #ddd;

}
.con_li_7 a{
	color: #999;
	font-family: "微软雅黑";
	font-weight: normal;
}
.con_Search{
	float: right;
	width: 276px;
}
.con_div_search{
	position: relative;
	top: -3px;
}
#search_inp{
	float: left;
	width: 158px;
	height: 18px;
	line-height: 18px;
	padding: 2px 5px 3px;
	border: 1px solid #ccc;
	color: rgb(204, 204, 204);
	font-family:"微软雅黑";
	font-size: 12px;
}
.search-btn{
	position: relative;
	top:-3px;
	float: left;
	width: 52px;
	height: 24.5px;
	line-height: 99em;
	overflow: hidden;
	border: 1px solid #ddd;
	border-left: none;
	text-align: center;
	background: url(img3/order-icons.png) no-repeat 10px -55px #f7f7f7;
}

.search-btn>b{
	position: absolute;
	left: 17px;
	top: 3px;
	display: inline-block;
	vertical-align: middle;
	width: 18px;
	height: 16px;
	overflow: hidden;
	background: url(img3/order-icons.png) no-repeat -8px -58px;
}
.search-btn:hover{
		cursor: pointer;
}
.default-btn{
	position: relative;
	top:-3px;
	float: left;
	margin-left: -1px;
	width: 50px;
	height: 18px;
	line-height: 18px;
	padding: 2px 0 3px;
	text-align: center;
	border: 1px solid #ddd;

	border-radius: 2px;
	background-color: #f7f7f7;

}

.default-btn b{
	position: absolute;
	left: 36px;
	top: 9px;
	display: inline-block;
	vertical-align: middle;
	width: 18px;
	height: 16px;
	overflow: hidden;
	background: url(img3/order-icons.png) no-repeat;
	background-position-x: -36px;
	background-position-y:-207px;
}
.default-btn i{
	position: relative;
	left:-5px;
	font-family: "微软雅黑";
	font-weight: normal;
	color: #333;
}
.main_mc{
	width: 1048.9px;

}
.number-col{
	width: 589px;
	line-height: 20px;
	border-collapse: collapse;
}
.consignee-col{
	width: 115px;
	line-height: 20px;
	border-collapse: collapse;
}
.amount-col{
	width: 110px;
	border-collapse: collapse;
}
.status-col{
	width: 110px;
	line-height: 20px;
	border-collapse: collapse;
}
.operate-col{
	width: 124.9px;
	line-height: 20px;
	border-collapse: collapse;
}
.order-tb col{
	height: 199.6px;
}
.ordertime-cont{
	position: relative;
	float: left;
	z-index: 10;
	width: 138px;
	cursor: pointer;
}
.time-txt{
	position: relative;
	height:30px;
	line-height: 30px;
	text-align: left;
	padding-left: 20px;
	padding-right: 12px;
	border-collapse: collapse;
	border: 1px solid #f5f5f5;

}
.time-txt b{
	position: absolute;
	width: 7px;
	height: 4px;
	right: 18px;
	top: 13px;
	overflow: hidden;
	vertical-align: middle;
	border-collapse: collapse;
	background: url(img3/order-icons.png);
	background-position-x: -37px;
	background-position-y:-207px;
}
.order-tb th{
	height: 32px;
	line-height: 32px;
	text-align: center;
	background: #f5f5f5;
	color: #666;
	font-weight: 400;
	font-family: "微软雅黑";
}

.ordertime-cont-2{
	position: relative;
	z-index: 10;
	width: 98px;
	cursor: pointer;
	line-height: 32px;
	text-align: center;
	color: #666;
	font-weight: 400;
}
.time-txt-1{
	position: relative;
	height:30px;
	line-height: 30px;
	text-align: left;
	padding-left: 20px;
	padding-right: 12px;
	border-collapse: collapse;
	border: 1px solid #f5f5f5;
}
.time-txt-1>b{
	position: absolute;
	width: 7px;
	height: 4px;
	right:15px;
	top: 13px;
	overflow: hidden;
	vertical-align: middle;
	border-collapse: collapse;
	background: url(img3/order-icons.png);
	background-position-x: -37px;
	background-position-y:-207px;
}

.sep-row{
	height: 20px;
}
.tr-th{
	background: #f5f5f5;
	height: 31px;
	line-height: 31px;
	color: #aaa;
	overflow: hidden;
	border-collapse: collapse;
}
.tr-th td span{
	float: left;
	height: 18px;
	line-height: 18px;
	padding: 2px 0 0;

}
.gap{
	width: 14px;
}
.detime{
	margin-right: 30px;
	font-family: verdana;
}
.number{
	width: 226px;
	font-family: verdana;
}
.tr-th .tr-operate{
	float: left;
	position: relative;
	margin-right: 15px;
	width: 397px;
	height: 23px;

}
.tr-th a{
	font-family: "微软雅黑";
	color:#333333;
	font-weight: normal;
}
.tr-operate{
	width: 608px;
}
.del{
	position: relative;
	left: 500px;
}
.del>button{
	position: absolute;
	right: -100px;
	top: 6px;
	width: 15px;
	height: 14px;
	overflow: hidden;
	vertical-align: middle;
	background:url(img3/order-icons.png) -23px -132px no-repeat;
}
.del>button:hover{
	cursor: pointer;
}
.tr-td{
	line-height: 20px;
	text-align: center;
	vertical-align: top;
}
.tr-td td{
	padding: 14px 0;
	border: 1px solid #e5e5e5;
	border-top: none;
	border-collapse: collapse;
	line-height: 20px;
}
.goods-item{
	display: block;
	float: left;
	width: 340px;
	margin-right: 74px;
	border-collapse: collapse;
}

.p-img{
	float: left;
	width: 60px;
	height: 60px;
	border: 1px solid #efefef;
	margin: 0 14px;
}
.p-msg{
	width: 240px;
	float: left;
}
.goods-item .p-name a{
	display: block;
	height: 36px;
	line-height: 18px;
	overflow: hidden;
	color: #333;
	font-family: "微软雅黑";
	font-weight: normal;
	text-align:left;
}

.p-next{
	height:20px;
	text-align: left;
}
.goods-number{

	text-align: left;
	color: #aaa;
	font-family: verdana;
}
.goods-repair{
	width: 104px;
	float: right;
	line-height: 20px;
}

.con-top{
	position: relative;
	width: 100px;
	margin: 0 auto;
	z-index: 2;
	cursor: pointer;
	color: #333;
}
.con-top b{
	display: inline-block;
	width: 14px;
	height: 16px;
	background: url(img3/order-icons.png) 0 -24px;
	vertical-align: middle;
	margin: 0 0 0 5px;
}
.ftx-13{
	display: block;
	margin: 0 8px;
	margin-top: 0px;
	margin-top: 5px;
	padding-top: 1px;
	border-top: solid 1px #E5E5E5;
	line-height: 19px;
	height: 19px;
	overflow: hidden;
	color: #aaa;
}
.amount strong{
	font-family: "微软雅黑";
	color:black;
}
.status{
	position: relative;
	z-index: 5;
	color: #333;
}
.status-price{
	color: #ff6c00;
}
.tool{
	position: relative;
	width: 100px;
	margin: 0 auto;
	z-index: 2;
	cursor: pointer;
}
.tool i{
	display: inline-block;
	width: 22px;
	height: 16px;
	margin: 0 3px 0 0;
	overflow: hidden;
	background: url(img3/order-icons.png) -48px -24px no-repeat;
	vertical-align: middle;
}
.status-1{
	margin-top: 10px;
	
}
.status-1 a{
	font-family: "微软雅黑";
	font-weight: normal;
}

.content-time i{
	display: inline-block;
	width: 15px;
	height: 16px;
	margin: 0 3px 0 0;
	overflow: hidden;
	background: url(img3/order-icons.png) -23px -24px no-repeat;
	vertical-align: middle;
}

.pri{
	display: inline-block;
    background: #fff;
    border: 1px solid #e4393c;
    color: #e4393c;
    border-radius: 2px;
    width: 85px;
    height: 18px;
    line-height: 18px;
    padding: 2px 0;
    margin: 3px 0;
    font-family: "微软雅黑";
    font-weight: 700;
}
.cancel{
	font-family: "微软雅黑";
	font-weight: normal;
	color: #333333;
}
.pri:hover{
	background-color: #f30213;
	color: white;
}


/*底部第一模块*/
.jiadian-bottom-one{
	margin-top:100px;
	height: 321.6px;
	background-color: #eaeaea;
}
.slogan{
	position: relative;
	height:42px;
	padding: 30px 0px 30px 55px;
	overflow: hidden;
	padding-left: 65px;
	margin-right: -23px;

}
.slogan li{
	float: left;
	width: 292px;
}
.item-fore1{
	position: relative;
	height: 42px;
	line-height: 42px;
	font-size: 18px;
	font-weight: 700;
	text-align: 42px;
	color: #444;
	background:url(img3/底部/ico_service.png) no-repeat;
}
.item-fore1 i{
	position: relative;
	left: -100px;
}
.item-fore1 em{
	position: relative;
	left: 24px;
}
/*快*/
.item-fore2{
	position: relative;
	height: 42px;
	line-height: 42px;
	font-size: 18px;
	font-weight: 700;
	text-align: 42px;
	color: #444;
	background:url(img3/底部/ico_service.png) no-repeat;
	background-position-y: -43px;
}
.item-fore2 i{
	position: relative;
	left: -999px;
}
.item-fore2 em{
	position: relative;
	left: 24px;
}
/*好*/
.item-fore3{
	position: relative;
	height: 42px;
	line-height: 42px;
	font-size: 18px;
	font-weight: 700;
	text-align: 42px;
	color: #444;
	background:url(img3/底部/ico_service.png) no-repeat;
	background-position-y: -86px;
}
.item-fore3 i{
	position: relative;
	left: -999px;
}
.item-fore3 em{
	position: relative;
	left: 24px;
}

/*省*/
.item-fore4{
	position: relative;
	height: 42px;
	line-height: 42px;
	font-size: 18px;
	font-weight: 700;
	text-align: 42px;
	color: #444;
	background:url(img3/底部/ico_service.png) no-repeat;
	background-position-y: -129px;
}
.item-fore4 i{
	position: relative;
	left: -999px;
}
.item-fore4 em{
	position: relative;
	left: 24px;
}
/*下一行*/
.jd-help{
	height: 201.6px;
	border-top: 1px solid #dedede;
	border-bottom: 1px solid #dedede;
}
.wrap{
	height: 200px;
	width: 1288px;
	padding-left: 65px;
}
.wrap dl.fore1{
	display: inline-block;
	margin-top: 28px;
	height: 160px;
	width: 250px;
}
.wrap dl.fore1 dt{
	padding-bottom: 6px;
	font-size: 15px;
	color: #777;
	height: 22px;
	font-weight: 700;
}
.wrap .fore1 dd {
	height: 22px;
}
.wrap .fore1 dd a {
	color: #666;
	font-size: 12px;
	font-weight: normal;
}
.wrap dl dd a:hover{
	color: red;
}
/*第二个版式*/
.wrap dl.fore2{
	display: inline-block;
	position: relative;
	top: -22px;
	height: 160px;
	width: 250px;
}
.wrap dl.fore2 dt{
	padding-bottom: 6px;
	font-size: 15px;
	color: #777;
	height: 22px;
	font-weight: 700;
}
.wrap .fore2 dd {
	height: 22px;
}
.wrap .fore2 dd a {
	color: #666;
	font-size: 12px;
	font-weight: normal;
}
/*底部*/
.jiadian-last{
	height: 219px;
	background-color:#eaeaea;
}
.last-title{
	position: absolute;
	padding-left:65px;
	height: 22.8px;
}
.last-title-p a{
	font-size: 12px;
	color: #666;
	font-weight: normal;
	margin-right:15px;
}
.last-title-p span {
	position: relative;
	left: -6px;
	top:-1px;
	color: #ccc;
}
.last-title a:hover{
	color: red;
}
.last-2{
	position: relative;
	top: 40px;
	height: 130px;
}
.last-2 p{
	text-align: center;
	color: #999;
}
.last-2 p a{
	color: #999;
	font-size: 12px;
	font-weight: normal;
}
.last-2 .last-2-span{
	padding: 0 10px;
}
.last-2 p a:hover{
	color: red;	
}
.last-icno-cno i{
	margin-left: 5px;
}
.last-icno-bottom a.ac-1{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img3/底部/ico_footer.png);	

}
.last-icno-bottom a.ac-1{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img3/底部/ico_footer.png);	
	
}
.last-icno-bottom a.ac-2{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img3/底部/ico_footer.png);	
	background-position-x: -104px;
	
}

.last-icno-bottom a.ac-3{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img3/底部/ico_footer.png);	
	background-position-y:65px;
}

.last-icno-bottom a.ac-4{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img3/底部/ico_footer.png);	
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
	background: url(img3/底部/ico_footer.png);	
	background-position-y:32px;
}
.last-icno-bottom a.ac-6{
	margin-top: 10px;
	margin-right: 5px;
	display:inline-block;
	height: 32px;
	width: 103px;
	background-color: #4169E1;
	background: url(img3/底部/ico_footer.png);	
		background-position-x:104px;
	background-position-y:-65px;
}
	
.order_null{
	position: relative;
	width: 400px;
	margin: 110px auto 170px;
	height: 136px;
}
.empty-icon{
	display: block;
	width: 124px;
	height: 160px;
	overflow: hidden;
	vertical-align: middle;
	background: url(img3/empty-icon02.png) no-repeat;
}
.e-cont{
	position: absolute;
left: 146px;
top: 60px;
width: 250px;
}
.e-cont h5{
	font-family: "Microsoft YaHei";
	color: #666;
	font-size: 18px;
	font-weight: 400;
	line-height: 30px;
}
.op-btns{
	margin-top: 10px;
}
.btn-9{
	background-color: #F7F7F7;
	border-radius: 2px;
	display: inline-block;
	height: 18px;
	line-height: 18px;
	border: 1px solid #ddd;
	padding: 2px 14px 3px;
	margin-right: 10px;
	font-weight: normal;
}
.btn-1{
	background-image: linear-gradient(to bottom,#e74649 0,#df3134 100%);
	border-radius: 2px;
	display: inline-block;
	color: #fff;
	height: 18px;
	line-height: 18px;
	padding: 3px 15px 4px;
	font-weight: normal;
}
.btn-1:hover{
	color: #fff;
	background-image: linear-gradient(to bottom,#e74649 0,#df3134 50%);
}
	
	
	
	
		/*页面样式结束*/

	/*js隱藏样式*/
	/*第一行js效果地址隐藏界面*/
#hide-city{
	position: absolute;
	z-index:99;
	top:30px;	
	left: 237.5px;
	height: 332.4px;
	width: 312.6px;
	border-top:none;
	background-color:white;
	display: none;
}
 #hide-city table{
	border: none;		
}
#hide-city table tr td{
	border-collapse: collapse;
	height: 20px;
	width: 58px;
	padding-left: 19px;
	border: 0 none;
		/*border-top-style: none;*/
	}
#hide-city table tr td a{
	position: relative;
	left: -10px;
	text-align: center;
	display: block;
	margin-top: 5px;
	height: 24px;
	line-height: 24px;
	width: 40px;
}
#hide-city table tr td a:hover{
	background-color: rgba(227,228,229,0.5);
	color: red;
}
#hide-city a{
	text-decoration: none;
	color: black;
	color:#999;
	font-family:"微软雅黑";
	font-weight: normal;
	font-size: 12px;
	}
#hide-city a:hover{
	background-color: rgba(255,255,255,0.5);
}
#hide-city table{
	border-top-style: none;				
}
#city-line{
	position: relative;
	top:11px;
	left: 21px;
	height: 0.5px;
	width: 267px;
	background-color: rgba(227,228,229,0.5);
	
}

#city-txt{
	color:#999;
	position: relative;
	left: 22px;
	top:15px;
}
#city-ul{
	position: relative;
	top:15px;
}
#city-ul li {
	float: left;
	position: relative;
	left: 18px;
	top:-4px;
	width: 143px;
	height: 26px;
}
li #city-ul-2{
	position: relative;
	left: 21px;	
}	
#city-ul-txt{
	position: relative;
	left: 10px;
	height: 26px;
	width: 120px;
}
#city-ul li  a div {
	float: left;
}
#city-ul-icon img{
	position: relative;
}
#city-ul-icon img{
	position: relative;
	top:-1px;
}
/*我的京东js隐藏效果*/
#myjd-js{
	position: relative;
	z-index:4;
	background-color: white;
	width: 279px;
	display: none;
}
#myjd-js div#myjd-js-1{
	width: 265px;
	padding: 5px 0px 5px 15px;
	overflow: hidden;
	height: 72px;				
}
#myjd-js div#title{
	position: relative;
	float:left;
	height: 24px;
	width: 126px;
	line-height: 24px;
}
#myjd-js div#myjd-js-2{
	width: 263px;
	padding: 5px 0px 5px 15px;
	overflow: hidden;
	border: 1px solid rgba(227,228,229,0.5);
}
#myjd-js div#title a{
	color: #666;
	font-size: 12px;
	font-family:"微软雅黑";
}
#myjd-js div#title a:hover{
	color: red;

}
/*我的京东js隐藏效果结束*/


/*企业采购js开始*/
#myjd-caigou{
	position: relative;
	z-index:2;
	background-color: white;
	width: 156.6px;
	display: none;

}
#myjd-caigou div#myjd-caigou-con{
	left: 1px;
	width: 140px;
	height: 49.6px;
	padding: 10px 0px 10px 15px;
}
#myjd-caigou div#myjd-caigou-title{
	position: relative;
	top:-7px;
	float: left;
	width: 60px;
	height: 24px;
	line-height: 24px;
}

#myjd-caigou div#myjd-caigou-title a{
	color: #666;
	font-size: 12px;
	font-family:"微软雅黑";
}

#myjd-caigou div#myjd-caigou-title a:hover{
	color:red;
}
/*企业采购js结束*/

/*客户服务js开始*/
#jdser{
	position: relative;
	left: -91px;
	width: 170px;
	height: 246.8px;
	z-index:4;
	background-color: white;
	display: none;
}
#jdser-con{
	padding:10px 0;
}
#jdser-con div{
	float: left;
}
#jdser-con-item{
	height: 24px;
	width: 170px;
	padding-left: 10px;
	color: #666;
	font-weight:700;
}
#jdser-con div#jdser-con-title{
	position: relative;
	left: 10px;
	width: 80px;
	height: 24px;
}
#jdser-con-item-1{
	position: relative;
	top: 10px;
	height: 24px;
	width: 158px;
	padding-left: 10px;
	color: #666;
	border-top: 1px solid rgba(227,228,229,0.5);
	font-weight:700;
}
#jdser-con div#jdser-con-title1{
	position: relative;
	top: 10px;
	left: 10px;
	width: 80px;
	height: 24px;
}

/*客户服务结束*/


/*网站导航  开始*/
#web-nav{
	position: absolute;
	left:154px;
	z-index:4;
	height: 182.6px;
	width: 1210px;
	background-color:white;
	border:1px solid #ccc;
	border-top:none;
	display: none;
}
.web-con{
	padding: 20px 0px;
}
.web-dl1{
	float: left;
	width: 347px;
	height: 150px;
	line-height: 24px;
	font-weight: 700;
	font-size: 14px;
	color: #333;
	font-family: "微软雅黑";
	padding-left: 20px;
}
.web-dl2{
	float: left;
	width: 249px;
	height: 150px;
	line-height: 24px;
	font-weight: 700;
	font-size: 14px;
	color: #333;
	font-family: "微软雅黑";
	padding-left:30px;
	border-left: 1px solid #eee;
}
.web-title{
	float: left;
	height: 24px;
	width: 86px;
}
.web-nav a{
	font-size:12px;
	color: #999;
	font-family: "微软雅黑";
	line-height: 24px;
}
.web-dl2 div.web-title{
	float: left;
	height: 24px;
	width: 83px;
}
/*网站导航  结束*/

/*手机京东开始*/
.jd-phone{
	position: absolute;
	right: 153px;
	display: none;
}
#jd-phone-icon{
	position: absolute;
	display: block;
	top: -9px;
	left: 154px;
	margin-left: -5px;
	width: 0;
	height: 0;
	line-height: 0;
	font-size: 0;
	border-width: 5px;
	border-style: solid;
	border-color: #e4e4e4 #e4e4e4 #fff;
}
.jd-phone-con{
	position: relative;
	z-index:8;
	border: 1px solid #ccc;
	border-top:none ;
}
.jd-phone-con-other{
	position: relative;
	z-index: 2;
	border: 1px solid #ccc;
	border-top:none ;
	border-bottom:3px solid #60575a;
}
.jd-phone-title{
	height: 70.8px;
	width: 190px;
	background-color: white;
	padding: 15px 0;
}
.jd-phone-img{
	position: absolute;
	left: 5px;
	top: 14px;
	width: 74px;
	height:  74px;
	border:1px solid #ccc;
	}

.jd-phone-img img{
	height: 70px;
	width: 70px;
	margin: 2px 0px 0px 2px;

}

.jd-phone-p{
	padding: 0 10px 0 86px;
}
.jd-phone-h{
	height: 17px;
	
}
.jd-phone-h a{
	position: relative;
	top: -7px;
	font-size: 12px !important;
	color: #666 !important;
	font-family: "微软雅黑" !important;
	font-weight: 700 !important;

}
.jd-phone-val{
	position: relative;
	top: 2px;
	color: red;
	line-height: 14px;
	font-size: 12px;
}

.jd-app{
	height: 25px;
}
.jd-app a{
	position: relative;
	top:5px;
}
.jd-app>a.jd-phone-1{
	display: inline-block;
	background:url(img3/手机京东/sprite_mobile@1x.png);
	width: 25px;	
	height: 25px !important;
	margin-left: 5px;
	background-position-y: 25px;
}
.jd-app>a.jd-phone-2{
	float: left;
	display: inline-block;
	background:url(img3/手机京东/sprite_mobile@1x.png);
	width: 25px;

	height: 25px !important;
	
}
.jd-app>a.jd-phone-3{
	float: left;
	display: inline-block;
	background:url(img3/手机京东/sprite_mobile@1x.png);
	width: 25px;
	height: 25px !important;
	margin-left: 5px;
	background-position-y:51px;
}

/*手机京东结束*/

/*购物车*/
.myjd-car{
	position: absolute;
	right:-2px;
	top: 31px;
	height:69px;
	width: 308px;
	background-color: white;
	display: none;
}

.myjd-car-icon{
	height:30px;
	width: 75px;
	padding: 0 28px 0 36px;
	text-align: center;
	background-color: F9F9F9;
	border:1px solid #fff;
}
.myjd-car-icon b{
	display: block;
	height: 49px;
	width: 56px;
	margin-top: 5px;
	background: url(img3/手机京东/settleup-nogoods.png) no-repeat;
}
.myjd-car-icon span{
	position: relative;
	top: -56px;
	margin-left:50px;
	display: block;
	line-height:69px;
	width: 189px;
}
	/*js样式结束*/
	/*图标样式*/
	/*家电*/
@font-face {
  font-family: 'iconfont';  /* project id 775422 */
  src: url('//at.alicdn.com/t/font_775422_afj9l7lz3fm.eot');
  src: url('//at.alicdn.com/t/font_775422_afj9l7lz3fm.eot?#iefix') format('embedded-opentype'),
  url('//at.alicdn.com/t/font_775422_afj9l7lz3fm.woff') format('woff'),
  url('//at.alicdn.com/t/font_775422_afj9l7lz3fm.ttf') format('truetype'),
  url('//at.alicdn.com/t/font_775422_afj9l7lz3fm.svg#iconfont') format('svg');
}
.iconfont{
    font-family:"iconfont" !important;
    font-size:16px;font-style:normal;
    -webkit-font-smoothing: antialiased;
    -webkit-text-stroke-width: 0.2px;
    -moz-osx-font-smoothing: grayscale;
    }
    


	
		</style>
		
		
	</head>
	<body>
	
		<!--第一行-->
		<div class="box1">
			<div class="w">
				<!--左边-->
				<ul class="fl">
					<!--首页-->
					<li id="con-one">
						<i class="iconfont" id="icon-one">&#xe63d;</i>
						<a href="http:\\www.jd.com">京东首页</a>
					</li>
				
						<!--地址-->
						<li id="icon-two">
							<div class="con-two">
								<i class="iconfont" id="icon-one-3">&#xe676;</i>
								<span id="text-beijing">北京	</span>	
							</div>	
							<div id="hide-city">
								<table border="" cellspacing="cellspacing" cellpadding="">
										<tr>
											<td><a href="#">北京</a></td>
											<td><a href="#">上海</a></td>
											<td><a href="#">天津</a></td>
											<td><a href="#">重庆</a></td>
											<td><a href="#">河北</a></td>
										</tr>
										<tr>
											<td><a href="#">山西</a></td>
											<td><a href="#">河南</a></td>
											<td><a href="#">辽宁</a></td>
											<td><a href="#">吉林</a></td>
											<td><a href="#">黑龙江</a></td>
										</tr>
										<tr>
											<td><a href="#">内蒙古</a></td>
											<td><a href="#">江苏</a></td>
											<td><a href="#">山东</a></td>
											<td><a href="#">安微</a></td>
											<td><a href="#">浙江</a></td>
										</tr>
										<tr>
											<td><a href="#">福建</a></td>
											<td><a href="#">湖北</a></td>
											<td><a href="#">湖南</a></td>
											<td><a href="#">广东</a></td>
											<td><a href="#">广西</a></td>
										</tr>
										<tr>
											<td><a href="#">江西</a></td>
											<td><a href="#">四川</a></td>
											<td><a href="#">海南</a></td>
											<td><a href="#">贵州</a></td>
											<td><a href="#">云南</a></td>
										</tr>
										<tr>
											<td><a href="#">西藏</a></td>
											<td><a href="#">陕西</a></td>
											<td><a href="#">甘肃</a></td>
											<td><a href="#">青海</a></td>
											<td><a href="#">宁夏</a></td>
										</tr>
										<tr>
											<td><a href="#">新疆</a></td>
											<td><a href="#">港澳</a></td>
											<td><a href="#">台湾</a></td>
											<td><a href="#">钓鱼岛</a></td>
											<td><a href="#">海外</a></td>
										</tr>
									</table>
									<div id="city-line">
										<!--分隔线-->	
									</div>
									<span id="city-txt">
										Available Sites
									</span>
									<!--底层的内容-->
									<ul id="city-ul">
										<li >
											<a href="#">
											<div id="city-ul-icon-1"><img src="img3/city-txt-1.png"/></div>
											<div id="city-ul-txt">Global Site</div>
											</a>
										</li>
										<li id="city-ul-2">
											<a href="#">
												<div id="city-ul-icon"><img src="img3/city-txt-2.png"/></div>
												<div id="city-ul-txt">Сайт России</div>
											</a>
										</li>
										<li>
											<a href="#">
												<div id="city-ul-icon-1"><img src="img3/city-txt-3.png"/></div>
												<div id="city-ul-txt">Situs Indonesia</div>
											</a>
										</li>
										<li id="city-ul-2">
											<a href="#">
												<div id="city-ul-icon"><img src="img3/city-txt-4.png"/></div>
												<div id="city-ul-txt">Sitio de España</div>
											</a>
										</li>
									</ul>
							</div>
						</li>
				</ul>
				
				<!--右边-->
				<ul class="fr">
						<li id="fr-1">
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
					
					<li class="fore2">
						<div class="dt">
							<a href="IndexActionServlet?action=getAllOrder" >我的订单</a>
						</div>
					</li>
					<li class="spacer"></li>
					<li class="fore3">
						<div class="dt2">
							<a href="#">我的京东</a>
							<i class="iconfont" id="icon-myjd">&#xe692;</i>
						</div>
							<!--我的京东js-->
						<div id="myjd-js">
							<div id="myjd-js-1">
								<div id="title">
									<a href="#">待处理订单</a>
								</div>
								<div id="title">
									<a href="#">消息</a>
								</div>
								<div id="title">
									<a href="#">返修退换货</a>
								</div>
								<div id="title">
									<a href="#">我的问答</a>
								</div>
								<div id="title">
									<a href="#">降价商品</a>
								</div>
								<div id="title">
									<a href="#">我的关注</a>
								</div>
							</div>	
							<div id="myjd-js-2">
								<div id="title">
									<a href="#">我的京豆</a>
								</div>
								<div id="title">
									<a href="#">我的优惠券</a>
								</div>
								<div id="title">
									<a href="#">我的白条</a>
								</div>
								<div id="title">
									<a href="#">我的理财</a>
								</div>
							</div>
						</div>
					</li>
					<li class="spacer"></li>
					<li class="fore4">
						<div class="dt">
							<a href="#">京东会员</a>	
						</div>
					</li>
					<li class="spacer"></li>
					<li class="fore5">
						<div class="dt4">
							<a href="#">企业采购</a>
							<i class="iconfont" id="icon-myjd">&#xe692;</i>
						</div>
						<!--企业采购js-->
						<div id="myjd-caigou">
							<div id="myjd-caigou-con">
								<div id="myjd-caigou-title">
									<a href="">企业购</a>
								</div>
								<div id="myjd-caigou-title">
									<a href="">商用场景馆</a>
								</div>
								<div id="myjd-caigou-title">
									<a href="">工业品</a>
								</div>
								<div id="myjd-caigou-title">
									<a href="">礼品卡</a>
								</div>
							</div>
						</div>
					</li>
					<li class="spacer"></li>
					
					<li class="fore6">
						<div class="dt5">
							<a href="#">客户服务</a>
							<i class="iconfont" id="icon-myjd">&#xe692;</i>
						</div>
						<!--客户服务js-->
						<div id="jdser">
							<div id="jdser-con">
								<div id="jdser-con-item">客户</div>
								<div id="jdser-con-title"><a href="">帮助中心</a></div>
								<div id="jdser-con-title"><a href="">售后服务</a></div>
								<div id="jdser-con-title"><a href="">在线客服</a></div>
								<div id="jdser-con-title"><a href="">意见建议</a></div>
								<div id="jdser-con-title"><a href="">电话客服</a></div>
								<div id="jdser-con-title"><a href="">客服邮箱</a></div>
								<div id="jdser-con-title"><a href="">金融咨询</a></div>
								<div id="jdser-con-title"><a href="">全球售客服</a></div>
								
								<div id="jdser-con-item-1">商户</div>
								<div id="jdser-con-title1"><a href="">合作招商</a></div>
								<div id="jdser-con-title1"><a href="">学习中心</a></div>
								<div id="jdser-con-title1"><a href="">商家后台</a></div>
								<div id="jdser-con-title1"><a href="">京麦工作台</a></div>
								<div id="jdser-con-title1"><a href="">商家帮助</a></div>
								<div id="jdser-con-title1"><a href="">规则平台</a></div>
					
							</div>
						</div>
					</li>
					<li class="spacer"></li>
					
					<li class="fore7">
						<div class="dt6">
							<a href="#">网站导航</a>
							<i class="iconfont" id="icon-myjd">&#xe692;</i>
						</div>
						<!--网站导航js-->
						<div id="web-nav">
							<div class="web-con">
									<dl class="web-dl1">
										<dt>特色主题</dt>
										<dd>
											<div class="web-title">
												<a href="#">京东试用</a>
											</div>
											<div class="web-title">
												<a href="#">京东金融</a>
											</div>
											<div class="web-title">
												<a href="#">全球售</a>
											</div>
											<div class="web-title">
												<a href="#">国际站</a>
											</div>
											<div class="web-title">
												<a href="#">京东会员</a>
											</div>
											<div class="web-title">
												<a href="#">京东预售</a>
											</div>
											<div class="web-title">
												<a href="#">买什么</a>
											</div>
											<div class="web-title">
												<a href="#">俄语站</a>
											</div>
											<div class="web-title">
												<a href="#">装机大师</a>
											</div>
											<div class="web-title">
												<a href="#">0元测评</a>
											</div>
											<div class="web-title">
												<a href="#">定期送</a>
											</div>
											<div class="web-title">
												<a href="#">港澳送</a>
											</div>
											<div class="web-title">
												<a href="#">优惠券</a>
											</div>
											<div class="web-title">
												<a href="#">秒杀</a>
											</div>
											<div class="web-title">
												<a href="#">闪购</a>
											</div>
											<div class="web-title">
												<a href="#">印尼站</a>
											</div>
											<div class="web-title">
												<a href="#">京东金融科技</a>
											</div>
											<div class="web-title">
												<a href="#">In货推荐</a>
											</div>
											<div class="web-title">
												<a href="#">陪伴计划</a>
											</div>
											<div class="web-title">
												<a href="#">出海招商</a>
											</div>
										</dd>
									</dl>
									<dl  class="web-dl2">
										<dt>行业频道</dt>
										<dd>
											<div class="web-title">
												<a href="#">手机</a>
											</div>
											<div class="web-title">
												<a href="#">智能数码</a>
											</div>
											<div class="web-title">
												<a href="#">玩3C</a>
											</div>
											<div class="web-title">
												<a href="#">电脑办公</a>
											</div>
											<div class="web-title">
												<a href="#">家用电器</a>
											</div>
											<div class="web-title">
												<a href="#">京东智能</a>
											</div>
											<div class="web-title">
												<a href="#">服装城</a>
											</div>
											<div class="web-title">
												<a href="#">京东生鲜</a>
											</div>
											<div class="web-title">
												<a href="#">家装城</a>
											</div>
											<div class="web-title">
												<a href="#">母婴</a>
											</div>
											<div class="web-title">
												<a href="#">食品</a>
											</div>
											<div class="web-title">
												<a href="#">农资频道</a>
											</div>
											<div class="web-title">
												<a href="#">整车</a>
											</div>
											<div class="web-title">
												<a href="#">图书</a>
											</div>
											<div class="web-title">
												<a href="#">京东元器件</a>
											</div>
										</dd>
									</dl>
									<dl  class="web-dl2">
										<dt>生活服务</dt>
										<dd>
											<div class="web-title">
												<a href="#">京东众筹</a>
											</div>
											<div class="web-title">
												<a href="#">白条</a>
											</div>
											<div class="web-title">
												<a href="#">京东金融APP</a>
											</div>
											<div class="web-title">
												<a href="#">京东小金库</a>
											</div>
											<div class="web-title">
												<a href="#">理财</a>
											</div>
											<div class="web-title">
												<a href="#">智能家电</a>
											</div>
											<div class="web-title">
												<a href="#">话费</a>
											</div>
											<div class="web-title">
												<a href="#">水煤电</a>
											</div>
											<div class="web-title">
												<a href="#">彩票</a>
											</div>
											<div class="web-title">
												<a href="#">旅行</a>
											</div>
											<div class="web-title">
												<a href="#">机票酒店</a>
											</div>
											<div class="web-title">
												<a href="#">电影票</a>
											</div>
											<div class="web-title">
												<a href="#">京东到家</a>
											</div>
											<div class="web-title">
												<a href="#">游戏</a>
											</div>
										</dd>
									</dl>
									<dl  class="web-dl2">
										<dt>更多精选</dt>
										<dd>
											<div class="web-title">
												<a href="#">合作招商</a>
											</div>
											<div class="web-title">
												<a href="#">京东通信</a>
											</div>
											<div class="web-title">
												<a href="#">京东E卡</a>
											</div>
											<div class="web-title">
												<a href="#">企业采购</a>
											</div>
											<div class="web-title">
												<a href="#">服务市场</a>
											</div>
											<div class="web-title">
												<a href="#">办公生活馆</a>
											</div>
											<div class="web-title">
												<a href="#">乡村招募</a>
											</div>
											<div class="web-title">
												<a href="#">校友加盟</a>
											</div>
											<div class="web-title">
												<a href="#">京友邦</a>
											</div>
											<div class="web-title">
												<a href="#">京东社区</a>
											</div>
											<div class="web-title">
												<a href="#">游戏社区</a>
											</div>
											<div class="web-title">
												<a href="#">知识产权维权</a>
											</div>
										</dd>
									</dl>
							</div>
						</div>
					</li>
					<li class="spacer"></li>
					
					<li class="fore8">
						<div class="dt">
							<a href="#">手机京东</a>						
						</div>
						<!--手机京东js-->
						<div class="jd-phone">
							<div class="jd-phone-con">
								<div class="jd-phone-title">
									<div id="jd-phone-icon"></div>
									<div class="jd-phone-img">
										<img src="img3/手机京东/59a51bf6Nb8e478cc.png"/>
									</div>
									<div class="jd-phone-p">
										<h5 class="jd-phone-h"><a href="#">手机京东</a></h5>
										<p class="jd-phone-val">新人专享大礼包</p>
										<p class="jd-app">
											<a href="#" class="jd-phone-1"></a>
											<a href="#" class="jd-phone-2"></a>
											<a href="#" class="jd-phone-3"></a>
										</p>
									</div>
									
								</div>
							</div>
							<div class="jd-phone-con">
								<div class="jd-phone-title">
									<div class="jd-phone-img">
										<img src="img3/手机京东/5874a54dNcec29924.jpg"/>
									</div>
									<div class="jd-phone-p">
										<h5 class="jd-phone-h"><a href="#">关注京东微信</a></h5>
										<p class="jd-phone-val">
											微信扫一扫关注<br>
											新粉最高180元<br>
											惊喜礼包
										</p>
									</div>
								</div>
							</div>
							<div class="jd-phone-con-other">
								<div class="jd-phone-title">
									<div class="jd-phone-img">
										<img src="img3/手机京东/5874a555Ne8192324.jpg"/>
									</div>
									<div class="jd-phone-p">
										<h5 class="jd-phone-h"><a href="#">京东金融客户端</a></h5>
										<p class="jd-phone-val">新人专享大礼包</p>
										<p class="jd-app">
											<a href="#" class="jd-phone-2"></a>
											<a href="#" class="jd-phone-3"></a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>	
			</div>
		</div>
		<!--第二行-->
		<div class="myjd">
			<div class="w">
				<!--左边内容-->
				<div class="two_content fl">
					<div class="tl-icon">
						<a href="#" class="left-icon"></a>
						<a href="#" class="left-icon-1">我的京东</a>
						<a href="http:\\www.jd.com" class="left-icon-2">返回京东首页</a>
					</div>
					<!--中间内容-->
					<div class="middle-con">
						<ul>
							<li class="fore-1">
								<a href="www.jd.com">首页</a>
							</li>
							<li  class="fore-2">
								<div id="fore2_span">
									<span class="myjd_set">账户设置</span>
									<b></b>
								</div>
							
							</li>
							<li class="fore-3">
								<div id="fore3_span">
									<span>社区</span>
									<b></b>
								</div>
								
							</li>
							<li class="fore-4">
								<a href="#">消息</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="rt-cont fr">
					<!--购物车-->
							<div id="icon">
								<div id="iconCar">
									<i id="ImgC"><img src="img3/tel.png" alt="" id="imgCar"/></i>
									<a href="CategoryServlet?action=getAll" id="iconSpan">我的购物车</a>
									<i id="icon-Car-mag">1</i>
								</div>
									<!--购物车隐藏界面-->
								<div class="myjd-car">
									<div class="myjd-car-icon">
										<b></b>
										<span>购物车还没有商品，赶紧选购吧！</span>
									</div>
								</div>
							</div>
				</div>
				<div class="search">
					<input type="text" name="" id="search-1" value="" />
					<input type="button" name="" id="search-2" value="搜素" />
				</div>
			</div>
		</div>
		<!--第三行-->
		<div class="myjd-main">
			<div class="w">
				<!--左边导航-->
				<div class="nav-left">
					<dl class="nav-con-dl">
						<dt>订单中心</dt>
						<dd>我的订单</dd>
						<dd>我的活动</dd>
						<dd>评价晒单</dd>
						<dd>我的常购商品</dd>
						<dd>购物助手</dd>
					</dl>
					<dl class="nav-con-dl">
						<dt>关注中心</dt>
						<dd>关注的商品</dd>
						<dd>关注的店铺</dd>
						<dd>关注的专辑</dd>
						<dd>收藏的内容</dd>
						<dd>关注的活动</dd>
					</dl>
					<dl class="nav-con-dl">
						<dt>资产中心</dt>
						<dd>小金库</dd>
						<dd>京东白条</dd>
						<dd>领货码</dd>
						<dd>余额</dd>
						<dd>优惠券</dd>
						<dd>礼品卡</dd>
						<dd>京豆</dd>
						<dd>京东钢镚</dd>
					</dl>
				</div>
				<!--订单内容-->
				<div class="con-1">
					<!--第一个-->
					<div class="con-title-one">
						<div class="con_one">
							<h3>我的订单</h3>
						</div>
					</div>
					<!---->
					<div class="con-title-two">
						<div class="con_two">
							<ul class="con_ul">
								<li class="con_li_1">
									<a href="IndexActionServlet?action=getAllOrder" targer="OrderIFrame">
									全部订单
									</a>
								</li>
								<li  class="con_li_2">
									<a href="IndexActionServlet?action=queryOrderState">待付款</a>
									<%
									UserOrderSerivceImpl service = new UserOrderSerivceImpl();
									int sum=service.getAllOrderSum();
									 %>
									<em><%=sum%></em>
								</li>
								<li class="con_li_2">
									<a href="#">待收货</a>
								</li>
								<li class="con_li_2">
									<a href="#">
										待评价
									</a>
								</li>
								<li class="con_li_5">
									<a href="#">
										我的常购商品
									</a>
								</li>
								<li class="con_li_6">
									<a href="#">
										好货·清仓
									</a>
								</li>
								<li class="con_li_7">
									<a href="#">
										订单回收站	
									</a>
								</li>
							</ul>
							
						<form id="categoryForm" action="IndexActionServlet?action=getAllByQuery" method="post" target="OrderIFrame">
								<div class="con_Search">
									<div class="con_div_search">
										<input type="text" name="search_inp" id="search_inp" placeholder="商品名称/商品编号/订单编号" />
									</div>
										<input type="submit"  class="search-btn">
										<b></b>
										</input>
									<a href="#" class="default-btn">
										<i>高级</i>
										<b></b>
									</a>
								</div>
						</form>
							
						</div>	
						<div class="main_mc">
							<!--占位隐藏-->
							<div></div>
							<!---->
							<table class="order-tb">
								<colgroup>
	                                <col class="number-col">
	                                <col class="consignee-col">
	                                <col class="amount-col">
	                                <col class="status-col">
	                                <col class="operate-col">
                           		 </colgroup>
	                            <thead>
	                            	<tr>
	                            		<th>
	                            			<div class="ordertime-cont">
												<div class="time-txt">
													近三个月订单
													<b></b>
													<span class="blank">
													</span>
												</div>
												<div class="time-list" style="display: none;">
			                                       <ul>
			                                       	<li><a href="#none" _val="1&amp;s=4096" clstag="click|keycount|orderlist|zuijinsangeyue"><b></b>近三个月订单</a></li>
			                                        <li><a href="#none" _val="2&amp;s=4096" clstag="click|keycount|orderlist|jinniannei"><b></b>今年内订单</a></li>
				                                    <li><a href="#none" _val="2017&amp;s=4096" clstag="click|keycount|orderlist|2017"><b></b>2017年订单</a></li>
				                                    <li><a href="#none" _val="2016&amp;s=4096" clstag="click|keycount|orderlist|2016"><b></b>2016年订单</a></li>
				                                    <li><a href="#none" _val="2015&amp;s=4096" clstag="click|keycount|orderlist|2015"><b></b>2015年订单</a></li>
				                                    <li><a href="#none" _val="2014&amp;s=4096" clstag="click|keycount|orderlist|2014"><b></b>2014年订单</a></li>
				                                	<li><a href="#none" _val="3&amp;s=4096" clstag="click|keycount|orderlist|before_2014"><b></b>2014年以前订单</a></li>
			                                       </ul>
		                                   	 	</div>
	                            			</div>
	                            			<div class="order-detail-txt ac">订单详情</div>
	                            		</th>
	                            		<th>收货人</th>
	                            		<th>金额</th>
	                            		<th>
	                            			<div class="ordertime-cont-2">
												<div class="time-txt-1">
													全部状态
													<b></b>
													<span class="blank">
													</span>
												</div>
	                            		</th>
	                            		<th>操作</th>
	                            	</tr>
	                            </thead>
								<tbody>
							</table>
							
								<div class="order" >
										<div class="order_null">
				                          	 <i class="empty-icon"></i>
				                           		<div class="e-cont">
				                                      <h5>最近还没有任何订单哦~</h5>
				                                     <div class="op-btns">
				                                   		 <a href="#" class="btn-9 mr10">查看全部订单</a>
				                                   		 <a href="#" class="btn-1" target="_blanck">去首页看看</a>
				                             		 </div>
				                      		 </div>
										</div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--底部-->
		<div class="jiadian-bottom-one">
				<div class="w">
					<ol class="slogan">
						<li class="item-fore1">
							<i>多</i>
							<em>品类齐全,轻松购物</em>
						</li>
						<li class="item-fore2">
							<i>快</i>
							<em>多仓直发,急速配送</em>
						</li>
						<li class="item-fore3">
							<i>好</i>
							<em>正品行货,精致服务</em>
						</li>
						<li class="item-fore4">
							<i>省</i>
							<em>天天低价,畅选无忧</em>
						</li>
					</ol>	
				</div>
				
				<!--下一行-->
				<div class="jd-help">
					<div class="w">
						<div class="wrap">
							<!--第一个-->
							<dl class="fore1">
								<dt>购物指南</dt>
								<dd><a href="#">购物流程</a></dd>
								<dd><a href="#">会员介绍</a></dd>
								<dd><a href="#">生活旅行/团购</a></dd>
								<dd><a href="#">常见问题</a></dd>
								<dd><a href="#">大家电</a></dd>
								<dd><a href="#">联系客服</a></dd>
							</dl>
							<!--第二个-->
							<dl class="fore2">
								<dt>配送方式</dt>
								<dd><a href="#">上门自提</a></dd>
								<dd><a href="#">211限时达</a></dd>
								<dd><a href="#">配送服务查询</a></dd>
								<dd><a href="#">配送费收取标准</a></dd>
								<dd><a href="#">海外配送</a></dd>
								<dd></dd>
							</dl>
							<!--第三个-->
							<dl class="fore2">
								<dt>支付方式</dt>
								<dd><a href="#">货到付款</a></dd>
								<dd><a href="#">在线支付</a></dd>
								<dd><a href="#">分期付款</a></dd>
								<dd><a href="#">邮局汇款</a></dd>
								<dd><a href="#">公司转账</a></dd>		
							</dl>
							<!--第四个-->
							<dl class="fore2">
								<dt>售后服务</dt>
								<dd><a href="#">售后政策</a></dd>
								<dd><a href="#">价格保护</a></dd>
								<dd><a href="#">退款说明</a></dd>
								<dd><a href="#">返修/退换货</a></dd>
								<dd><a href="#">取消订单</a></dd>
								
							</dl>
							<!--第五个-->
							<dl class="fore1">
								<dt>特色服务</dt>
								<dd><a href="#">夺宝岛</a></dd>
								<dd><a href="#">DIY装机</a></dd>
								<dd><a href="#">延保服务</a></dd>
								<dd><a href="#">京东E卡</a></dd>
								<dd><a href="#">京东通信</a></dd>
								<dd><a href="#">京东JD+</a></dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
	
	
		<!--最后部分-->
		<div class="jiadian-last">
			<div class="w">
				<div class="last-title">
					<p class="last-title-p">
						<a href="#">关于我们</a>
						<span class="last-title-span">|</span>
						<a href="#">联系我们</a>
						<span class="last-title-span">|</span>
						<a href="#">联系客服</a>
						<span class="last-title-span">|</span>
						<a href="#">合作招商</a>
						<span class="last-title-span">|</span>
						<a href="#">商家帮助</a>
						<span class="last-title-span">|</span>
						<a href="#">营销中心</a>
						<span class="last-title-span">|</span>
						<a href="#">手机京东</a>
						<span class="last-title-span">|</span>
						<a href="#">友情链接</a>
						<span class="last-title-span">|</span>
						<a href="#">销售联盟</a>
						<span class="last-title-span">|</span>
						<a href="#">京东社区</a>
						<span class="last-title-span">|</span>
						<a href="#">风险监控</a>
						<span class="last-title-span">|</span>
						<a href="#">隐私政策</a>
						<span class="last-title-span">|</span>
						<a href="#">京东公益</a>
						<span class="last-title-span">|</span>
						<a href="#">English Site</a>
						<span class="last-title-span">|</span>
						<a href="#">Media & IR</a>
					</p>
				</div>
				
				<div class="last-2">
					<p>
						<a href="#">京公网安备 11000002000088号</a>
						<span class="last-2-span">|</span>
						<span>京ICP证070359号</span>
						<span class="last-2-span">|</span>
						<a href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>
						<span class="last-2-span">|</span>
						<span>新出发京零&nbsp;字第大120007号</span>
					</p>
					
					<p>
						<span>互联网出版许可证编号新出网证(京)字150号</span>
						<span class="last-2-span">|</span>
						<a href="#">出版物经营许可证</a>
						<span class="last-2-span">|</span>
						<a href="#">网络文化经营许可证京网文[2014]2148-348号</a>
						<span class="last-2-span">|</span>
						<span>违法和不良信息举报电话：4006561155</span>
					</p>
					
					<p>
						<span>Copyright © 2004 - 2018  京东JD.com 版权所有</span>
						<span class="last-2-span">|</span>
						<span>消费者维权热线：4006067733</span>
						<a href="#" style="margin-left: 10px;">经营证照</a>
						<span class="last-2-span">|</span>
						<span>(京)网械平台备字(2018)第00003号</span>
					</p>
					
					<p class="last-icno-cno">
						<a href="#">
							<img src="img3/city-txt-1.png"/>
							<i>Global Site</i>
						</a>
						<span class="last-2-span">|</span>
						
						<a href="#">
							<img src="img3/city-txt-2.png"/>
							<i>Сайт России</i>
						</a>
						<span class="last-2-span">|</span>
						
						<a href="#">
							<img src="img3/city-txt-3.png"/>
							<i>Situs Indonesia</i>
						</a>
						<span class="last-2-span">|</span>
						
						<a href="#">
							<img src="img3/city-txt-4.png"/>
							<i>Sitio de España</i>
						</a>
					</p>
					
					<p>
						<span>京东旗下网站：</span>
						<a href="#">京东钱包</a>
						<span class="last-2-span">|</span>
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
	</body>
		<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		  <script src="css/bootstrap/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="css/jQuery-confirm/jquery-confirm.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		//第一行 地址
			
				//第一行 地址下拉框显示与隐藏事件
//				$("#hide-city").hide();
				$("#icon-two").mouseenter(function(){
					$("#hide-city").show();
					$(".con-two").css("background-color","white");
			
				});
				$("#icon-two").mouseleave(function(){
					$(".con-two").css("background-color","rgba(227,228,229,0.5)");
					$("#hide-city").hide();	
				});
				
				//第一行 左边
				//城市事件获取焦点事件
				$("#hide-city table a").focus(function(){
					$("#text-beijing").text($(this).text());
					$(this).css("background-color","red");
					$(this).css("color","white");
				});
				//城市失去焦点事件
				$("#hide-city table a").blur(function(){
					$(this).css("background-color","white");
					$(this).css("color","#999");		
				});
			
				
				//第一行 右边 我的京东
//				$("#myjd-js").hide();
				$(".fore3").mouseenter(function(){
					$("#myjd-js").show();
					$(".dt2").css("background-color","white");
			
				});
				$(".fore3").mouseleave(function(){
					$(".dt2").css("background-color","rgba(227,228,229,0.5)");
					$("#myjd-js").hide();	
				});
				
				//企业采购
//				$("#myjd-caigou").hide();
				$(".fore5").mouseenter(function(){
					$("#myjd-caigou").show();
					$(".dt4").css("background-color","white");
			
				});
				$(".fore5").mouseleave(function(){
					$(".dt4").css("background-color","rgba(227,228,229,0.5)");
					$("#myjd-caigou").hide();	
				});
				
				//客户服务
				$(".fore6").mouseenter(function(){
					$("#jdser").show();
					$(".dt5").css("background-color","white");
			
				});
				$(".fore6").mouseleave(function(){
					$(".dt5").css("background-color","rgba(227,228,229,0.5)");
					$("#jdser").hide();	
				});
				
				//网站导航
				$(".fore7").mouseenter(function(){
					$("#web-nav").show();
					$(".dt6").css("background-color","white");
			
				});
				$(".fore7").mouseleave(function(){
					$(".dt6").css("background-color","rgba(227,228,229,0.5)");
					$("#web-nav").hide();	
				});
				//手机京东
				$(".fore8").mouseenter(function(){
					$(".jd-phone").show();
			
				});
				$(".fore8").mouseleave(function(){
				
					$(".jd-phone").hide();	
				});
				
				//全部分类
				$("#box3-2-2").mouseenter(function(){
					$(".all-classify").show();
					$("#box3-2-2").css("border-bottom","none");
				});
				$("#box3-2-2").mouseleave(function(){
					$(".all-classify").hide();	
					$("#box3-2-2").css("border-bottom","1px solid #ccc");
				});
				
				
				
				//购物车
			
				$("#icon").mouseenter(function(){
					$(".myjd-car").show();
					$("#iconCar").css("background-color","white");
				});
				$("#icon").mouseleave(function(){
					$("#iconCar").css("background-color","#F9F9F9");
					$(".myjd-car").hide();	
				});
				
				//垂直导航二级菜单
				
				$("#nav-one").mouseenter(function(){
					$("#nav-one .con-js-one").show();
					$("#nav-one i").css("color","#666");
					$("#nav-one a.content-left-tv").css("color","#666");
					$("#nav-one p.content-txt>a").css("color","#666");
					$("#nav-one div.content-left-1").css("background-color","white");
				});
				$("#nav-one").mouseleave(function(){
					$("#nav-one .con-js-one").hide();	
					$("#nav-one i").css("color","white");
					$("#nav-one a.content-left-tv").css("color","white");
					$("#nav-one p.content-txt>a").css("color","white");
					$("#nav-one div.content-left-1").css("background-color"," #dd4545");
				});
				
				//第二个
				$("#nav-two").mouseenter(function(){
					$("#nav-two .con-js-two").show();
					$("#nav-two i").css("color","#666");
					$("#nav-two a.content-left-tv").css("color","#666");
					$("#nav-two p.content-txt>a").css("color","#666");
					$("#nav-two div.content-left-1").css("background-color","white");
					
				});
				$("#nav-two").mouseleave(function(){
					$("#nav-two .con-js-two").hide();	
					$("#nav-two i").css("color","white");
					$("#nav-two a.content-left-tv").css("color","white");
					$("#nav-two p.content-txt>a").css("color","white");
					$("#nav-two div.content-left-1").css("background-color"," #dd4545");
				});
				//第三个
				$("#nav-three").mouseenter(function(){
					$("#nav-three .con-js-three").show();
					$("#nav-three i").css("color","#666");
					$("#nav-three a.content-left-tv").css("color","#666");
					$("#nav-three p.content-txt>a").css("color","#666");
					$("#nav-three div.content-left-1").css("background-color","white");
					
				});
				$("#nav-three").mouseleave(function(){
					$("#nav-three .con-js-three").hide();	
					$("#nav-three i").css("color","white");
					$("#nav-three a.content-left-tv").css("color","white");
					$("#nav-three p.content-txt>a").css("color","white");
					$("#nav-three div.content-left-1").css("background-color"," #dd4545");
				});
				//第四个
				$("#nav-four").mouseenter(function(){
					$("#nav-four .con-js-four").show();
					$("#nav-four i").css("color","#666");
					$("#nav-four a.content-left-tv").css("color","#666");
					$("#nav-four p.content-txt>a").css("color","#666");
					$("#nav-four div.content-left-1").css("background-color","white");
					
				});
				$("#nav-four").mouseleave(function(){
					$("#nav-four .con-js-four").hide();	
					$("#nav-four i").css("color","white");
					$("#nav-four a.content-left-tv").css("color","white");
					$("#nav-four p.content-txt>a").css("color","white");
					$("#nav-four div.content-left-1").css("background-color"," #dd4545");
				});
				//第五个
				$("#nav-five").mouseenter(function(){
					$("#nav-five .con-js-five").show();
					$("#nav-five i").css("color","#666");
					$("#nav-five a.content-left-tv").css("color","#666");
					$("#nav-five p.content-txt>a").css("color","#666");
					$("#nav-five div.content-left-1").css("background-color","white");
					
				});
				$("#nav-five").mouseleave(function(){
					$("#nav-five .con-js-five").hide();	
					$("#nav-five i").css("color","white");
					$("#nav-five a.content-left-tv").css("color","white");
					$("#nav-five p.content-txt>a").css("color","white");
					$("#nav-five div.content-left-1").css("background-color"," #dd4545");
				});
				//第六个
				$("#nav-six").mouseenter(function(){
					$("#nav-six .con-js-six").show();
					$("#nav-six i").css("color","#666");
					$("#nav-six a.content-left-tv").css("color","#666");
					$("#nav-six p.content-txt>a").css("color","#666");
					$("#nav-six div.content-left-1").css("background-color","white");
					
				});
				$("#nav-six").mouseleave(function(){
					$("#nav-six .con-js-six").hide();	
					$("#nav-six i").css("color","white");
					$("#nav-six a.content-left-tv").css("color","white");
					$("#nav-six p.content-txt>a").css("color","white");
					$("#nav-six div.content-left-1").css("background-color"," #dd4545");
				});
				//第七个
				$("#nav-seven").mouseenter(function(){
					$("#nav-seven .con-js-seven").show();
					$("#nav-seven i").css("color","#666");
					$("#nav-seven a.content-left-tv").css("color","#666");
					$("#nav-seven p.content-txt>a").css("color","#666");
					$("#nav-seven div.content-left-1").css("background-color","white");
					
				});
				$("#nav-seven").mouseleave(function(){
					$("#nav-seven .con-js-seven").hide();	
					$("#nav-seven i").css("color","white");
					$("#nav-seven a.content-left-tv").css("color","white");
					$("#nav-seven p.content-txt>a").css("color","white");
					$("#nav-seven div.content-left-1").css("background-color"," #dd4545");
				});
				
				
				
				
				
				
				//轮播图点击事件
				$("#p-icon>a").mouseenter(function(){
					$(this).css('background-color','red');
				});
				$("#p-icon>a").mouseleave(function(){
					$(this).css('background-color','rgba(227,228,229,0.5)');
				});

				//搜索框
		
			document.name= 'WEB-INF/jsp/user/OrderMain.jsp';
				
			/*function getAllByQuery(){
				
				location.assign("IndexActionServlet?action=getAllByQuery");
				submit();
				target:"OrderIFrame";
			}*/
		</script>
</html>
