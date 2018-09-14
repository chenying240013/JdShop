<%@ page language="java"
	import="java.util.*,com.vo.Jdproduct,com.page.PageInfo"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="ch">

<head>
<base href="<%=basePath%>">
<meta charset="UTF-8" />
<title>Document</title>
<style>
/*----------------------------------------*/
body {
	font: 12px/150% Arial, Verdana, "\5b8b\4f53";
	color: #666;
	background: #fff;
	-webkit-font-smoothing: antialiased;
}

* {
	margin: 0;
	padding: 0;
}

a:hover {
	color: #C81623;
}

a {
	color: #666;
	text-decoration: none;
}

ul {
	list-style: none;
}

img {
	border: 0;
	vertical-align: middle;
}

.w {
	width: 1210px;
	margin: 0 auto;
}

.dorpdown {
	position: relative;
}

.dorpdown-layer {
	display: none;
	position: absolute;
}

.hide {
	display: none;
}
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
	width: 1210px;
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
	z-index: 13;
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
	width: 301px;
	padding: 10px 0 10px 10px;
	top: 30px;
	background: #fff;
	border: 1px solid #ddd;
}

#shortcut li.dorpdown:hover .dorpdown-layer {
	display: block;
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
	background: url(img/jd2015img.png) 0 0 no-repeat;
}

#shortcut #ttbar-apps:hover .dt .ci-left {
	background: url(img/jd2015img.png) 0 -25px no-repeat;
}

#shortcut #ttbar-apps .dd-inner {
	position: relative;
	width: 250px;
	height: 195px;
	overflow: hidden;
	background: url(img/top/571497daNe857f9ed.png);
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
/*-----------------------------------------*/
#logo_2014 {
	position: relative;
	width: 362px;
	height: 60px;
	z-index: 12;
	float: left;
	padding: 20px 0;
}

#logo_2014 .logo {
	display: block;
	width: 270px;
	height: 60px;
	background: url(img/logo-201305.png) no-repeat 0 0;
	text-indent: -20000px;
}

#search-2014 {
	position: relative;
	z-index: 11;
	float: left;
	width: auto;
	margin-top: 25px;
}

#search-2014 .form {
	width: auto;
	height: 36px;
}

#search-2014 .text {
	float: left;
	width: 370px;
	height: 24px;
	line-height: 24px;
	color: #666;
	padding: 4px;
	margin-bottom: 4px;
	border-width: 2px 0 2px 2px;
	border-color: #B61D1D;
	border-style: solid;
	font-size: 14px;
	font-family: "微软雅黑";
	outline: 0px;
}

#search-2014 .text {
	width: 446px;
}

#search-2014 .button {
	float: left;
	width: 82px;
	height: 36px;
	background: #B61D1D;
	border: none;
	line-height: 1;
	color: #fff;
	font-size: 16px;
	font-family: "微软雅黑";
	cursor: pointer;
}

.cw-icon {
	position: relative;
	cursor: default;
	zoom: 1;
}

#settleup-2014 {
	float: right;
	z-index: 11;
	height: 36px;
	margin-top: 25px;
	margin-right: 65px;
}

#settleup-2014 .cw-icon {
	width: 75px;
	height: 34px;
	border: 1px solid #DFDFDF;
	padding: 0 28px 0 36px;
	background: #F9F9F9;
	text-align: center;
	line-height: 34px;
	width: 75px;
}

#settleup-2014 .dorpdown-layer {
	width: 300px;
	right: 0px;
	border: 1px solid #DFDFDF;
	background: #FFF;
}

#settleup-2014 .dorpdown-layer .dl-space {
	width: 139px;
	height: 4px;
	background: #FFF;
	position: absolute;
	right: 0px;
	top: -2px;
}

#settleup-2014 .nogoods {
	color: #999;
	height: 49px;
	line-height: 49px;
	overflow: hidden;
	padding-left: 30px;
}

#settleup-2014 .nogoods b {
	background-image: url("img/settleup-nogoods.png");
	float: left;
	height: 49px;
	width: 56px;
}

#settleup-2014 .ci-left {
	top: 9px;
	left: 18px;
	height: 16px;
	width: 18px;
	background: url(img/jd2015img.png) 0 -58px no-repeat;
}

#settleup-2014 .ci-right {
	top: 11px;
	right: 10px;
	height: 13px;
	width: 7px;
	overflow: hidden;
	font: 400 13px/13px simsun;
	color: #999;
}

#settleup-2014 .ci-count {
	position: absolute;
	display: inline-block;
	background: #c81623;
	top: -4px;
	right: 20px;
	line-height: 12px;
	font-size: 12px;
	padding: 1px 2px;
	color: #fff;
	border-radius: 7px 7px 7px 0;
	min-width: 12px;
	text-align: center;
}

#hotwords {
	width: 462px;
	height: 20px;
	float: left;
}

#hotwords a {
	margin-left: 10px;
	float: left;
	white-space: nowrap;
}

#hotwords a:hover {
	color: #C81623;
}

#nav_2014 {
	height: 44px;
	margin-bottom: 15px;
	border-bottom: 2px solid #B1191A;
	clear: both;
}

#nav_2014 .w {
	position: relative;
	height: 44px;
	z-index: 9;
}

#catgory-2014 {
	float: left;
	position: relative;
	width: 210px;
	height: 44px;
	overflow: visible;
	z-index: 10;
	background: #B1191A;
}

#catgory-2014 .cathead a {
	display: block;
	width: 190px;
	height: 44px;
	padding: 0 10px;
	background: #B1191A;
	font: 400 15px/44px "microsoft yahei";
	color: #FFFFFF;
	text-decoration: none;
}

#catgory-2014 .cathead i {
	position: absolute;
	top: 20px;
	right: 7px;
	height: 7px;
	overflow: hidden;
	color: #FFFFFF;
	font: 700 20px/16px simsun;
}

#catgory-2014 .cathead s {
	position: relative;
	text-decoration: none;
	top: -9px;
}

#catgory-2014 .dd {
	height: 476px;
	background: #c81623;
	margin-top: 2px;
}

#catgory-2014 .dd-inner .item {
	border-left: #2px solid #000;
	position: relative;
	height: 31px;
	color: #FFFFFF;
	z-index: 1;
}

#catgory-2014 .dd-inner .item h3 {
	position: absolute;
	height: 31px;
	padding: 0 10px;
	line-height: 31px;
	font-family: "微软雅黑";
	font-size: 14px;
	font-weight: 400;
}

#catgory-2014 .dd-inner .item a {
	display: inline-block;
	height: 31px;
	width: 190px;
	line-height: 31px;
	color: #FFFFFF;
	font-weight: 400;
}

#catgory-2014 .dd-inner .item:hover {
	background: #f7f7f7;
}

#catgory-2014 .dd-inner .item a:hover {
	color: #c81623;
}

#catgory-2014 .dd-inner i {
	position: absolute;
	z-index: 1;
	top: 9px;
	right: 14px;
	width: 8px;
	height: 14px;
	font: 400 9px/14px consolas;
}

#navtiveitems {
	float: left;
	position: relative;
	z-index: 2;
}

#navtiveitems ul li {
	float: left;
}

#navtiveitems ul li a {
	height: 44px;
	padding: 0 20px;
	text-align: center;
	color: #333;
	text-decoration: none;
	font: 400 15px/44px "microsoft yahei";
}

#navtiveitems ul li a:hover {
	color: #C81623;
}

#rec_2015 {
	height: 152px;
	width: 100%;
	margin-bottom: 10px;
}

#rec_2015 .rec-wram {
	position: relative;
	height: 152px;
	background: #f1f1f1;
}

#hotsale .hd {
	width: 30px;
	height: 60px;
	position: absolute;
	top: 0px;
	left: 20px;
	line-height: 18px;
	padding: 20px 10px 0 5px;
	text-align: center;
	color: #f60;
	font-family: "微软雅黑";
	font-size: 14px;
	background: url(img/list.icons.other.png) no-repeat;
}

#hotsale .bd {
	height: 122px;
	position: absolute;
	left: 80px;
	top: 15px;
	overflow: hidden;
}

#hotsale .bd li {
	width: 264px;
	height: 100px;
	overflow: hidden;
	float: left;
	background: #FFFFFF;
	padding: 11px;
	margin-right: 20px;
	margin-left: 10px;
	margin-bottom: 15px;
}

#hotsale .bd li .li-img {
	display: block;
	float: left;
	width: 100px;
	height: 100px;
	background: url(img/5716eb58Nf473a48f.jpg);
	padding: 0;
	margin-right: 10px;
}

#hotsale .bd li .li-txt {
	display: block;
	float: left;
	height: 40px;
	width: 144px;
	overflow: hidden;
	line-height: 20px;
	padding: 4px;
}

#hotsale .bd li .li-txt:hover {
	color: #C81623;
}

#hotsale .bd li h3 {
	padding: 5px;
	color: #e4393c;
	font-family: verdana;
	font-weight: 400;
}

#hotsale .bd li .li-btn {
	display: inline-block;
	line-height: 14px;
	font-size: 12px;
	background: #F7F7F7;
	text-align: center;
	border: 1px solid #DDD;
	padding: 4px 13px 5px;
}

#J_crumbsBar {
	margin-top: 5px;
}

.clearfix::after {
	clear: both;
	content: ".";
	display: block;
	height: 0;
	visibility: hidden;
}

.crumbs-bar {
	margin-bottom: 10px;
	position: relative;
	z-index: 5;
}

.crumbs-nav {
	height: 24px;
	line-height: 24px;
}

.crumbs-nav-item {
	float: left;
	margin-right: 8px;
}

.one-level .crumbs-link {
	font-family: "microsoft yahei";
	font-size: 18px;
	font-weight: 700;
}

.crumbs-link, .crumbs-nav-item .menu-drop, .crumbs-nav-item .selector-set
	{
	float: left;
	margin-right: 5px;
}

.crumbs-arrow {
	font-family: simsun;
	font-style: normal;
}

.menu-drop {
	cursor: pointer;
	display: inline-block;
	height: 24px;
}

.menu-drop .trigger {
	border: 1px solid #ddd;
	display: inline-block;
	height: 22px;
	line-height: 22px;
	padding: 0 4px 0 8px;
	vertical-align: top;
}

.menu-drop .trigger .curr {
	display: inline-block;
	vertical-align: top;
}

.menu-drop .menu-drop-arrow {
	background: rgba(0, 0, 0, 0) url(img/search.ele.png) no-repeat scroll
		4px 7px;
	display: inline-block;
	height: 20px;
	transition: background-position 0.15s ease-in-out 0s;
	vertical-align: top;
	width: 20px;
}

.selector {
	background: #fff none repeat scroll 0 0;
	border-top: 1px solid #ddd;
	margin-bottom: 10px;
}

.selector .s-title {
	background: #f1f1f1 none repeat scroll 0 0;
	border-bottom: 1px solid #ddd;
	height: 34px;
	line-height: 34px;
	overflow: hidden;
}

.selector .s-title h3 {
	float: left;
	padding-left: 10px;
}

.selector .s-title h3 b {
	color: #e4393c;
	margin-right: 5px;
}

.selector .s-title .st-ext {
	float: left;
	padding-left: 20px;
}

.selector .sl-wrap {
	border-bottom: 1px solid #ddd;
	line-height: 34px;
	position: relative;
}

.selector .sl-key {
	float: left;
	padding-left: 10px;
	width: 100px;
}

.selector .sl-value {
	margin-left: 110px;
	overflow: hidden;
	padding-left: 10px;
	padding-right: 130px;
}

.selector .sl-v-list {
	overflow: hidden;
	padding-top: 4px;
}

.selector .sl-v-list ul {
	float: left;
	height: 30px;
	overflow: hidden;
	position: relative;
}

.selector .sl-v-list li {
	float: left;
	height: 26px;
	line-height: 26px;
	margin-bottom: 4px;
	margin-right: 50px;
}

#sort-2014 {
	width: 100%;
}

.g2-main {
	margin-bottom: 10px;
}

.g2-main .m-list {
	width: 100%;
}

.g2-main .m-list .ml-wrap {
	float: right;
	width: 1000px;
}

.g2-main .m-list .ml-wrap .filter-line {
	position: relative;
	border: 1px solid #DDD;
	margin-bottom: 5px;
	z-index: 4;
}

.g2-main .m-list .ml-wrap .filter {
	height: 25px;
	background: #F1F1EE;
}

.g2-main .m-list .ml-wrap .f-line {
	padding: 6px 8px;
	border-bottom: 1px solid #E7E3E7;
	background: #F1F1F1;
	zoom: 1;
}

.g2-main .m-list .ml-wrap .filter .f-sort {
	float: left;
	margin-left: 24px;
}

.filter .f-sort a {
	float: left;
	padding: 0 10px;
	background: #FFFFFF;
	border: 1px solid #ccc;
	line-height: 23px;
	height: 23px;
	margin-right: -1px;
}

.f-sort a span{
	float:left;
}

.filter .f-sort a.cur {
	background: #e4393c;
	color: #FFF;
	border-color: #e4393c;
}

.filter .f-sort a:hover {
	position: relative;
	text-decoration: none;
	border-color: #e4393c;
	color: #e4393c;
}

.filter .f-sort a.cur:hover {
	color: #FFF;
}

.filter .f-pager {
	float: right;
}

.filter .f-pager .fp-txt {
	line-height: 23px;
	margin-right: 20px;
	font-family: verdana
}

.filter .f-pager .fp-txt b {
	display: inline-block;
	color: #e4393c;
	font-weight: 700;
}

.filter .f-pager .fp-txt i {
	display: inline-block;
	font-weight: 400;
	font-style: normal;
}

.filter .f-pager .fp-prev, .fp-next {
	display: inline-block;
	width: 46px;
	height: 23px;
	border: 1px solid #DDD;
	background: #FFF;
	line-height: 23px;
	font-family: "\5b8b\4f53";
	text-align: center;
	font-size: 16px;
	color: #AAA;
}

.filter .f-pager .fp-prev.disabled {
	padding: 0px;
	background: #F1F1F1;
	color: #CCC;
	cursor: default;
	pointer-events: none;
}

.filter .f-pager .fp-next.disabled {
	padding: 0px;
	background: #F1F1F1;
	color: #CCC;
	cursor: default;
	pointer-events: none;
}

.f-line .bg {
	background: #F9F9F9;
}

.good-list-v1 {
	margin-bottom: 20px;
	height: auto;
	position: relative;
	z-index: 1;
}

#plist .gl-wrap {
	float: right;
	width: 1000px;
	margin-right: -10px;
}

#plist .gl-item {
	height: 416px;
	width: 240px;
	margin-right: 10px;
	float: left;
	position: relative;
	margin-top: 10px;
	background: #33BB00;
}

#plist .gl-item .gl-i-wrap {
	width: 220px;
	position: absolute;
	z-index: 1;
	top: 0;
	left: 0;
	background: #FFFFFF;
	border: 1px solid #FFFFFF;
	padding: 15px 9px 10px;
}

#plist .gl-item .gl-i-wrap:hover {
	border: 1px solid #CCC;
}

#plist .gl-item .gl-i-wrap .p-img {
	position: relative;
	height: 220px;
	padding: 0px;
}

#plist .gl-item .gl-i-wrap .p-img a {
	display: block;
	overflow: hidden;
	position: relative;
}

#plist .gl-item .gl-i-wrap .p-img img {
	vertical-align: middle;
}

#plist .gl-item .gl-i-wrap .p-scroll {
	position: relative;
	z-index: 2;
	padding: 0;
	margin-bottom: 10px;
}

#plist .gl-item .gl-i-wrap .p-scroll .ps-wrap {
	height: 29px;
	overflow: hidden;
	zoom: 1;
}

#plist .gl-item .gl-i-wrap .p-scroll .ps-wrap ul li {
	float: left;
	width: 34px;
	height: 29px;
	text-align: left;
}

#plist .gl-item .gl-i-wrap .p-scroll .ps-wrap ul li a {
	display: inline-block;
	cursor: default;
	border: 1px solid #ddd;
	padding: 1px;
}

#plist .gl-item .gl-i-wrap .p-scroll .ps-wrap ul li a img {
	width: 25px;
	height: 25px;
	vertical-align: middle;
}

#plist .gl-item .gl-i-wrap .p-scroll .ps-wrap ul li a.plsm_curr {
	padding: 0px;
	border: 2px solid #e4393c;
}
/***********************************************************************************************/
#plist .gl-item .gl-i-wrap .p-price {
	position: relative;
	height: 22px;
	line-height: 22px;
	width: 100%;
	overflow: hidden;
	margin: 0 0 8px;
}

#plist .gl-item .gl-i-wrap .p-price strong {
	float: left;
	margin-right: 10px;
	color: #e4393c;
	font-size: 20px;
	font-family: verdana;
	font-weight: 400;
}

#plist .gl-item .gl-i-wrap .p-price strong em {
	font-size: 16px;
	font-style: normal;
}

#plist .gl-item .gl-i-wrap .p-price i {
	font-style: normal;
}

#plist .gl-item .gl-i-wrap .p-name {
	height: 40px;
	line-height: 20px;
	overflow: hidden;
	margin-bottom: 6px;
	word-break: break-all;
	word-wrap: break-word;
}

#plist .gl-item .gl-i-wrap .p-name em {
	display: block;
	height: 20px;
}

#plist .gl-item .gl-i-wrap .p-name .promo-words {
	display: none;
}

#plist .gl-item .gl-i-wrap .p-name i, em {
	font-style: normal;
	font: 14px/400;
	line-height: 20px;
	overflow: hidden;
}

#plist .gl-item .gl-i-wrap .p-name .p-attribute {
	display: block;
	width: 228px;
	height: 19px;
	margin-top: 1px;
	margin-right: -8px;
	overflow: hidden;
}

#plist .gl-item .gl-i-wrap .p-name .p-attribute .attr {
	float: left;
	height: 19px;
	padding-left: 10px;
	margin-left: 5px;
	background: url(img/bg-attr.png) no-repeat;
}

#plist .gl-item .gl-i-wrap .p-name .p-attribute b {
	display: inline-block;
	height: 17px;
	padding: 0 6px 0 3px;
	border: 1px solid #ddd;
	border-left: medium none;
	font: 12px/17px SimSun;
	color: #005aa0;
	cursor: pointer;
}

#plist .gl-item .gl-i-wrap .p-commit {
	width: 100%;
	height: 18px;
	margin-bottom: 8px;
	overflow: hidden;
}

#plist .gl-item .gl-i-wrap .p-commit strong {
	color: #a7a7a7;
	font-weight: 400;
}

#plist .gl-item .gl-i-wrap .p-commit a {
	color: #005aa0;
	font-family: verdana;
	font-weight: 700;
}

#plist .gl-item .gl-i-wrap .p-shop {
	line-height: 20px;
	height: 20px;
	overflow: hidden;
	margin-bottom: 8px;
}

#plist .gl-item .gl-i-wrap .p-shop a {
	display: block;
	float: left;
	height: 20px;
	line-height: 20px;
	color: #666;
	margin: 0 2px;
}

#plist .gl-item .gl-i-wrap .p-shop .u-jd {
	display: block;
	float: left;
	width: 54px;
	height: 18px;
	text-align: center;
	border-radius: 3px;
	font: 12px/18px SimSun;
	color: #fff;
	background: #e4393c;
}

#plist  .gl-item .p-focus {
	position: absolute;
	left: 172px;
	top: 236px;
	opacity: 0.8;
	visibility: hidden;
	transition: top 0.3s ease 0s, opacity 0.1s ease 0.1s;
	z-index: 30000;
}

#plist .gl-item .p-focus a {
	display: inline-block;
	position: relative;
	background: rgba(0, 0, 0, 0.7) none repeat scroll 0 0;
	border: medium none;
	color: #fff;
	height: 25px;
	line-height: 25px;
	padding: 0 8px 0 25px;
}

#plist .gl-item .p-focus a i {
	background: rgba(0, 0, 0, 0) url(img/search.ele.png) no-repeat scroll
		9999px 9999px;
	display: block;
	font-style: normal;
	height: 18px;
	left: 4px;
	position: absolute;
	top: 3px;
	width: 18px;
	background-position: 0 -413px;
	transition: transform 0.2s ease-in-out 0.1s;
}

.pgl-focse {
	background: rgba(0, 0, 0, 0) url(img/search.ele.png) no-repeat scroll
		9999px 9999px;
	color: #E4373C;
	display: block;
	font-style: normal;
	height: 18px;
	left: 4px;
	position: absolute;
	top: 3px;
	width: 18px;
	transition: transform 0.2s ease-in-out 0.1s;
	background-position: 0 -435px;
}

.m-list .m-aside {
	float: left;
	width: 210px;
	position: relative;
}

.m-list .m-aside .aside-bar {
	background: #fff;
	height: 600px;
}

.m-list .m-aside .aside-bar .ab-goods {
	border: 1px solid #ddd;
	margin-bottom: 10px;
}

.m-list .m-aside .aside-bar .ab-goods .mt {
	line-height: 36px;
	padding-left: 10px;
	margin-bottom: 10px;
}

.m-list .m-aside .aside-bar .ab-goods .mt h3 {
	font-family: "微软雅黑";
	font-size: 14px;
}

.m-list .m-aside .aside-bar .ab-goods .mc {
	overflow: hidden;
	zoom: 1;
}

.aside-bar .ab-goods .mc li {
	padding: 0 9px;
	margin-bottom: 20px;
}

.aside-bar .ab-goods .mc li .p-img {
	width: 100%;
	padding: 0;
	margin-bottom: 10px;
	text-align: center;
	position: relative;
}

.aside-bar .ab-goods .mc li .p-name {
	height: 36px;
	line-height: 18px;
	margin-bottom: 10px;
	overflow: hidden;
	display: block;
	word-break: break-all;
	word-wrap: break-word;
}

.aside-bar .ab-goods .mc li .p-price {
	height: 16px;
	line-height: 16px;
	margin-bottom: 4px;
	overflow: hidden;
}

.aside-bar .ab-goods .mc li .p-price .price {
	float: left;
	margin-right: 6px;
	color: #e4393c;
	font-weight: 700;
	font-family: verdana;
	font-size: 14px;
}

.aside-bar .ab-goods .mc li .p-review {
	color: #999;
}

.aside-bar .ab-goods .mc li .number {
	color: #005aa0;
}

.m-list .ml-wrap .page {
	margin-bottom: 10px;
}

.m-list .ml-wrap .p-wrap {
	padding-top: 20px;
	float: right;
}

.page .p-num a {
	color: #333;
	border: 1px solid #ddd;
}

.page .p-num .pn-next i, .page .p-num .pn-prev i {
	vertical-align: middle;
	font-style: normal;
	font-size: 16px;
	font-family: "\5b8b\4f53";
	padding: 0 5px;
	color: #aaa;
}

.page .p-num a, .page .p-num b {
	float: left;
	height: 36px;
	line-height: 36px;
	padding: 0 14px;
	margin-right: 5px;
	font-size: 14px;
	background: #F3F3F3;
}

.page .p-num .pn-break {
	color: #ccc;
	background: #FFF;
}

.page .p-num a.curr {
	background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
	border: 0 none;
	color: #e4393c;
	cursor: default;
	filter: none;
	padding: 1px 15px;
}

.page .p-skip {
	float: left;
	margin-left: 20px;
}

.page .p-skip em {
	float: left;
	line-height: 38px;
	font-size: 14px;
}

.page .p-skip .input-txt {
	float: left;
	width: 30px;
	height: 30px;
	margin: 0 3px;
	line-height: 30px;
	font-size: 14px;
	text-align: center;
}

.page .p-skip .btn {
	float: left;
	height: 27px;
	margin-left: 10px;
	font-size: 14px;
	line-height: 27px;
}

.page .p-num .disabled {
	background: #fff;
	color: #ccc;
	cursor: default;
	pointer-events: none;
}

.btn-default {
	display: inline-block;
	line-height: 14px;
	height: 14px;
	border-radius: 2px;
	background: #F7F7F7;
	text-align: center;
	text-decoration: none;
	cursor: pointer;
	border: 1px solid #DDD;
	padding: 4px 13px 5px;
	color: #666;
	background-color: #f7f7f7;
	background-repeat: repeat-x;
}

#J_promWrap_94 {
	clear: both;
}

#foot {
	width: 100%;
	clear: both;
	padding-top: 30px;
	margin-bottom: 10px;
}

#foot .m-box-s1 {
	display: block;
	width: 100%;
	border: 1px solid #ddd;
	margin-bottom: 10px;
	float: left;
}

#foot .m-box-s1 .mt {
	padding: 6px;
	height: 21px;
	line-height: 21px;
}

#foot .m-box-s1 .mt .mt-title {
	font-weight: 400;
	font-size: 14px;
	font-family: "微软雅黑";
}

#foot .m-box-s1 .mc li {
	width: 210px;
	padding: 0 9px;
	margin-bottom: 20px;
	float: left;
	margin: 0 7px;
}

#foot .m-box-s1 .mc li .p-img {
	width: 100%;
	padding: 0;
	margin-bottom: 10px;
	text-align: center;
	position: relative;
}

#foot .m-box-s1 .mc li .p-name {
	height: 36px;
	line-height: 18px;
	margin-bottom: 10px;
	overflow: hidden;
	display: block;
	word-break: break-all;
	word-wrap: break-word;
}

#foot .m-box-s1 .mc li .p-price {
	height: 16px;
	line-height: 16px;
	margin-bottom: 4px;
	overflow: hidden;
}

#foot .m-box-s1 .mc li .p-price .price {
	float: left;
	margin-right: 6px;
	color: #e4393c;
	font-weight: 700;
	font-family: verdana;
	font-size: 14px;
}

.bottom-ad .ad a {
	display: block;
	width: 100%;
}

.end .links {
	text-align: center;
	margin: 10px;
}

.end .links a {
	text-align: center;
	color: #666;
	padding-right: 5px;
	padding-left: 5px;
}

.end .links a:hover {
	color: #e4393c;
	text-decoration: underline;
}

.end .copyright {
	text-align: center;
	margin-top: 30xp;
}

.end {
	border-top: 1px solid #ddd;
	padding-top: 20px;
	padding-bottom: 50px;
}
/*-我的购物车--*/
#settleup-2014 .prompt {
	padding: 10px 15px;
}

/*价格排序按钮样式*/
.orderArrow {
	width:15px;
	height:15px;
	display:block;
	float:left;
	position:relative;
	top:3px;
	left:3px;
}

.grayDown {
	background:url("img/product/arrow/grayDown.png");
}

.grayUp{
	background:url("img/product/arrow/grayUp.png");
}

.redDown {
	background:url("img/product/arrow/redDown.png");
}

.redUp{
	background:url("img/product/arrow/redUp.png");
}

.curUp{
	background:url("img/product/arrow/curUp.png");
}

.curDown{
	background:url("img/product/arrow/curDown.png");
}







</style>

</head>

<body>
	<%
		PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	%>
	<!--最顶上的一条开始-->
	<div id="shortcut">
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
										<a href="" class="selected">北京</a>
									</div>
									<div class="item">
										<a href="">上海</a>
									</div>
									<div class="item">
										<a href="">天津</a>
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
				<li class="fore1" id="ttbar-login"><a href=""
					class="link-login">你好，请登录</a>&nbsp;&nbsp; <a
					href="../JD/JD_register.html" class="link-regist style-red">免费注册</a>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a target="_blank" href="">我的订单</a>
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
								<a href=""><img src="img/top/no-img_mid_.jpg" width="60"
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
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
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
							<img src="img/top/54c84f72Ncc1a02a2.jpg" alt="关注京东">
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

	<div id="shortcut_2013">
		<div class="w">
			<div id="logo_2014">
				<a href="#" class="logo"></a>
			</div>
			<div id="search-2014">
				<form id="categoryForm"
					action="UserProductServlet?action=getPageByQuery" method="post">
					<div class="form">


						<input type="text" class="text" id="searchCondition"
							name="searchCondition" value="${requestScope.searchCondition}" />
						<button type="submit" class="button cw-icon">
							<i></i> 搜索
						</button>

					</div>
				</form>
			</div>
			<div id="settleup-2014" class="dorpdown">
				<div class="cw-icon">
					<i class="ci-left"></i> <i class="ci-right">></i> <i
						class="ci-count" id="">0</i> <a href="">我的购物车</a>
				</div>
				<div class="dorpdown-layer">
					<div class="dl-space"></div>
					<div class="prompt">
						<div class="nogoods">
							<b></b> 购物车中还没有商品，赶紧选购吧！购物车中还没有商品，赶紧选购吧！购物车中还没有商品，赶紧选购吧！
						</div>
					</div>
				</div>
			</div>
			<div id="hotwords">
				<a href="" target="_blank" style="color: #ff0000">值得买的手机</a> <a
					href="" target="_blank">手机XX</a> <a href="" target="_blank">手机XX</a>
				<a href="" target="_blank">手机XX</a> <a href="" target="_blank">手机XX</a>
				<a href="" target="_blank">手机XX</a> <a href="" target="_blank">手机XX</a>

			</div>
		</div>
	</div>
	<div id="nav_2014">
		<div id="" class="w">
			<div id="catgory-2014" class="dorpdown" onmouseleave="hidenAll()"
				onmouseover="javascript:showAll()">
				<div class="cathead">
					<a href="">全部商品分类</a> <i id="ic-right"> <s>◇</s>
					</i>
				</div>
				<div class="dd" style="display: none;" id="all-cat">
					<div class="dd-inner">
						<div class="item">
							<h3>
								<a href="#">家用电器</a>
							</h3>
							<i>></i>
						</div>
						<div class="item">
							<h3>
								<a href="#">家用电器</a>
							</h3>
							<i>></i>
						</div>
						<div class="item">
							<h3>
								<a href="#">家用电器</a>
							</h3>
							<i>></i>
						</div>
						<div class="item">
							<h3>
								<a href="#">家用电器</a>
							</h3>
							<i>></i>
						</div>
					</div>
				</div>
			</div>
			<div id="navtiveitems">
				<ul>
					<li><a href="">首页</a></li>
					<li><a href="">服装城</a></li>
					<li><a href="">服装城</a></li>
					<li><a href="">服装城</a></li>
					<li><a href="">服装城</a></li>
					<li><a href="">服装城</a></li>
					<li><a href="">服装城</a></li>
					<li><a href="">服装城</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="rec_2015">
		<div class="w">
			<div class="rec-wram">
				<div id="hotsale">
					<div class="hd">热卖推荐</div>

					<div class="bd">
						<ul>
							<li><a href="" class="li-img"> <img width="100"
									height="100px" src="img/5716eb58Nf473a48f.jpg" />
							</a> <a class="li-txt" href=""> 魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待
									京东自营 </a>
								<h3>￥2499.00</h3> <a class="li-btn" href="#">立即抢购</a></li>
							<li><a href="" class="li-img"> <img width="100"
									height="100px" src="img/5716eb58Nf473a48f.jpg" />
							</a> <a class="li-txt" href=""> 魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待
									京东自营 </a>
								<h3>￥2499.00</h3> <a class="li-btn" href="#">立即抢购</a></li>
							<li><a href="" class="li-img"> <img width="100"
									height="100px" src="img/5716eb58Nf473a48f.jpg" />
							</a> <a class="li-txt" href=""> 魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待
									京东自营 </a>
								<h3>￥2499.00</h3> <a class="li-btn" href="#">立即抢购</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="J_crumbsBar" class="w">
		<div class="crumbs-bar clearfix">
			<div class="crumbs-nav">
				<div class="crumbs-nav-item one-level">
					<a class="crumbs-link" href="//shouji.jd.com">手机</a> <i
						class="crumbs-arrow">></i>
				</div>
				<div class="menu-drop">
					<div class="trigger">
						<span class="curr">手机通讯</span> <i class="menu-drop-arrow"></i>
					</div>
				</div>
				<i class="crumbs-arrow">></i>
				<div class="menu-drop">
					<div class="trigger">
						<span class="curr">手机</span> <i class="menu-drop-arrow"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="J_searchWrap" class="w">
		<div id="J_container" class="container">
			<div id="J_selector" class="selector">
				<div class="s-title">
					<h3>
						<b>手机</b> <em>商品筛选</em>
					</h3>
					<div class="st-ext">
						共 <span>400</span> 个商品
					</div>
				</div>
				<div id="J_selectorMark"
					class="J_selectorLine s-line J_selectorFold" data-id="100002"
					style="display: block;">
					<div class="sl-wrap">
						<div class="sl-key">
							<span>品牌：</span>
						</div>
						<div class="sl-value">
							<div class="sl-v-list">
								<ul class="J_valueList">
									<li><a href="#">小米</a></li>
									<li><a href="#">华为</a></li>
									<li><a href="#">中兴</a></li>
									<li><a href="#">IPhone5S</a></li>
									<li><a href="#">小米</a></li>
									<li><a href="#">华为</a></li>
									<li><a href="#">中兴</a></li>
									<li><a href="#">IPhone5S</a></li>
									<li><a href="#">小米</a></li>
									<li><a href="#">华为</a></li>
									<li><a href="#">华为</a></li>
									<li><a href="#">更多</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="J_selectorPrice"
					class="J_selectorLine s-line J_selectorFold" data-id="100002"
					style="display: block;">
					<div class="sl-wrap">
						<div class="sl-key">
							<span> 价格 </span>

						</div>
						<div class="sl-value">
							<div class="sl-v-list">
								<ul class="J_valueList">
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>
									<li><a href="#">100-200</a></li>

									<li><a href="#">自定义</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div id="J_selectorNet" class="J_selectorLine s-line J_selectorFold"
					data-id="100002" style="display: block;">
					<div class="sl-wrap">
						<div class="sl-key">
							<span>网络：</span>
						</div>
						<div class="sl-value">
							<div class="sl-v-list">
								<ul class="J_valueList">
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>
									<li><a href="#">移动4G/联通4G/电信4G</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div id="sort-2014">
		<div class="w">
			<div id="j_main" class="g2-main">
				<div class="m-list">
					<div class="ml-wrap">
						<div class="f-line filter ">
							<div class="f-sort">
								<a id="price" class="up"
									href="javascript:void(0)">
									<span>价格</span> 
									<b class="orderArrow"></b>
								</a>
								
								<a id="xiaoliang" class="down">
									<span>销量</span> 
									<b class="orderArrow grayDown"></b>
								</a> 
								
								
								 <a id="pingjiaSum" class="down">
									<span>评论数</span> 
									<b class="orderArrow grayDown"></b>
								 </a> 
								 <a class="down">
									<span>上架时间</span> 
									<b class="orderArrow grayDown"></b>
								 </a>
							</div>
							<div class="f-pager">
								<span class="fp-txt"> <b><%=pageInfo.getCurrentPage()%></b>
									<em>/</em> <i><%=pageInfo.getTotalPageCount()%></i>
								</span> <a id="fp-prevLink" class="fp-prev"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=pageInfo.getPreviousPage()%>">
									<</a> <a id="fp-nextLink" class="fp-next"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=pageInfo.getNextPage()%>">></a>
							</div>
						</div>
						<div class="f-line bg" style="background: #F9F9F9;">
							<div class="f-store">
								<div class="fs-cell delivery-location"></div>

							</div>
						</div>
						<div id="plist" class="good-list-v1">
							<ul class="gl-wrap">

								<%
									List<Jdproduct> list = (List<Jdproduct>)request.getAttribute("list");
																																		for(Jdproduct product:list){
								%>
								<li class="gl-item">
									<div class="gl-i-wrap">
										<div class="p-img">
											<a href="UserProductServlet?action=getOneProduct&pid=<%=product.getPid()%>"> <img width="220" height="220px"
												src="img/productImage/<%=product.getProductListLargeImage()%>" />
											</a>
										</div>
										<div class="p-scroll">
											<div class="ps-wrap">
												<ul class="ps-main">
													<li class="ps-item"><a href="#" class="plsm_curr">
															<img width="25px" height="25px"
															src="img/phones/574819cbNd280e8cf.jpg" />
													</a></li>
													<li class="ps-item"><a href="#"> <img width="25px"
															height="25px" src="img/phones/575fc822N7db81996.jpg" />
													</a></li>
													<li class="ps-item"><a href="#"> <img width="25px"
															height="25px" src="img/phones/5770fabbN70e56213.jpg" />
													</a></li>
												</ul>
											</div>
										</div>
										<div class="p-price">
											<strong> <em>￥</em> <i><%=product.getPrice()%></i>
											</strong>
										</div>
										<div class="p-name">
											<a href="product.html"> <em><%=product.getPname()%></em>
												<i class="promo-words">红米手机，上亿人次的选择！指纹识别，
													待机长/金属机身，不可思议的蜕变！买小米挚爱·不等待·就现在【更多惊喜请点击】</i>
											</a> <span class="p-attribute"> <a href="#" class="attr">
													<b>5.0-4.6英寸</b>
											</a> <a href="#" class="attr"> <b>32GB</b>
											</a> <a href="#" class="attr"> <b>64GB</b>
											</a>
											</span>
										</div>
										<div class="p-commit">
											<strong> 已有 <a href="#"><%=product.getPingjiaSum()%></a> 人评价
											</strong>
										</div>
										<div class="p-shop">

											<a href="#"> <%=product.getDianpuName()%>
											</a> <em class="u-jd">京东自营</em>
										</div>
										<div class="p-focus">
											<a class="J_focus" href="#"> <i></i> 关注
											</a>
										</div>

									</div>

								</li>

								<%
									}
								%>

							</ul>
						</div>



						<div class="page">
							<div class="p-wrap">
								<span class="p-num"> <a id="previous"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=pageInfo.getPreviousPage()%>"
									class="pn-prev"> <i><</i> <em>上一页</em>
								</a> <%
 	int totalPageCount = pageInfo.getTotalPageCount();
    								int currentPage = pageInfo.getCurrentPage();
    								
    								if(totalPageCount<=10){
    									//全部打印出来
    									for(int i=1;i<=totalPageCount;i++){
 %> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}
																																							
																																							
																																						}else{
																																							//当前页的样式为 class="curr"
																																							//打印一部分

																																							if(currentPage<=5){
																																								//从1开始打印 打印到 当前页数 + 2页
																																								for(int i=1;i<=currentPage+2;i++){
									%> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}
									%> <!--  打印..--> <b class="pn-break">...</b> <!-- 打印最后一页(即总共的页数) -->
									<a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=totalPageCount%>"><%=totalPageCount%></a>
									<%
										}else if(currentPage<totalPageCount-3){//当前页<总页数-3   8
									%> <!--始终打印10个
												先打印1  和 ..  --> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=1">1</a>
									<b class="pn-break">...</b> <%
 	//从当前页-3 开始打印  打印到当前页+2
    										for(int i=currentPage-3;i<=currentPage+2;i++){
 %> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}
									%> <!--  打印 ..  和最后一页--> <b class="pn-break">...</b> <a
									pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=totalPageCount%>"><%=totalPageCount%></a>
									<%
										}else {//8
									%> <!-- 先 打印 1 和 .. --> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=1">1</a>
									<b class="pn-break">...</b> <%
 	//再打印 当前页-3 到剩下的
    										for(int i=currentPage-3;i<=totalPageCount;i++){
 %> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}
																																							}
																																							
																																							
																																						
																																						}
									%> <a id="next"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=pageInfo.getNextPage()%>"
									class="pn-prev"> <em>下一页</em> <i>></i>
								</a>
								</span> <span class="p-skip">
									<form id="productForm2"
										action="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}"
										method="post">
										<em>共<b><%=totalPageCount%></b>页&nbsp;&nbsp;到第
										</em> <input class="input-txt" type="text" name="requestPage"
											id="requestPage" value="<%=pageInfo.getCurrentPage()%>" /><em>页</em>
										<a id="submitProductForm2Link" href="javascript:void(0)"
											class="btn btn-default">确定</a>
									</form>
								</span>

							</div>

						</div>
					</div>

					<div class="m-aside">
						<div class="aside-bar">
							<div class="ab-goods">
								<div class="mt">
									<h3>推广商品</h3>
								</div>

								<div class="mc">
									<ul>
										<li>
											<div class="p-img">
												<a href="#"> <img width="190" height="190px"
													src="img/56025e43N6b526078.jpg" />
												</a>
											</div>
											<div class="p-name">
												<a href="#"> <em>魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待
														京东自营</em>
												</a>
											</div>
											<div class="p-price">
												<strong class="price"> <span>￥555</span>
												</strong>
											</div>
											<div class="p-review">
												已有 <a href="#" class="number">25444</a> 人评价
											</div>
										</li>

									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--
    	作者：407071905@qq.com
    	时间：2016-07-14
    	描述：footer
    -->
	<div id="foot">
		<div id="J_goods_best" class="w">
			<div class="m-box-s1 rec-goods-chosen hide">
				<div class="mt">
					<strong class="mt-title">商品精选</strong>
				</div>
				<div class="mc">
					<ul>
						<li>
							<div class="p-img">
								<a href="#"> <img width="190" height="190px"
									src="img/56025e43N6b526078.jpg" />
								</a>
							</div>
							<div class="p-name">
								<a href="#"> <em>魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待 京东自营</em>
								</a>
							</div>
							<div class="p-price">
								<strong class="price"> <span>￥555</span>
								</strong>
							</div>
							<div class="p-review">
								已有 <a href="#" class="number">25444</a> 人评价
							</div>
						</li>

						<li>
							<div class="p-img">
								<a href="#"> <img width="190" height="190px"
									src="img/56025e43N6b526078.jpg" />
								</a>
							</div>
							<div class="p-name">
								<a href="#"> <em>魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待 京东自营</em>
								</a>
							</div>
							<div class="p-price">
								<strong class="price"> <span>￥555</span>
								</strong>
							</div>
							<div class="p-review">
								已有 <a href="#" class="number">25444</a> 人评价
							</div>
						</li>

						<li>
							<div class="p-img">
								<a href="#"> <img width="190" height="190px"
									src="img/56025e43N6b526078.jpg" />
								</a>
							</div>
							<div class="p-name">
								<a href="#"> <em>魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待 京东自营</em>
								</a>
							</div>
							<div class="p-price">
								<strong class="price"> <span>￥555</span>
								</strong>
							</div>
							<div class="p-review">
								已有 <a href="#" class="number">25444</a> 人评价
							</div>
						</li>

						<li>
							<div class="p-img">
								<a href="#"> <img width="190" height="190px"
									src="img/56025e43N6b526078.jpg" />
								</a>
							</div>
							<div class="p-name">
								<a href="#"> <em>魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待 京东自营</em>
								</a>
							</div>
							<div class="p-price">
								<strong class="price"> <span>￥555</span>
								</strong>
							</div>
							<div class="p-review">
								已有 <a href="#" class="number">25444</a> 人评价
							</div>
						</li>

						<li>
							<div class="p-img">
								<a href="#"> <img width="190" height="190px"
									src="img/56025e43N6b526078.jpg" />
								</a>
							</div>
							<div class="p-name">
								<a href="#"> <em>魅族 PRO5 32GB 银黑色 移动联通双4G手机 双卡双待 京东自营</em>
								</a>
							</div>
							<div class="p-price">
								<strong class="price"> <span>￥555</span>
								</strong>
							</div>
							<div class="p-review">
								已有 <a href="#" class="number">25444</a> 人评价
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<div id="J_promWrap_94" class="w bottom-ad">
			<div class="ad">
				<a href="#"> <img src="img/5657d2efN0e0c3b76.jpg" />
				</a>
			</div>
		</div>
		<div class="end w">
			<div class="links">
				<a href=""> 关于我们 </a>| <a href=""> 联系我们 </a>| <a href=""> 人才招聘 </a>|
				<a href=""> 关于我们 </a>| <a href=""> 联系我们 </a>| <a href=""> 人才招聘 </a>|
				<a href=""> 关于我们 </a>| <a href=""> 联系我们 </a>| <a href="">
					English Site </a>

			</div>
			<div class="copyright">Copyright©2004-2016 京东JD.com 版权所有</div>

		</div>
	</div>
	<script src="js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			var $dl = $("#settleup-2014>div.dorpdown-layer");
			$("#settleup-2014>div.cw-icon").hover(function() {
				$(this).css("background-color", "#FFF")
				$dl.show();
			}, function() {
				$(this).css("background-color", "#F9F9F9")
				$dl.hide();
			});

			var $plistItem = $("#plist .ps-main li");
			var $plistMIObj = $("#plist ul li .p-img a img");

			console.info($plistMIObj);
			$plistItem.mouseover(function() {
				$(this).siblings().find("a").removeClass("plsm_curr");
				$(this).find("a").addClass("plsm_curr");
				$plistMIObj.get(0).src = $(this).find("img").get(0).src;

			});

			var $pgpObj = $("#plist  .gl-item .p-focus");

			var $plggObj = $("#plist .gl-item .gl-i-wrap").hover(
					function() {

						$(this).find(".p-focus").css("visibility", "visible")
								.fadeIn(200);
					},
					function() {
						$(this).find(".p-focus").css("visibility", "hidden")
								.fadeOut(100);
						//$pgpObj.fadeOut(100);
					});


			//给排序按钮绑定mouseover事件
			$(".filter .f-sort a").mouseover(function(){
				
				if(!$(this).attr("class").contains("cur")){//不是当前使用的条件 才回悬浮变红
					$(this).find(":nth-child(2)").css("background-image","url(img/product/arrow/redDown.png)");
				}
				
				
				
				$(this).siblings(":not([class*='cur'])").find(":nth-child(2)").css("background-image","url(img/product/arrow/grayDown.png)");
			
				
				
			});
			
			
			//修改排序的状态图标
			var orderCondition = "${orderConditionObj.orderCondition}";
			
			var ascOrDesc = "${orderConditionObj.ascOrDesc}";
			
			
			
			var currentA = ".f-sort>a[id='" + orderCondition + "']";
			$(currentA).addClass("cur");
			
			if("asc"==ascOrDesc){//如果是升序
				
				$(currentA).find("b").attr("class","orderArrow curUp");//添加升序样式
				
				
			}else{
				
				$(currentA).find("b").attr("class","orderArrow curDown");//添加升序样式
				
				
				
			}
			
			
			var  lastAscOrDesc = "${orderConditionObj.ascOrDesc}";
			//给价格超链接绑定事件   第一次点击降序 第二次点击升序  第三次降序 第四次 升序  依次类推
			$("#price").click(function(){
				
				if(lastAscOrDesc=="asc"){//先降序
					
					var target = "UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&requestPage=1&orderCondition=price&ascOrDesc=desc";
					
					location.assign(target);
				}else if(lastAscOrDesc=="desc"){
				
					var target = "UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&requestPage=1&orderCondition=price&ascOrDesc=asc";
				
					location.assign(target);
				}
				
			});
			
			$("#pingjiaSum").click(function(){
				
				if(lastAscOrDesc=="asc"){//先降序
					
					var target = "UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&requestPage=1&orderCondition=pingjiaSum&ascOrDesc=desc";
					
					location.assign(target);
				}else if(lastAscOrDesc=="desc"){
					
					var target = "UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&requestPage=1&orderCondition=pingjiaSum&ascOrDesc=asc";
				
					location.assign(target);
				}
				
			});
			
		})

		function showAll() {
			var e = document.getElementById("all-cat");
			e.style.display = 'block';
		}

		function hidenAll() {
			var e = document.getElementById("all-cat");
			e.style.display = 'none';
		}

		//当前页的数字  变红色
		var $pageA = $("div.page a[pageNum]");

		$pageA.each(function() {

			if ($(this).text() ==
	<%=pageInfo.getCurrentPage()%>
		) {
				$(this).addClass("curr");
			}

		});

		//给submitProductForm2A超链接绑定事件
		$("#submitProductForm2Link").click(function() {

			//点击这个超链接 提交表单
			$("#productForm2").submit();
		});

		//第一页时 "首页"和上一页不能用

		var currentPage =
	<%=pageInfo.getCurrentPage()%>
		;
		var totalPageCount =
	<%=pageInfo.getTotalPageCount()%>
		;
		if (currentPage == 1) {
			$("#fp-prevLink").addClass("disabled");
			$("#previous").addClass("disabled");
		} else if (currentPage == totalPageCount) {
			//最后一页时 "下一页"和"尾页"不能能用
			$("#fp-nextLink").addClass("disabled");
			$("#next").addClass("disabled");

		}
	</script>
</body>

</html>