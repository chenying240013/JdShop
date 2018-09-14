<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>订单结算页-京东商城</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<style type="text/css">
* {
	margin: 0px;
}

.alldiv {
	width: 990px;
	height: auto;
	background: pink;
	margin: 0px auto;
}

body {
	width: 1349px;
	font: 12px/150% Arial, Verdana, "\5b8b\4f53";
	color: #666;
	padding: 0px;
}

a {
	text-decoration: none;
	color: #666;
}

a:HOVER {
	color: #c91623;
}

em, i, u {
	font-style: normal;
}

.step .s-num {
	background-position: -23px 0;
}
/*最上面导航条*/
/*最上面一条的type 开始*/
#shortcut {
	width: 100%;
	height: 30px;
	line-height: 30px;
	background: #F1F1F1;
}

.fl {
	float: left;
}

#shortcut .w {
	width: 990px;
	height: 30px;
	margin: 0 auto;
	background: #F1F1F1;
}

#shortcut li {
	float: left;
	height: 30px;
	padding: 0 2px;
}

#shortcut li.dorpdown {
	z-index: 13;
}

#shortcut #ttbar-mycity {
	padding-left: 0;
}

#shortcut li.dorpdown:hover {
	padding: 0 1px;
}

#shortcut li.dropdown {
	position: relative;
	padding-left: 0px;
	z-index: 1;
}

#shortcut .dt {
	float: left;
	padding: 0 8px;
}

#shortcut #ttbar-mycity .dt {
	padding: 0 25px 0 10px;
}

.cw-icon {
	position: relative;
	cursor: default;
	zoom: 1;
}

#shortcut li.dorpdown:hover .dt {
	background: #fff;
	border: solid #ddd;
	border-width: 0 1px;
	cursor: default;
}

#ttbar-mycity:hover .dt {
	padding: 0 24px 0 9px;
}

#shortcut .ci-right {
	position: absolute;
	display: block;
	top: 12px;
	right: 8px;
	height: 7px;
	overflow: hidden;
	font: 400 15px/15px consolas;
	color: #6A6A6A;
	transition: transform .1s ease-in 0s;
	-webkit-transition: -webkit-transform .1s ease-in 0s;
}

#shortcut li.dorpdown:hover .ci-right {
	transform: rotate(180deg);
	-webkit-transform: rotate(180deg);
}

#shortcut .ci-right s {
	position: relative;
	top: -7px;
	text-decoration: none;
}

#shortcut .dorpdown-layer {
	display: none;
	position: absolute;
	line-height: 24px;
	width: 301px; //
	padding: 10px 0 10px 10px;
	top: 30px;
	background: #fff;
	border: 1px solid #ddd;
}

#shortcut li.dorpdown:hover .dorpdown-layer {
	display: block;
	z-index: 2;
}

#shortcut #ttbar-mycity .dd-spacer {
	left: 0;
	width: 98px;
}

#shortcut .dd-spacer {
	position: absolute;
	top: -7px;
	height: 10px;
	background: #fff;
	overflow: hidden;
}

#shortcut #ttbar-mycity .item {
	float: left;
	width: 60px;
	padding: 2px 0;
}

#shortcut #ttbar-mycity .item a {
	float: left;
	padding: 0 8px;
}

a.selected {
	background: #C81623;
	color: #fff;
}

.selected {
	z-index: =1;
	background: #C81623;
	color: #fff;
}

.notselected {
	z-index: =1;
	background: #fff;
}

#shortcut .item a:hover {
	background: #F4F4F4;
}

.fr {
	float: right;
}

#shortcut #ttbar-login {
	margin-right: 10px;
}

#shortcut #ttbar-login .link-login {
	font-family: "verdana,simsun";
}

#shortcut .style-red {
	color: #C81623;
}

#shortcut li.spacer {
	width: 1px;
	height: 12px;
	margin-top: 9px;
	padding: 0;
	background: #ddd;
	overflow: hidden;
}

#ttbar-myjd .dorpdown-layer {
	width: 280px;
}

#ttbar-myjd .userinfo {
	padding: 10px 0 10px 15px;
	overflow: hidden;
}

#ttbar-myjd .u-pic {
	float: left;
	margin-right: 10px;
}

#ttbar-myjd .u-pic img {
	border-radius: 50%;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
}

#ttbar-myjd .u-name {
	padding: 6px 0 0;
	font-weight: 700;
}

#ttbar-myjd .otherlist {
	width: 255px;
	padding: 0 0 0 15px;
	margin: 5px 0;
	overflow: hidden;
	margin-bottom: 10px;
}

#ttbar-myjd .otherlist .fore1, #ttbar-myjd .otherlist .fore2 {
	float: left;
	width: 126px;
}

#ttbar-myjd .dd-spacer {
	left: 0;
	width: 82px;
}

#shortcut #ttbar-apps .dt {
	padding-left: 25px;
	padding-right: 25px;
}

#shortcut #ttbar-myjd .dt, #shortcut #ttbar-atte .dt, #shortcut #ttbar-serv .dt,
	#shortcut #ttbar-navs .dt {
	width: 49px;
	padding-right: 25px;
}

.cw-icon .i, .cw-icon i {
	display: block;
	position: absolute;
	overflow: hidden;
}

#shortcut #ttbar-apps .dt .ci-left {
	top: 5px;
	left: 7px;
	width: 15px;
	height: 20px;
	background: url(img2/jd2015img.png) 0 0 no-repeat;
}

#shortcut #ttbar-apps:hover .dt .ci-left {
	background: url(img2/jd2015img.png) 0 -25px no-repeat;
}

#shortcut #ttbar-apps .dd-inner {
	position: relative;
	width: 250px;
	height: 186px;
	overflow: hidden;
	background: url(img2/erweimamany.png);
}

#ttbar-apps .dd-spacer {
	left: 0;
	height: 7px;
	width: 98px;
}

#shortcut #ttbar-atte .dd-spacer, #shortcut #ttbar-serv .dd-spacer {
	left: 0;
	height: 7px;
	width: 82px;
}

#shortcut #ttbar-apps .dd {
	width: 250px;
}

#shortcut #ttbar-apps .dd a {
	display: block;
	position: absolute;
	width: 56px;
	height: 44px;
	overflow: hidden;
	text-indent: -500px;
}

#shortcut #ttbar-apps .dd .link {
	width: 100px;
	height: 20px;
	overflow: hidden;
}

#shortcut #ttbar-apps .dd .link1, #shortcut #ttbar-apps .dd .link2,
	#shortcut #ttbar-apps .dd .link3 {
	left: 92px;
	top: 6px;
	background-position: 0 -44px;
}

#shortcut #ttbar-apps .dd .link3 {
	top: 104px;
	background-position: -1px -66px;
}

#shortcut #ttbar-apps .dd .link4, #shortcut #ttbar-apps .dd .link5 {
	left: 99px;
	top: 23px;
	width: 136px;
	color: #c21a21;
	text-indent: 0;
	cursor: default;
}

#shortcut #ttbar-apps .dd .link5 {
	top: 120px;
}

#shortcut #ttbar-apps .jdapp-ios, #shortcut #ttbar-apps .wyapp-ios {
	top: 46px;
	left: 92px;
}

#shortcut #ttbar-apps .jdapp-android, #shortcut #ttbar-apps .wyapp-android
	{
	top: 46px;
	left: 147px;
}

#shortcut #ttbar-apps .dd-inner {
	position: relative;
	width: 250px;
	height: 186px;
	overflow: hidden;
	background: url(img2/erweimamany.png);
}

#shortcut #ttbar-apps .jdapp-ipad, #shortcut #ttbar-apps .wyapp-ipad {
	width: 45px;
	top: 46px;
	left: 202px;
}

#shortcut #ttbar-apps .wyapp-android, #shortcut #ttbar-apps .wyapp-ios {
	top: 143px;
}

#shortcut #ttbar-atte .dt, #shortcut #ttbar-serv .dt {
	width: 49px;
	padding-right: 25px;
}

#shortcut #ttbar-atte .dd, #shortcut #ttbar-serv .dd {
	width: 82px;
	padding-bottom: 8px;
}

#shortcut #ttbar-atte .dd {
	padding-left: 0;
}

#shortcut #ttbar-serv .dd {
	width: 170px;
}

#shortcut #ttbar-serv .item-business, #shortcut #ttbar-serv .item-client
	{
	font-weight: 700;
	padding-left: 10px;
}

#shortcut #ttbar-atte .item, #shortcut #ttbar-serv .item {
	display: inline-block;
	width: 70px;
	padding-left: 15px;
}

#shortcut #ttbar-serv .item {
	padding-left: 10px;
}

#shortcut #ttbar-serv .item-business {
	border-top: 1px dotted #ccc;
	padding-top: 5px;
	margin-top: 5px;
}

#shortcut #ttbar-navs .dd-spacer {
	right: 0px;
	height: 7px;
	width: 82px;
}

#shortcut #ttbar-navs dt {
	font-size: 14px;
	font-weight: 700;
	margin-bottom: 6px;
}

#shortcut #ttbar-navs .dt {
	width: 49px;
	padding-right: 25px;
}

#shortcut #ttbar-navs .dd {
	right: 1px;
	width: 1210px;
	padding: 20px 0 16px;
}

#shortcut #ttbar-navs dl {
	float: left;
	width: 201px;
	padding-left: 20px;
	border-left: 1px solid #ddd;
}

#shortcut #ttbar-navs dl {
	width: 259px;
}

#shortcut #ttbar-navs dl.fore1 {
	border-left: none;
	width: 347px;
}

#shortcut #ttbar-navs .fore2 {
	display: block;
}

#shortcut #ttbar-navs .item {
	float: left;
	width: 100px;
}

#shortcut #ttbar-navs .item {
	width: 86px;
}
/*最上面一条的type 结束*/

/*������ĵ���������*/
.div-top {
	width: 990px;
	margin: 0px auto;
	height: 30px;
	background-color: #F1F1F1;
}

.div-top-sendTo {
	display: inline-block;
	line-height: 30px;
	padding: 0 25px 0 10px;
}

.div-top-ul {
	display: inline-block;
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.user {
	height: 30px;
	line-height: 30px;
	display: inline-block;
	width: 123px;
	float: right;
	padding: 0px 2px;
}

.div-top1 {
	float: right;
	height: 30px;
	line-height: 30px;
	display: inline-block;
	width: 76px;
	text-align: center;
	padding: 0px 2px;
}

.div-top2 {
	float: right;
	height: 30px;
	line-height: 30px;
	display: inline-block;
	width: 58px;
	text-align: center;
	padding: 0px 2px;
}

.div-top3 {
	float: right;
	height: 30px;
	line-height: 30px;
	display: inline-block;
	width: 92px;
	text-align: center;
	padding: 0px 2px;
}

.div-top4 {
	float: right;
	height: 30px;
	line-height: 30px;
	display: inline-block;
	width: 88px;
	text-align: center;
	padding: 0px 2px;
}

.spacer {
	width: 1px;
	height: 12px;
	padding: 0px;
	background: #ddd;
	overflow: hidden;
	float: right;
	margin-top: 9px;
}

/*�м�logo*/
.logo {
	width: 990px;
	margin: 0px auto;
	display: block;
	padding: 20px 0px 10px;
	padding-left: 10px;
}

.link2 {
	overflow: hidden;
	display: block;
	position: absolute;
	width: 100px;
	height: 40px;
	line-height: 99em;
	top: 16px;
	right: 0;
	background: #fff;
	float: left;
}

.logo .div1 b {
	display: block;
	position: absolute;
	width: 100px;
	height: 40px;
	line-height: 99em;
	top: -8;
	right: 0;
	background: url(img2/jiesuanye.png) #fff no-repeat;
	float: left;
}

.logo .div1 {
	width: 270px;
	float: left;
	position: relative;
}

.div-logo-form {
	display: inline-block;
	float: right;
	border: 2px solid #c91623;
	background: #c91623;
	height: 24px;
	position: relative;
	top: 20px;
}

form {
	padding: 0px;
	margin: 0px;
}

.step {
	display: inline-block;
	display: block;
	border-top: 5px solid #ccc;
	text-align: center;
	margin: 30px 0 0;
	float: right;
}

dl.done {
	border-top-color: #caecb6;
}

.step dl {
	float: left;
	position: relative;
	width: 160px;
	top: -5px;
	border-top: 5px solid #ccc;
}

.step dl.done .s-num {
	background-position: -46px 0;
}

dl.done .s-text {
	color: #caecb6;
}

.step dl.doing {
	border-top-color: #7abd54;
}

.step dl {
	float: left;
	position: relative;
	width: 160px;
	top: -5px;
	border-top: 5px solid #ccc;
}

.step dl {
	float: left;
	position: relative;
	width: 160px;
	top: -5px;
	border-top: 5px solid #ccc;
}

.step .doing b {
	background-position: -28px -24px;
	background-color: #ccc;
}

.step .doing b, .step .doing s, .step .first s, .step .last b {
	width: 5px;
	height: 5px;
	position: absolute;
	line-height: 0;
	font-size: 0;
	top: -5px;
	background-image:
		url(//misc.360buyimg.com/user/purchase/2.0.0/css/i/step2013.png);
	overflow: hidden;
}

.step b {
	right: 0;
}

.step .done b {
	background-position: -51px -24px;
}

.step b {
	right: 0;
}

.step dl.done .s-text {
	color: #caecb6;
}

#s-select {
	background-position: -23px 0px;
}

.step .s-num {
	position: relative;
	margin: -15px auto 0;
	color: #fff;
	font-weight: 700;
	width: 23px;
	height: 23px;
	background: url(img2/step.png) no-repeat;
	line-height: 23px;
}

.checkMessage {
	line-height: 42px;
	font-size: 16px;
	font-family: "Microsoft YaHei";
	position: relative;
	top: 67px;
	left: -275px;
}

.checkout-steps {
	background-color: #fff;
	padding: 0 20px;
	border: 1px solid #f0f0f0;
	position: relative;
	top: 66px;
	width: 948px;
	height: auto;
	height: 625px;
	left: 180px;
	border-bottom: 1px solid #f0f0f0;
}

.checkout-steps .step-tit {
	line-height: 40px;
	height: 40px;
	color: #333;
}
/*.checkout-steps .step-tit h3 {
    font-size: 14px;
    height: 40px;
    line-height: 40px;
    float: left;
    position: relative;
    left:-434px;
}*/
.shrMes {
	font-size: 14px;
	height: 40px;
	line-height: 40px;
	float: left;
	position: relative;
	left: -434px;
}

.checkout-steps .step-tit .extra-r {
	float: right;
}

.ftx-05, .ftx05 {
	color: #005ea7;
}

.checkout-steps .step-tit {
	line-height: 40px;
	color: #666;
}

.consignee-item:hover {
	border: 2px solid #e4393c;
	padding: 4px 10px;
}

.consignee-item:hover {
	border: 2px solid #e4393c;
	padding: 4px 10px;
}

.consignee-item {
	list-style: none;
	position: relative;
	border: 1px solid #ddd;
	height: 18px;
	line-height: 18px;
	padding: 5px 10px;
	width: 120px;
	text-align: center;
	cursor: pointer;
	background-color: #fff;
}

.man_message {
	height: 40px;
	padding: 0px;
	margin: 0px;
}
/*�ջ��������ַ*/
.man_nameandadr {
	height: 42px;
	padding: 0px;
	margin: 0 10px 0 20px; //
	background-color: pink;
}

.man_nameandadr_1 {
	height: 30px;
	margin: 6px 0;
	float: left;
	width: 99.8%; //
	background-color: gray;
}

.man_nameandadr_1_1 {
	border: 2px solid #e4393c;
	padding: 4px 10px;
	height: 18px;
	line-height: 18px;
	color: #666;
	width: 120px;
	text-align: center;
	position: relative;
	float: left;
}

.man_nameandadr_1_1 b {
	display: block;
	position: absolute;
	right: 0;
	bottom: 0;
	width: 12px;
	height: 12px;
	overflow: hidden;
	background: url(img2/name-right.png) no-repeat;
}

.man_nameandadr_1_2 {
	float: left;
	height: 30px;
	line-height: 30px;
}

.man_nameandadr_1_2 span {
	display: inline-block;
	margin-left: 10px;
}
/*推荐匹配自提点*/
.tuijian {
	margin-top: 10px;
	margin: 10 10px 0 20px;
	background-color: pink;
}

.hr {
	border-bottom: 1px solid #e6e6e6;
	height: 0;
	margin-bottom: 10px;
}

.tuijian_1 {
	list-style: none;
	height: 30px;
	margin: 6px 0;
	float: left;
	width: 99.8%; //
	background-color: gray;
	margin-bottom: 20px;
}

.tuijian_1_1 {
	position: relative;
	border: 1px solid #ddd;
	height: 18px;
	line-height: 18px;
	padding: 5px 10px;
	width: 120px;
	text-align: center;
	cursor: pointer;
	background-color: #fff;
	float: left;
}

.tuijian_1_1 i {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	height: 18px;
	padding: 0 0 0 22px;
	margin-top: -2px;
	vertical-align: middle;
	background: url(img2/tuijian.png) 0 0 no-repeat #fff;
}

/*推荐自提点*/
.tuijian_1_2 {
	float: left;
	height: 30px;
	line-height: 30px;
}

.tuijian_1_2 span {
	display: inline-block;
	margin-left: 10px;
}

/*支付方式*/
.checkWay {
	margin-top: 62px;
	height: 40px;
}

.checkWay h3 {
	font-size: 14px;
	height: 40px;
	line-height: 40px;
	float: left;
	color: #333;
}

.checkWay_1 {
	height: 40px;
	margin-bottom: 10px;
}

.payment-list {
	padding: 0 20px 10px;
}

.list-cont li {
	float: left;
	margin-right: 9px;
}

.list-cont div {
	float: left;
	position: relative;
	border: 1px solid #ddd;
	height: 18px;
	line-height: 18px;
	padding: 5px 24px;
	cursor: pointer;
}

ul {
	list-style: none;
	padding: 0px;
}

#item-selected {
	border: 2px solid #e4393c;
	padding: 4px 23px;
}

#item-selected b {
	display: block;
	position: absolute;
	right: 0;
	bottom: 0;
	width: 12px;
	height: 12px;
	overflow: hidden;
	background: url(img2/name-right.png) no-repeat;
}

#pay-more {
	border: none;
}

#paymore {
	float: left;
	position: relative;
	height: 18px;
	line-height: 18px;
	padding: 5px 12px;
	cursor: pointer;
	border: none;
}

#pay-more b {
	display: inline-block;
	vertical-align: middle;
	height: 10px;
	line-height: 10px;
	width: 9px;
	margin-left: 5px;
	background: url(img2/pay-i.png) no-repeat 0 0;
}

/*送货清单*/
.goods {
	
}

.goods h3 {
	font-size: 14px;
	height: 40px;
	line-height: 40px;
	float: left;
	color: #333;
}

.price-desc {
	display: inline-block;
	vertical-align: middle;
	height: 20px;
	background: url(img2/tanhao.png) 4px 0 no-repeat;
	line-height: 20px;
	margin-right: 27px;
	color: #005ea7;
	padding-left: 29px;
}

.shopping-list {
	position: relative;
	float: left;
	width: 100%;
	background: url(img2/shopping-list-bg.jpg) 0 0 repeat-y;
	margin-bottom: 10px;
}

.shopping-list.ABTest .goods-list {
	float: right;
}

.shopping-list .goods-list {
	float: left;
	width: 616px;
	background-color: #f3fbfe;
	padding: 10px 0;
}

.shopping-list .goods-tit {
	height: 24px;
	padding: 0 20px;
}

.shopping-list .goods-tit h4 {
	float: left;
	width: 49%;
	line-height: 24px;
}

.shopping-list h4 {
	color: #666;
}

.shopping-list .goods-list .goods-items {
	padding: 0 20px;
}

.shopping-list .goods-list .goods-item-extra {
	border: none;
	margin-bottom: 0;
}

.shopping-list .goods-list .goods-item {
	border-bottom: 1px solid #fff;
	padding: 10px 0;
	margin-bottom: 10px;
	color: #666;
}

.shopping-list .goods-list .goods-item .p-img {
	float: left;
	width: 80px;
	height: 80px;
	border: 1px solid #ddd;
	margin-right: 10px;
	background-color: #fff;
}

.m, .mb, .mc, .mt, .p-detail, .p-img, .p-market, .p-name, .p-price, .sm,
	.smb, .smc, .smt {
	overflow: hidden;
}

.shopping-list .goods-list .goods-item .goods-msg {
	float: left;
	width: 482px;
}

.shopping-list .goods-list .goods-item .goods-msg-gel {
	float: left;
	width: 482px;
}

.shopping-list .goods-list .goods-item .p-name {
	float: left;
	width: 49.8%;
	height: 3em;
	line-height: 1.5em;
	overflow: hidden;
	margin-bottom: 10px;
}

.m, .mb, .mc, .mt, .p-detail, .p-img, .p-market, .p-name, .p-price, .sm,
	.smb, .smc, .smt {
	overflow: hidden;
}

.shopping-list .goods-list .goods-item .p-name a {
	color: #666;
}

.shopping-list .goods-list .goods-item .p-price {
	float: right;
	width: 48.8%;
	margin: 0 0 5px;
}

.shopping-list .goods-list .goods-item .p-price .jd-price {
	width: 100px;
	text-align: right;
}

.shopping-list .goods-list .goods-item .p-price strong {
	font-family: verdana;
	color: #e4393c;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle;
}

.shopping-list .goods-list .goods-item .p-price .p-num {
	width: 70px;
	text-align: right;
}

.shopping-list .goods-list .goods-item .p-price span {
	display: inline-block;
	vertical-align: middle;
}

.shopping-list .goods-list .goods-item .p-price .p-state {
	width: 58px;
	text-align: right;
}

.shopping-list .goods-list .goods-item .p-price span {
	display: inline-block;
	vertical-align: middle;
}

.p-icon-w {
	background-position: 0 -84px;
}

.p-icon {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	width: 18px;
	height: 18px;
	margin: 0 5px 0 0;
	overflow: hidden;
	background: url(img2/purchase-icon.png) no-repeat;
	vertical-align: middle;
}

.ftx-04, .ftx04 {
	color: #ff6c00;
}

.clear, .clr {
	display: block;
	overflow: hidden;
	clear: both;
	height: 0;
	line-height: 0;
	font-size: 0;
}

img {
	border: 0;
	vertical-align: middle;
}

.p-icon-w {
	background-position: 0 -84px;
}

/*送货清单左侧*/
.shopping-list.ABTest .dis-modes {
	float: left;
}

.shopping-list .dis-modes {
	float: right;
	width: 300px;
	padding: 10px 10px 10px 20px;
}

.mode-item {
	margin-bottom: 50px;
}

.shopping-list .dis-modes .mode-item .mode-item-tit {
	height: 20px;
	line-height: 20px;
	padding: 2px 0;
}

.shopping-list .dis-modes .mode-item .mode-item-tit h4 {
	float: left;
}

.shopping-list h4 {
	color: #666;
}

.extral-r .cor-goods {
	display: inline-block;
	vertical-align: middle;
	height: 20px;
	background: url(img2/tanhao.png) 4px 0 no-repeat;
}

.shopping-list .dis-modes .mode-item .mode-item-tit .extral-r a {
	color: #005ea7;
}

/*快递*/
.kuaidi {
	border: 2px solid #e4393c;
	padding: 4px 0;
	width: 141px;
	margin-top: 32px;
	line-height: 18px;
	text-align: center;
	position: relative;
}

.kuaidi b {
	display: block;
	position: absolute;
	right: 0;
	bottom: 0;
	width: 12px;
	height: 12px;
	overflow: hidden;
	background: url(img2/name-right.png) no-repeat;
}

.mode-list .fore1 {
	float: left;
	width: 260px;
	line-height: 22px;
}

.ftx-03, .ftx03 {
	color: #999;
}

#jd_shipment_calendar_date {
	padding: 5px 0;
	line-height: 22px;
	border-bottom: 1px solid #ddd;
	width: 300px;
}

#jd_shipment_calendar_date a {
	display: inline-block;
	margin-left: 15px;
	color: #005ea7;
}

/*发票信息*/
.checkout-steps .step-tit {
	line-height: 40px;
	height: 40px;
	color: #333;
}

.invoice-cont {
	padding: 10px 20px;
	line-height: 18px;
}

.mr10 {
	margin-right: 10px;
}

.ftx-05, .ftx05 {
	color: #005ea7;
}

.step-toggle-on i {
	display: inline-block;
	margin-left: 5px;
	margin-top: 16px;
	width: 14px;
	height: 8px;
	cursor: pointer;
	background: url(img2/arrow-up.png);
}

.showMoney {
	width: 300px;
	margin-bottom: 10px;
	margin-right: 20px;
	height: 87px; //
	background-color: pink;
	position: relative;
	top: 66px;
	left: 850px;;
}

.showMoney span {
	width: 180px;
	margin-right: 20px;
	float: left;
	text-align: right;
}

.showMoney em {
	color: #e4393c;
}

.showMoney .list {
	height: 24px;
	line-height: 24px;
	overflow: hidden;
	margin-bottom: 5px;
	zoom: 1;
}

.showMoney .price {
	color: #333;
	float: left;
	width: 100px;
	text-align: right;
	font-family: verdana;
}

.freight-icon {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	width: 24px;
	height: 16px;
	vertical-align: middle;
	background: url(img2/freight-icon.png) center center no-repeat;
}

/*提交订单*/
.tijiaodingdan {
	padding: 15px 10px 15px 0;
	line-height: 20px;
	text-align: right;
	border-top: 1px solid #e6e6e6;
	width: 980px;
	color: #999;
	background-color: #f4f4f4;
	margin: 0 auto;
	margin-top: 80px;
}

.fc-consignee-info, .fc-price-info {
	margin-right: 10px;
	line-height: 25px;
}

.price-tit {
	color: #666;
}

.price-num {
	color: #e4393c;
	font-family: Verdana;
	font-weight: 700;
	font-size: 18px;
	min-width: 122px;
	_width: 122px;
	float: right;
	*float: none;
	text-align: right;
}

.mr20 {
	margin-right: 20px;
}

/*提交按钮*/
.tijiao {
	width: 990px;
	margin: 0 auto; //
	margin-top: 10px;
}

.tjbtn {
	float: right;
	position: relative;
	width: 135px;
	height: 36px;
	line-height: 36px;
	margin: 8px 10px 0 0;
	padding: 0;
	background-color: #E33A3D;
	overflow: hidden;
	color: #fff;
	font-weight: 700;
	font-size: 16px;
	font-family: arial, "Microsoft YaHei";
	display: inline-block;
	border-radius: 3px;
	cursor: pointer;
	border: 0;
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
	background-image: url(img2/duo.png);
}

#service-2014 .slogen .fore2 i {
	background-image: url(img2/kuai.png);
}

#service-2014 .slogen .fore3 i {
	background-image: url(img2/hao.png);
}

#service-2014 .slogen .fore4 i {
	background-image: url(img2/sheng.png);
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
	background-image: url(img2/xiangshang.png);
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
	background: url(img2/btn-submit.jpg) no-repeat;
	cursor: pointer;
	overflow: hidden;
}
</style>


</head>

<body>
	<!-- 最上面的导航条 -->
	<!--<div style="height: 30px;background-color: #F1F1F1;">
    			<div class="div-top">
    			<div class="div-top-sendTo">送至：北京</div>
    			
    			<div class="div-top1"><a href="#">网站导航</a></div>
    			<div class="spacer"></div>
    			<div class="div-top1"><a href="#">客户服务</a></div>
    			<div class="spacer"></div>
    			<div class="div-top1"><a href="#">关注京东</a></div>
    			<div class="spacer"></div>
    			<div class="div-top4"><a href="#">手机京东</a></div>
    			<div class="spacer"></div>
    			<div class="div-top2" style="width: 68px;"><a href="#">企业采购</a></div>
    			<div class="spacer"></div>
    			<div class="div-top1"><a href="#">京东会员</a></div>
    			<div class="spacer"></div>
    			<div class="div-top1" style="width: 86px;padding: 0px 2px;"><a href="#">我的京东</a></div>
    			<div class="spacer"></div>
    			<div class="div-top2"style="width: 68px; padding: 0px 2px;"><a href="IndexActionServlet?action=getAllOrder">我的订单</a></div>
    			<div class="spacer"></div>
    			<div class="user" style="width: 123px;text-align: left;margin-right: 10px;"><a href="//home.jd.com" target="_blank">jd_747e10435...</a>&nbsp;&nbsp;<a>退出</a></div>
    		</div>-->
	<!--在此处定义一个锚点-->
	<a name="top"></a>
	<!--最顶上的一条开始-->
	<div id="shortcut" style="line-height: 30px;">
		<div class="w">
			<ul class="fl">
				<li class="dorpdown" id="ttbar-mycity">
					<div class="dt cw-icon area-text-wrap">
						<i class="ci-right"><s>◇</s></i> 送至： <span class="area-text"
							title="北京">北京</span>
					</div>


					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="area-content-wrap">
							<div class="area-content">
								<div class="area-content-list">
									<div class="item">
										<a href="#" class="selected">北京</a>
									</div>
									<div class="item">
										<a href="#">上海</a>
									</div>
									<div class="item">
										<a href="#">天津</a>
									</div>
									<div class="item">
										<a href="">重庆</a>
									</div>
									<div class="item">
										<a href="">河北</a>
									</div>
									<div class="item">
										<a href="">山西</a>
									</div>
									<div class="item">
										<a href="">河南</a>
									</div>
									<div class="item">
										<a href="">辽宁</a>
									</div>
									<div class="item">
										<a href="">吉林</a>
									</div>
									<div class="item">
										<a href="">黑龙江</a>
									</div>
									<div class="item">
										<a href="">内蒙古</a>
									</div>
									<div class="item">
										<a href="">江苏</a>
									</div>
									<div class="item">
										<a href="">山东</a>
									</div>
									<div class="item">
										<a href="">安徽</a>
									</div>
									<div class="item">
										<a href="">浙江</a>
									</div>
									<div class="item">
										<a href="">福建</a>
									</div>
									<div class="item">
										<a href="">湖北</a>
									</div>
									<div class="item">
										<a href="">湖南</a>
									</div>
									<div class="item">
										<a href="">广东</a>
									</div>
									<div class="item">
										<a href="">广西</a>
									</div>
									<div class="item">
										<a href="">江西</a>
									</div>
									<div class="item">
										<a href="">四川</a>
									</div>
									<div class="item">
										<a href="">海南</a>
									</div>
									<div class="item">
										<a href="">贵州</a>
									</div>
									<div class="item">
										<a href="">云南</a>
									</div>
									<div class="item">
										<a href="">西藏</a>
									</div>
									<div class="item">
										<a href="">陕西</a>
									</div>
									<div class="item">
										<a href="">甘肃</a>
									</div>
									<div class="item">
										<a href="">青海</a>
									</div>
									<div class="item">
										<a href="">宁夏</a>
									</div>
									<div class="item">
										<a href="">新疆</a>
									</div>
									<div class="item">
										<a href="">台湾</a>
									</div>
									<div class="item">
										<a href="">香港</a>
									</div>
									<div class="item">
										<a href="">澳门</a>
									</div>
									<div class="item">
										<a href="">钓鱼岛</a>
									</div>
									<div class="item">
										<a href="" target="_blank">海外</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
			</ul>
			<ul class="fr">
				<li class="fore1" id="ttbar-login">
					
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
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a target="_blank" href="IndexActionServlet?action=getAllOrder">我的订单</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore3 dorpdown" id="ttbar-myjd">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i> <a target="_blank" href="">我的京东</a>
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="userinfo">
							<div class="u-pic">
								<a href=""><img src="img2/no-img_mid_.jpg" width="60"
									height="60"></a>
							</div>
							<div class="u-name u-login">
								<a href="" class="link-login">你好，请登录</a>
							</div>
							<div class="u-extra">
								<a href="" target="_blank">优惠券<span id="num-ticket"></span></a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
								<a href="" target="_blank">消息<span id="num-tip"></span></a>
							</div>
						</div>
						<div class="otherlist">
							<div class="fore1">
								<div class="item">
									<a href="" clstag="" target="_blank">待处理订单<span
										id="num-unfinishedorder"></span></a>
								</div>
								<div class="item">
									<a href="" clstag="" target="_blank">咨询回复<span
										id="num-consultation"></span></a>
								</div>
								<div class="item">
									<a href="" clstag="" target="_blank">降价商品<span
										id="num-reduction"></span></a>
								</div>
								<div class="item">
									<a href="" clstag="" target="_blank">返修退换货</a>
								</div>
							</div>
							<div class="fore2">
								<div class="item">
									<a href="" clstag="" target="_blank">我的关注</a>
								</div>
								<div class="item">
									<a href="" clstag="" target="_blank">我的京豆</a>
								</div>
								<div class="item">
									<a href="" clstag="" target="_blank">我的理财</a>
								</div>
								<div class="item baitiao">
									<a href="" target="_blank">京东白条</a>
								</div>
							</div>
						</div>
						<div class="viewlist" style="display:none;">
							<div class="smt">
								<h4>我的足迹</h4>
								<span class="extra"> <a target="_blank" href="">更多&nbsp;&gt;</a>
								</span>
							</div>
							<div class="smc"></div>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore4">
					<div class="dt">
						<a target="_blank" href="">京东会员</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore5">
					<div class="dt">
						<a target="_blank" href="">企业采购</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore6 dorpdown" id="ttbar-apps">
					<div class="dt cw-icon">
						<i class="ci-left"></i> <i class="ci-right"><s>◇</s></i> <a
							target="_blank" href="">手机京东</a>
					</div>
					<div class="dd dorpdown-layer" style="height: 187px;">

						<div class="dd-inner" id="ttbar-apps-main">
							<a href="" class="link link1" target="_blank">京东客户端</a> <a
								href="" class="link link3" target="_blank">京东钱包客户端</a> <a
								href="" class="link link4">新人专享188元大礼包</a> <a href=""
								class="link link5">扫一扫封顶立减999元</a> <a href=""
								class="applink jdapp-ios" target="_blank">京东客户端ios版</a> <a
								href="" class="applink jdapp-android" target="_blank">京东客户端android版</a>
							<a href="" class="applink jdapp-ipad" target="_blank">京东客户端ipad版</a>
							<a href="" class="applink wyapp-ios" target="_blank">京东钱包客户端ios版</a>
							<a href="" class="applink wyapp-android" target="_blank">京东钱包客户端android版</a>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore7 dorpdown" id="ttbar-atte">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>关注京东
					</div>
					<div class="dd dorpdown-layer"></div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="dd-inner" id="ttbar-atte-main">
							<img src="img2/guanzhujderweima.jpg" alt="关注京东">
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore8 dorpdown" id="ttbar-serv">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>客户服务
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="item-client">客户</div>
						<div class="item">
							<a href="" target="_blank" true="">帮助中心</a>
						</div>
						<div class="item">
							<a href="" target="_blank" true="">售后服务</a>
						</div>
						<div class="item">
							<a href="" target="_blank" true="">在线客服</a>
						</div>
						<div class="item">
							<a href="" target="_blank" true="">意见建议</a>
						</div>
						<div class="item">
							<a href="" target="_blank" true="">电话客服</a>
						</div>
						<div class="item">
							<a href="" target="_blank" true="">客服邮箱</a>
						</div>
						<div class="item-business">商户</div>
						<div class="item">
							<a href="" target="_blank" true="">京东商学院</a>
						</div>
						<div class="item">
							<a href="" target="_blank" true="">商家入驻</a>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore9 dorpdown" id="ttbar-navs"
					clstag="h|keycount|2015|01j" data-load="1">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>网站导航
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<dl class="fore1">
							<dt>特色主题</dt>
							<dd>
								<div class="item">
									<a href="//pinpaijie.jd.com/" target="_blank">品牌街</a>
								</div>
								<div class="item">
									<a href="//hao.jd.com/" target="_blank">好物100</a>
								</div>
								<div class="item">
									<a href="//xinpin.jd.com/presale.html " target="_blank">京东预售</a>
								</div>
								<div class="item">
									<a href="//zan.jd.com" target="_blank">尖er货</a>
								</div>
								<div class="item">
									<a href="//xinpin.jd.com/new.html" target="_blank">京东首发</a>
								</div>
								<div class="item">
									<a href="//tuan.jd.com/homevirtual-beijing.html"
										target="_blank">今日团购</a>
								</div>
								<div class="item">
									<a href="//youhuiquan.jd.com/" target="_blank">优惠券</a>
								</div>
								<div class="item">
									<a href="//red.jd.com/" target="_blank">闪购</a>
								</div>
								<div class="item">
									<a href="//vip.jd.com/" target="_blank">京东会员</a>
								</div>
								<div class="item">
									<a href="//miao.jd.com/" target="_blank">秒杀</a>
								</div>
								<div class="item">
									<a href="//ding.jd.com/" target="_blank">定期送</a>
								</div>
								<div class="item">
									<a href="//diy.jd.com/" target="_blank">装机大师</a>
								</div>
								<div class="item">
									<a href="//hao.jd.com/hwy.html" target="_blank">新奇特</a>
								</div>
								<div class="item">
									<a href="//try.jd.com/" target="_blank">京东试用</a>
								</div>
								<div class="item">
									<a href="//gift.jd.com/" target="_blank">礼品购</a>
								</div>
								<div class="item">
									<a href="//smarthome.jd.com/" target="_blank">智能馆</a>
								</div>
								<div class="item">
									<a href="//sale.jd.com/act/tp6KfYH7wb.html" target="_blank">玩bigger</a>
								</div>
								<div class="item">
									<a href="//sale.jd.com/act/rKhJit1fWVDR.html" target="_blank">大牌免息</a>
								</div>
								<div class="item">
									<a href="//sale.jd.com/act/3je8ZTCxNl6SusId.html "
										target="_blank">北京老字号</a>
								</div>
							</dd>
						</dl>
						<dl class="fore2">
							<dt>行业频道</dt>
							<dd>
								<div class="item">
									<a href="//channel.jd.com/fashion.html" target="_blank">服装城</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/electronic.html" target="_blank">家用电器</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/computer.html" target="_blank">电脑办公</a>
								</div>
								<div class="item">
									<a href="//shouji.jd.com/" target="_blank">手机</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/beauty.html" target="_blank">美妆馆</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/chaoshi.html" target="_blank">食品</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/digital.html" target="_blank">数码</a>
								</div>
								<div class="item">
									<a href="//baby.jd.com/" target="_blank">母婴</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/jiazhuang.html" target="_blank">家装城</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/sports.html" target="_blank">运动户外</a>
								</div>
								<div class="item">
									<a href="http://car.jd.com" target="_blank">整车</a>
								</div>
								<div class="item">
									<a href="//book.jd.com/" target="_blank">图书</a>
								</div>
								<div class="item">
									<a href="//nong.jd.com/" target="_blank">农资频道</a>
								</div>
								<div class="item">
									<a href="//smart.jd.com/" target="_blank">京东智能</a>
								</div>
							</dd>
						</dl>
						<dl class="fore3">
							<dt>生活服务</dt>
							<dd>
								<div class="item">
									<a href="//z.jd.com/" target="_blank">京东众筹</a>
								</div>
								<div class="item">
									<a href="//baitiao.jd.com/activity/third" target="_blank">白条</a>
								</div>
								<div class="item">
									<a href="https://www.jdpay.com/" target="_blank">京东钱包</a>
								</div>
								<div class="item">
									<a href="//trade.jr.jd.com/myxjk/jrbincome.action"
										target="_blank">京东小金库</a>
								</div>
								<div class="item">
									<a href="//licai.jd.com/" target="_blank">理财</a>
								</div>
								<div class="item">
									<a href="//chongzhi.jd.com/" target="_blank">话费</a>
								</div>
								<div class="item">
									<a href="//trip.jd.com/" target="_blank">旅行</a>
								</div>
								<div class="item">
									<a href="//caipiao.jd.com/" target="_blank">彩票</a>
								</div>
								<div class="item">
									<a href="//game.jd.com/" target="_blank">游戏</a>
								</div>
								<div class="item">
									<a href="//jipiao.jd.com/" target="_blank">机票酒店</a>
								</div>
								<div class="item">
									<a href="//movie.jd.com/" target="_blank">电影票</a>
								</div>
								<div class="item">
									<a href="//jiaofei.jd.com/" target="_blank">水电煤</a>
								</div>
								<div class="item">
									<a href="//daojia.jd.com/html/welcome.html" target="_blank">京东到家</a>
								</div>
								<div class="item">
									<a href="//smartcloud.jd.com/app" target="_blank">京东微联</a>
								</div>
								<div class="item">
									<a href="//try-smart.jd.com/" target="_blank">京东众测</a>
								</div>
							</dd>
						</dl>
						<dl class="fore4">
							<dt>更多精选</dt>
							<dd>
								<div class="item">
									<a href="http://group.jd.com" target="_blank">京东社区</a>
								</div>
								<div class="item">
									<a href="//mobile.jd.com/index.do" target="_blank">京东通信</a>
								</div>
								<div class="item">
									<a href="//read.jd.com/" target="_blank">在线读书</a>
								</div>
								<div class="item">
									<a href="//o.jd.com/market/index.action" target="_blank">京东E卡</a>
								</div>
								<div class="item">
									<a href="http://group.jd.com/site/20000121/20000032.htm"
										target="_blank">智能社区</a>
								</div>
								<div class="item">
									<a href="http://group.jd.com/index/20000001.htm"
										target="_blank">游戏社区</a>
								</div>
								<div class="item">
									<a href="//you.jd.com/index.html?entrance=jd_home"
										target="_blank">京友邦</a>
								</div>
								<div class="item">
									<a href="//sale.jd.com/act/wQTpIm7GnXE.html" target="_blank">卖家入驻</a>
								</div>
								<div class="item">
									<a href="//b.jd.com/" target="_blank">企业采购</a>
								</div>
								<div class="item">
									<a href="//fw.jd.com/" target="_blank">服务市场</a>
								</div>
								<div class="item">
									<a href="//zhaomu.jd.com/XCDLzm.html" target="_blank">乡村招募</a>
								</div>
								<div class="item">
									<a href="//zhaomu.jd.com/intro.html" target="_blank">校园加盟</a>
								</div>
								<div class="item">
									<a href="//channel.jd.com/office.html" target="_blank">办公生活馆</a>
								</div>
								<div class="item">
									<a href="//ipr.jd.com/" target="_blank">知识产权维权</a>
								</div>
								<div class="item">
									<a href="//en.jd.com/" target="_blank">English Site</a>
								</div>
							</dd>
						</dl>
					</div>
				</li>
			</ul>

		</div>

	</div>
	<!--最顶上的一条结束-->
	</div>
	<!-- 京东图标 -->
	<div class="logo">
		<div class="div1">
			<a href="//www.jd.com/" class="link1"><img src="img2/jd.png"
				alt="" /></a> <a href="#none" class="link2"><b></b>购物车</a>
		</div>
		<div class="step" id="#logo-step">
			<dl class="first done">
				<dt class="s-num"
					style="background-image: (img2/step.png) #fff no-repeat;">1</dt>
				<dd class="s-text">
					1.我的购物车<s></s><b></b>
				</dd>
			</dl>
			<dl class="normal doing">
				<dt class="s-num " id="s-select">2</dt>
				<dd class="s-text">
					2.填写核对订单信息<s></s><b></b>
				</dd>
			</dl>
			<dl class="normal last">
				<dt class="s-num">3</dt>
				<dd class="s-text">
					3.成功提交订单<s></s><b></b>
				</dd>
			</dl>
		</div>
	</div>
	<div class="checkMessage">填写并核对订单信息</div>
	<div class="checkout-steps">
		<div class="step-tit">
			<!-- 收货人信息 -->
			<div class="man_message">
				<h3 class="shrMes">收货人信息</h3>
				<div class="extra-r">
					<a href="#none" class="ftx-05"
						style="position: relative;left:274px;">新增收货地址</a> <input
						id="del_consignee_type" value="0" type="hidden">
				</div>
			</div>
			<!-- 收货人姓名及地址 -->
			<div class="man_nameandadr">
				<div class="man_nameandadr_1">
					<div class="man_nameandadr_1_1">
						<%=user.getUsername()%><b></b>
					</div>
					<!--地址-->
					<div class="man_nameandadr_1_2">
						<span><%=user.getUsername()%></span> 
						<span title="山东 济南市 长清区 大学科技园大学路一号山东师范大学长清校区"
							class="addr-info" limit="45"><%=user.getUsername()%> 天津 西青区 全境 中北·天软创业学院</span> <span
							class="addr-tel"> <%=user.getPhoneNumber()%></span>
					</div>
				</div>
			</div>
			<!--推荐匹配自提点-->
			<div class="tuijian">
				<div class="hr"></div>
				<div class="tuijian_1">
					<div class="tuijian_1_1">
						<i class=""></i><span>匹配自提点</span><b></b>
					</div>
					<!--推荐地址-->
					<div class="tuijian_1_2">
						<span title="大学城商业街茶语小站" class="addr-name">大学城商业街茶语小站</span><span
							title="山东省济南市长清区归德镇大学城商业街家家悦超市东门茶语小站" class="addr-info"
							limit="45">山东省济南市长清区归德镇大学城商业街家家悦超市东门茶语小站</span><span
							class="addr-tel"></span>
					</div>
				</div>
			</div>
			<div class="hr" style="position: relative;top:52px;"></div>

			<!--支付方式-->
			<div class="checkWay">
				<h3>支付方式</h3>
			</div>
			<div class="checkWay_1">
				<div class="payment-list">
					<div class="list-cont">
						<ul>
							<li>
								<div>
									<b></b>货到付款
								</div>
							</li>
							<li>
								<div>
									<b></b>微信支付
								</div>
							</li>
							<li>
								<div>
									<b></b>京东支付
								</div>
							</li>
							<li>
								<div id="item-selected">
									<b></b>在线支付
								</div>
							</li>
							<li id="pay-more">
								<div id="paymore">
									更多<b></b>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="hr"></div>

			<div class="goods">
				<div>
					<h3>送货清单</h3>
					<div class="extra-r">
						<a class="price-desc" href="#none"><i></i>&nbsp;价格说明</a> <a
							href="//cart.jd.com" class="return-edit ftx-05">返回修改购物车</a>
					</div>
				</div>

				
					<%
						List<Jdproduct> list = (List<Jdproduct>) request.getAttribute("list");
						double allsum=0;
						int shoppingCarSum=0;
						if (list != null) {
							for (Jdproduct category2 : list) {
								shoppingCarSum = category2.getProductSum();
								double price = category2.getPrice();
								double sum = price * shoppingCarSum;
								allsum = allsum + sum;
					%>
				<div class="shopping-list ABTest">
					<div class="goods-list">
						<div class="goods-tit">
							<h4 class="vendor_name_h" id="0">商家：京东自营</h4>
						</div>


						<!--单品开始-->
						<div class="goods-items">
							<div class="goods-item goods-item-extra">

								<div class="p-img">
									<a target="_blank" href="http://item.jd.com/3141248.html"><img
										src="img2/xiangshui.jpg" style="width:80px;height:80px;"></a>
								</div>
								<div class="goods-msg">
									<div class="goods-msg-gel">
										<div class="p-name">
											<a href="http://item.jd.com/3141248.html" target="_blank">
											<%=category2.getPdesc() %>
											</a>
										</div>
										<div class="p-price"
											style="position: relative;top:-11px;left: -1px;">
											<strong class="jd-price">￥<%=category2.getPrice()%></strong> 
											<span class="p-num">x<%=category2.getProductSum() %></span>
											<span id="pre-state" class="p-state" skuid="3141248">有货</span>
										</div>
									</div>
								</div>
								<div style="position: relative;top:-11px;">
									<i class="p-icon p-icon-w"></i><span class="ftx-04">7天无理由退货</span>
								</div>
								<div class="clr"></div>
							</div>
						</div>
					</div>
					<!--左侧-->
					<div class="dis-modes">
						<div class="mode-item">
							<div class="mode-item-tit">
								<h4>配送方式</h4>
								<div class="extral-r" style="float: right;">
									<a id="jd-goods-item" class="cor-goods" href="#none"
										style="padding-left: 29px;"><i></i>对应商品</a>
								</div>
								<div class="kuaidi">
									<span>京东快递<b></b></span>
								</div>
								<!--配送时间-->
								<div class="fore1" id="jd_shipment_calendar_date"
									style="margin-top: 20px;">
									<span class="ftx-03">配送时间：</span>预计&nbsp;7月22日[周五]&nbsp;09:00-15:00&nbsp;送达
									<a href="">修改</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<%
				}
			}
			%>


			<div class="hr" style="margin-top: 230px;"></div>
			<div class="step-tit">
				<h3>发票信息</h3>
				<div id="part-inv" class="invoice-cont">
					<span class="mr10"> 普通发票（电子） &nbsp; </span> <span class="mr10">
						个人&nbsp; </span> <span class="mr10"> 明细 &nbsp; </span> <a href="#none"
						class="ftx-05 invoice-edit">修改</a>
				</div>
			</div>
			<div class="hr" style="margin-top: 38px;"></div>
			<div class="step-tit step-toggle-on">
				<h3>
					使用优惠/抵用
					<i></i>
				</h3>
			</div>
		</div>
	</div>
	</div>
	<div class="showMoney" style="margin-bottom: 10px;">
		<div class="list">
			<span><em class="ftx-01"><%=shoppingCarSum %></em> 件商品，总商品金额：</span> <em class="price"
				id="warePriceId">￥<%=allsum %></em>
		</div>

		<div class="list">
			<span>返现：</span> <em class="price" id="cachBackId"> -￥0.00</em>
		</div>

		<div class="list">
			<span><i class="freight-icon"></i>运费：</span> <em class="price"
				id="freightPriceId"><font color="#000000"> ￥0.00</font></em>
		</div>
	</div>

	<!--提交订单-->
	<div class="tijiaodingdan">
		<div class="fc-price-info">
			<span class="price-tit">应付总额：</span> <span class="price-num"
				id="sumPayPriceId">￥<%=allsum %></span>
		</div>
		<div class="fc-consignee-info">
			<span class="mr20" id="sendAddr">寄送至：天津 西青区 全境 中北·天软创业学院</span> <span
				id="sendMobile">收货人：<%=user.getUsername()%> <%=user.getPhoneNumber() %></span>
		</div>
	</div>
	<div class="tijiao">
		<!--
            	作者：1791327503@qq.com
            	时间：2016-08-03
            	描述：1
            <input type="button" id="" value="提交订单" class="tjbtn"></input>-->
            <form action="IndexActionServlet?action=addOrder" method="post">
	            <button id="" value="提交订单" class="tjbtn">
					<a href="javascript:void(0)">提交订单</a><b></b>
				</button>
            </form>
		
	</div>
	<!-- 右边悬浮 -->
	<div class="w">
		<div class="backpanel-inner">

			<div class="bp-item " id="bp-survery">
				<a href="#" class="survey" target="_blank">我要反馈</a>
			</div>
			<div style="display: block;" class="bp-item " id="bp-backtop">
				<a href="#top" class="backtop">返回顶部</a>
			</div>
		</div>
	</div>


	<!-- 底部版权等 -->

	</div>

	<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/jquery.cookie.js" type="text/javascript"
		charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			//alert($(".area-text").text());
			Cookie_name = "span_name"; //定义一个cookie
			if ($.cookie(Cookie_name)) { //如果该cookie已经存在
				$(".area-text").text($.cookie(Cookie_name)); //将span内的地点改为读取到的cookie值
			}
			var $text;
			$(".area-content-list a").click(function() {
				$(".area-content-list a").removeClass("selected");
				$(this).addClass("selected");
				$text = $(this).text();
				//删除原有的cookie
				$.cookie(Cookie_name, null, {
					path : '/'
				});
				//保存新的cookie
				$.cookie(Cookie_name, $text, {
					path : '/',
					expires : 10
				});
				$(".area-text").text($.cookie(Cookie_name));
			});
		});
	
		$(function() {
			$(".tjbtn").click(function() {
				location.assign("tijiaodingdan.html");
			});
		});
	</script>
</body>
</html>
