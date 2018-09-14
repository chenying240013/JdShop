<%@ page language="java" import="java.util.*,com.vo.*,com.page.PageInfo" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   	<meta charset="UTF-8">
		<title></title>

		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/swiper.min.css">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
		<link rel="shortcut icon"href="favicon.ico" >
		<link rel="stylesheet" href="css/nav.css" type="text/css">
		<style type="text/css">
			* {
				box-sizing: content-box;
			}
			html, body, ul, li, ol, dl, dd, dt, p, h1, h2, h3, h4, h5, h6,form,img {
			    margin: 0;
			    padding: 0;
			}
			
			img, input, button { 			
			    border: none;
			    padding: 0;
			    margin: 0;
			    outline-style: none;
			}
			
			ul, ol {
			    list-style: none;				
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
			
			
			img {
			    border: 0;
			    vertical-align: middle;
			}
			
			
			table {
			    border-collapse: collapse;			
			}
			
			
			body {
			    font: 12px/1.5 Microsoft YaHei,tahoma,arial,Hiragino Sans GB,\\5b8b体,sans-serif;
			    color: #666;
			    background: #fff;
			    
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
			}
			
			a {
			    color: #666;
			    text-decoration: none;
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
			
			
			.w {
			    width: 1210px;
			    margin: 0 auto;
			}
			
			.fl {
			    float: left;
			}
			
			.fr {
			    float: right;
			}
			
			.al {
			    text-align: left;
			}
			
			.ac {
			    text-align: center;
			}
			
			.ar {
			    text-align: right;
			}
			
			.hide {
			    display: none;
			}
			img {
				opacity: 1;
				transition: opacity .2s linear;
			}
			img:hover {
				opacity: 0.8;
			}
			
			/*site-nav部分start*/
			.site-nav {
				background-color: #071624;
				height: 80px;
			}
			.site-top {
				height: 80px;
				background: url(../img/site-nav1.jpg) no-repeat 50% 0;
				display: block;
			}
			.tb {
				position: relative;
			}
			.close-banner {
				position: absolute;
				top: 5px;
				right: 5px;
				width: 20px;
				height: 20px;
				background: url(../img/close-banner.png)no-repeat;
				
			}
			.close-banner:hover{
				background-position: bottom;
			}
			/*top-nav部分end*/
			.top-nav {
				height: 30px;
				background-color: #E3E4E5;
				line-height: 30px;
				
			}
			#top-right li {
				float: left;
		
			}
			.tobace {
				float: left;
				margin-right: 20px;
			} 
			.top-nav-city {
				height: 30px;
				line-height: 30px;
				padding-left: 7px;
				padding-right: 7px;
				position: relative;
				float: left;
			}
			.top-nav-city>i {
				position: absolute;
				color: red;
				top: 1px;
				left: 6px;
				font-family: iconfont;
				font-style: normal;
				-webkit-text-stroke-width: .2px;
			}
			.top-nav-city>span {
				line-height: 30px;
			}
			
			#top-right .line {
				width: 1px;
				height: 12px;
				background: #666666;
				margin: 9px 5px;
				padding: 0;
			}
			#top-right .fore {
		
				position: relative;
			}
			.fore i {
				position: absolute;
				width: 12px;
				height: 7px;
				right: -1px;
				top: 14px;
				overflow: hidden;
				font-size: 20px;
			}
			.fore s{
				position: absolute;
				top: -15px;
			}
			.top-right-regist{
				color: red;
			}
			.top-nav-jd {
				position: relative;
			}
			.top-nav-jdform {
				position: absolute;
				left: 3px;
				width: 66px;
				height: 66px;
				border: 1px solid #cfcfcf;
			}
			.top-nav-jdp {
				background: url(img/jd二维码.png)50% no-repeat;
				width: 60px;
				height: 60px;
				position: absolute;
				margin: 3px;
			}
			.top-nav-jdform ::before {
				/*尖3角*/
				content: "";
				position: absolute;
				display: block;
				top: -13px;
				left: 50%;
				margin-left: -5px;
				width: 0;
				height: 0;
				line-height: 0;
				font-size: 0;
				border-width: 5px;
				border-style: solid;
				border-color: #e4e4e4 #e4e4e4 #f6f6f6;
			}
			/*head部分start*/
			.index-head {
				height: 140px;
				background-color: white;
				border-bottom: 2px solid #F30213;
				
			}
			.he {
				position: relative;
			}
			.heads-2018 {
				height: 85px;
				margin-bottom: 10px;
			}
			.head-logo,.head-h1 {
				position: absolute;
				height: 60px;
				width: 134px;
				overflow: hidden;
				
			}
			.head-logo {
				width: 276px;
				height: 85px;
				background-color: white;
				
			}
		    .logo-a {
		
				width: 276px;
				height: 50px;
				background: url(jdchenying/listImg/jdlogo-2018.png);
				display: block;
				position: relative;
				top: 18px;
			}
			.head-search{
				height: 60px;
				position: relative;
			}
			.head-search-bgm{
				position: absolute;
				top: 25px;
				left: 320px;
				height: 35px;
				width: 550px;
			}
			.head-search>a {
				width: 19px;
				height: 15px;
				top: 26px;
				right: 400px;
				font-size: 24px;
				position: absolute;
			}
			.head-search>button {
				width: 50px;
				height: 35px;
				background-color: #F10215;
				line-height: 35px;
				right: 0;
				top: 25px;
				right: 340px;
				position: absolute;
				color: white;
				font-size: 20px;
				cursor: pointer;
			}
			.text-font{
				font-size: 14px;
				color: #989898;
				line-height: 25px;
				left: 0;
			    padding: 4px 44px 4px 4px;
			    width: 450px;
			    height: 23px;
			    border: 2px solid #F10215;
			    position: absolute;
				background-color: white;
			
			}
			.head-car {
				top: 25px;
				right: 99px;
				height: 35px;
				width: 190px;
				position: absolute;
				background-color: #F3F3F3;
			}
			.head-car:hover {
				background-color: white;
				border: 1px solid #f3f3f3;
			} 
			#head-car-icon {
				font-size: 19px;
				color: rgb(241,2,20);
				margin-left: 50px;
				line-height: 35px;
				
			}
			.head-car>a {
				font-size: 13px;
				color: rgb(241,2,20);
				margin-left: 2px;
				line-height: 35px;
				
			}
			.shopping-amount-i {
				position: absolute;
		        width: 15px;
		        height: 15px;
		        border-radius: 7px 7px 7px 0;
		        top: 2px;
		        right: 35px;
		        background: rgb(241,2,20);
		        color: #fff;
		        line-height: 15px;
		        text-align: center;
			}
			#head-hotwords {
				position: absolute;
				height: 20px;
				width: 550px;
				line-height: 20px;
				left: 320px;
				top: 65px;
			}
			#head-hotwords>a {
				float: left;
				margin-right: 10px;
				color: #999;
			}
			#head-hotwords>a:hover {
				color: #C81623;
			}
			#head-moreb {
				position: relative;
				height: 40px;
				width: 790px;
				overflow: hidden;
				top: 6px;
			}
			#my-jdgoods {
				float: left;
				height: 33px;
				width: 190px;
				background-color: #F30213;
				top: 12px;
				position: relative;
				line-height: 33px;
				font-size: 14px;
				color: white;
				text-align: center;
			}
			#my-jdgoods:hover {
				
			}
			#head-moreb-group>li {
				float: left;
				margin-top:4px ;
					
			}
			#head-moreb-group>li>a {
				
				height: 35px;
				line-height: 35px;
				font-size: 14px;
				position: relative;
				margin-left: 30px;
				color: black;
				font-weight: 700;
			}
			#head-moreb-group>li>a:hover {
				color: #C81623;
			}
			#head-moreb-group .line {
				width: 2px;
				height: 20px;
				background: #666666;
				position: relative;
				padding: 0;
				top: 10px;
				margin-left: 16px;
				margin-right: -26px;
			}
			#head-moreb-group img {
				height: 15px;
				width: 42px;
				position: absolute;
				top:-14px;
				margin-left: -19px;
			}
			
			/*head部分end*/
			
			
			/*特效*/
			.jsFortop-nav {
				position: relative;
			}
			.top-nav-city:hover .ulThemove {
				display: block;
			}
			
			.top-nav-cityd:hover .jsTN1{
				background-color: white;
				border: 1px solid #ccc;
				border-bottom: none;
				z-index: 100;
			}
			.ulThemove {
				padding: 10px;
				width: 300px;
				height: 330px;
				background-color: white;
				z-index: 2;
				position: absolute;
				border: 1px solid #ccc;
				top: 30px;
				display: none;
			}
			.top-navCitys {
				height: 24px;
				line-height: 24px;
				width: 60px;
				padding: 2px 0px;
				float: left;
				
			}
			.top-navCitys-a {
				padding: 4px 8px;
				color: #999;;
			}
			.top-navCitys-a:hover {
				background-color:#F4F4F4;
			}
			.top-navCitys-beijing {
				height: 24px;
				width: 60px;
				padding: 2px 0px;
				float: left;
				line-height: 24px;
				
			}
			.top-navCitys-abeijing {
				background-color: #f10215;
				padding: 4px 8px;
				color: white;
			}
			.top-navOverseas {
				height: 120px;
				margin: 10px 8px 10px 8px;
				position: relative;
				border-top: 1px solid #F0F3EF;
			}
			.top-OverseasUp {
				height: 24px;
				margin: 9px 0px;
			}
			.top-OverseasDown-box {
				width: 140px;
				margin-bottom: 4px;
				height: 26px;
				float: left;
				line-height: 26px;
			}
			.TOB-i {
				height: 16px;
				margin-right: 5px;
				margin-top: 4px;
				width: 16px;
				display: block;
				overflow: hidden;
				position: relative;
				float: left;
			}
			.TOB-img1 {
				position: relative;
			    left: -108px;
			    top: -151px;
			}
			.TOB-img2 {
				position: relative;
				left: -168px;
				top: -151px;
			}
			.TOB-img3 {
				position: relative;
				left: -148px;
				top: -151px;
			}
			.TOB-img4 {
				position: relative;
				left: -128px;
				top: -151px;
			}
			.TOB-img5 {
				position: relative;
				left: -108px;
				top: -168px;
			}
			.top-myjd {
				position: relative;
				z-index: 100;
				padding: 0 10px;
				height: 28px;
				line-height: 28px;
			}
			.my-jd {
				padding: 10px;
				width: 280px;
				height: 140px;
				background-color: white;
				z-index: 2;
				position: absolute;
				left: 0px;
				border: 1px solid #ccc;
				top: 30px;
				display: none;
			}
			.fore-myjd:hover .top-myjd {
				background-color: white;
				border: 1px solid #ccc;
				border-bottom: none;
				z-index: 100;
				padding-bottom: 2px;
			}
			.fore-myjd:hover .my-jd {
				display: block;
			}
			.myjd-up {
				padding-bottom: 10px;
				border-bottom: 1px solid #F0F3EF;
				width: 280px;
				height: 72px;
			}
			.myjd-down {
				height: 48px;
				width: 280px;
				padding-top: 5px;
			}
			.myjd-upbox {
				width: 140px;
				height: 24px;
				margin: 1px 0px;
				color: #999999;
				float: left;
				line-height: 24px;
			}
			
			.myjd-upbox:hover {
				color: #E33333;
				cursor: pointer;
			}
			.firm-shopboxs:hover {
				color: #E33333;
				cursor: pointer;
			}
			.firm-shop {
				padding: 10px;
				width: 134px;
				height: 48px;
				background-color: white;
				z-index: 2;
				position: absolute;
				left: 0px;
				border: 1px solid #ccc;
				top: 30px;
				display: none;
			}
			.firm-shopboxs {
				width: 67px;
				height: 24px;
				margin: 1px 0px;
				color: #999999;
				float: left;
				line-height: 24px;
			}
			.fore-firmShop:hover .top-myjd {
				background-color: white;
				border: 1px solid #ccc;
				border-bottom: none;
				z-index: 100;
				padding-bottom: 2px;
			}
			.fore-firmShop:hover .firm-shop {
				display: block;
			}
			.fore-A-Service:hover .top-myjd {
				background-color: white;
				border: 1px solid #ccc;
				border-bottom: none;
				z-index: 100;
				padding-bottom: 2px;
			}
			.fore-A-Service:hover .A-Service {
				display: block;
			}
			.A-Service {
				padding: 10px;
				width: 150px;
				height: 230px;
				background-color: white;
				z-index: 2;
				position: absolute;
				left: -102px;
				border: 1px solid #ccc;
				top: 30px;
				display: none;
			}
			.A-Serviceup {
				height: 120px;
				padding-bottom: 10px;
				border-bottom:1px solid #ccc;
			}
			.A-ServiceHead {
				width: 150px;
				height: 24px;
				line-height: 24px;
				float: left;
				font-weight: 700;
			}
			.A-ServiceBody {
				width: 75px;
				height: 24px;
				margin: 1px 0px;
				color: #999999;
				float: left;
				line-height: 24px;
			}
			.webLead {
				width: 1170px;
				height: 160px;
				padding: 10px;
				background-color: white;
				z-index: 2;
				position: absolute;
				right: -79px;
				border: 1px solid #ccc;
				top: 30px;
				display: none;	
			}
			.fore-webLead:hover .top-myjd {
				background-color: white;
				border: 1px solid #ccc;
				border-bottom: none;
				z-index: 100;
				padding-bottom: 2px;
			}
			.fore-webLead:hover .webLead {
				display: block;
			}
			.webLeadLE {
				width: 340px;
				height: 160px;
				float: left;
				padding-left: 10px;
			}
			.webLeadRI {
				border-left:1px solid #ccc;
				padding-left: 19px;
				width: 252.5px;
				height: 160px;
				float: left;
			}
			.webLeadLhead {
				width: 340px;
				height: 24px;
				line-height: 24px;
				float: left;
				font-weight: 700;
				color: black;
			}
			.webLeadBody {
				width: 84px;
				height: 24px;
				margin: 1px 0px;
				color: #999999;
				float: left;
				line-height: 24px;
			}
			.webLeadMhead {
				width: 252.5px;
				height: 24px;
				line-height: 24px;
				float: left;
				font-weight: 700;
				color: black;
			}
			/*二三级菜单*/
			.jdgood2and3 {
				height: 378px;
				padding: 50px 30px;
				width: 760px;
				z-index: 20;
				position: absolute;
				left: 102%;
				top: 0;
				background-color: white;
				border: 1px solid #ccc;
				box-shadow: 0px 2px 2px #c3c3c3;
				display: none;
			}
			.jdgood2andjd3 {
				width: 100%;
				height: auto;
				height: 20px;
				margin: 10px;
			}
			.togood2and3:hover .jdgood2and3{
				display: block;
			}
			.jdgood2 {
				width: 80px;
				
			}
			.jdgood2-text {
				text-align: center;
				line-height: 20px;
				height: 20px;
				font-weight: 700;
				float: left;
				width: 80px;
			}
			.jdgood3 {
				float: left;
				margin: 0 20px;
			}
			/*特效*/
			/*下面部分开始*/
			
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
			
			#hotsale .hd1 {
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
				background: url(jdchenying/listImg/list.icons.other.png) no-repeat;
			}
			#hotsale .hd2 {
				width: 30px;
				height: 60px;
				position: absolute;
				top: 0px;
				left: 998px;
				line-height: 18px;
				padding: 20px 10px 0 5px;
				text-align: center;
				color: #f60;
				font-family: "微软雅黑";
				font-size: 14px;
				background: url(jdchenying/listImg/list.icons.other.png) no-repeat;
			}
			#hotsale .bd {
				height: 122px;
				position: absolute;
				left: 60px;
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
				margin-left: 20px;
				margin-bottom: 15px;
			}
			#hotsale .bd2 li {
				width: 165px;
				height: 22px;
				overflow: hidden;
				line-height: 22px;
				margin-bottom: 5px;
				text-overflow: ellipsis;
				white-space: nowrap;
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
				position: relative;
				top: -15px;
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
				background:url("jdchenying/listImg/arrow/grayDown.png");
			}
			
			.grayUp{
				background:url("jdchenying/listImg/arrow/grayUp.png");
			}
			
			.redDown {
				background:url("jdchenying/listImg/arrow/redDown.png");
			}
			
			.redUp{
				background:url("jdchenying/listImg/arrow/redUp.png");
			}
			
			.curUp{
				background:url("jdchenying/listImg/arrow/curUp.png");
			}
			
			.curDown{
				background:url("jdchenying/listImg/arrow/curDown.png");
			}
			
			/*下面部分结束*/
			/*end-nav开始*/
			.end-nav {
				height: 568.5px;
			}
			.end-navhead {
				height: 42px;
				padding: 30px 0px;
				border-bottom: 1px solid black;
			}
			.end-navbody {
				height: 160px;
				border-bottom: 1px solid black;
				padding: 20px 0px;
			
				
			}
			.end-navend {
				height: 265.5px;
				text-align: center;
			}
			.end-heads {
				width: 297.5px;
				height: 42px;
				float: left;
				position: relative;
				margin: auto;
			}
			.end-heads P {
				line-height: 42px;
				font-weight: 700;
				font-size: 18px;
				text-align: center;
				color: black;
			}
			.end-headTheI{
				height: 42px;
				width: 36px;
				position: absolute;
				overflow: hidden;
				display: block;
				margin-left: 25px;
			}
			.end-headimg1 {
				position: absolute;
				top: -192px;
				display: block;
			}
			.end-headimg2 {
				position: absolute;
				top: -192px;
				left: -41px;
				display: block;
			}
			.end-headimg3 {
				position: absolute;
				top: -192px;
				left: -82px;
				display: block;
			}
			.end-headimg4 {
				position: absolute;
				top: -192px;
				left: -123px;
				display: block;
			}
			.end-navbodymain {
				width: 198px;
				height: 160px;
				float: left;
			}
			.end-navbodyI {
				height: 22px;
				margin-bottom: 5px;
				font-size: 14px;
				line-height: 22px;
				font-weight: 700;
			}
			.end-navbodyUL li{
				margin: 4px 0px;
			}
			.end-navbodyS1 {
				height: 60px;
				line-height: 20px;
				width: auto;
				margin: 10px 10px 0px 10px;
				text-align: left;
			}
			.end-navbodyS2 {
				height: 20px;
				line-height: 20px;
				width: auto;
				margin-right: 10px;
				text-align: right;
			}
			.end-navendBox1 {
				height: 18px;
				margin: 20px auto;
				line-height: 18px;
			}
			.end-navendBox2 {
				height: 22px;
			}
			.end-navendBox3 {
				height: 36.5px;
				margin: 30px auto;
				text-align: center;
			}
			.end-navendBox1 a,span {
				float: left;
			}
			.end-navendBox1 span {
				display: block;
				position: relative;
				width: 1px;
				height: 14px;
				margin: 2px 11px;
				background-color: #dedede;
			}
			.end-navendBox2 a,span {
				float: left;
			}
			.end-navendBox2 span {
				display: block;
				width: 1px;
				height: 14px;
				margin: 2px 11px;
				background-color: #dedede;
			}
			.end-navendBox2 i {
				height: 16px;
				width: 16px;
				display: block;
				overflow: hidden;
				position: relative;
				float: left;
				margin-right: 10px;
			}
			.end-navBox2-img1 {
				position: relative;
				left: -108px;
				top: -151px;
			}
			.end-navBox2-img2 {
				position: relative;
				left: -168px;
				top: -151px;
			}
			.end-navBox2-img3 {
				position: relative;
				left: -148px;
				top: -151px;
			}
			.end-navBox2-img4 {
				position: relative;
				left: -128px;
				top: -151px;
			}
			.end-navBox2-img5 {
				position: relative;
				left: -108px;
				top: -168px;
			}
			.end-navendBox3 i{
				height: 36px;
				width: 106px;
				display: block;
				overflow: hidden;
				position: relative;
				float: left;
			}
			.end-navBox3-img1 {
				position: relative;
				left: -205px;
				top: -148px;
			}
			.end-navBox3-img2 {
				position: relative;
				left: -205px;
				top: -111px;
			}
			.end-navBox3-img3 {
				position: relative;
				left: -205px;
				top: -74px;
			}
			.end-navBox3-img4 {
				position: relative;
				left: -205px;
				top: -37px;
			}
			.end-navBox3-img5 {
				position: relative;
				left: 0px;
				top: -155px;
			}
			/*end-nav结束*/
		</style>
		<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    

  </head>
  <body class="index">
  		<%
			PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
		%>
		<!--top-nav部分start-->
		<div class="top-nav">
			<div class="w jsFortop-nav">
				<ul class="fl tobejing">
					<li class="sendcity">
						<div class="tobace">
							<a href="">
								<i class="iconfont">&#xe61b;</i>
								<span>京东首页</span>
							</a>
						</div>
						<div class="top-nav-city ">
							<div class="top-nav-city jsTN1">
								<i class="iconfont">&#xe636;</i>
								<span>&nbsp;&nbsp;&nbsp;&nbsp;北京</span>
							</div>
							<div class="ulThemove">
								<div class=""style="height: 196px;">
									<div class="top-navCitys-beijing" >
										<a href="" class="top-navCitys-abeijing">北京</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">上海</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">天津</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">重庆</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">河北</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">山西</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">河南</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">辽宁</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">吉林</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">黑龙江</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">内蒙古</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">江苏</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">山东</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">安徽</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">浙江</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">福建</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">湖北</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">湖南</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">广东</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">广西</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">江西</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">四川</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">海南</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">贵州</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">云南</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">西藏</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">陕西</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">甘肃</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">青海</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">宁夏</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">新疆</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">港澳</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">台湾</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">钓鱼岛</a>
									</div>
									<div class="top-navCitys">
										<a href="" class="top-navCitys-a">海外</a>
									</div>
								</div>
								<div class="top-navOverseas">
									<div class="top-OverseasUp">
										Available Sites
									</div>
									<div class="top-OverseasDown">
										<div class="top-OverseasDown-box">
											<a href="">
												<i class="TOB-i">
													<img src="img/end-navHead.png" class="TOB-img1"/>
												</i>
												Global Site
											</a>
										</div>
										<div class="top-OverseasDown-box">
											<a href="">
												<i class="TOB-i">
													<img src="img/end-navHead.png" class="TOB-img2"/>
												</i>
												Сайт России
											</a>
										</div>
										<div class="top-OverseasDown-box">
											<a href="">
												<i class="TOB-i">
													<img src="img/end-navHead.png" class="TOB-img3"/>
												</i>
												Situs Indonesia
											</a>
										</div>
										<div class="top-OverseasDown-box">
											<a href="">
												<i class="TOB-i">
													<img src="img/end-navHead.png" class="TOB-img4"/>
												</i>
												Sitio de España
											</a>
										</div>
										<div class="top-OverseasDown-box">
											<a href="">
												<i class="TOB-i">
													<img src="img/end-navHead.png" class="TOB-img5"/>
												</i>
												เว็บไซต์ประเทศไทย
											</a>
										</div>
									</div>
								</div>
							</div>
				
						</div>
					</li>
				</ul>
				
				<ul class="fr" id="top-right">
					<li >
						<div class="top-myjd">
							<%
							Login user = (Login)session.getAttribute("user");
							if(user==null){
								//显示 "你好,请登录"	
							%>
								<a href="jsp/user/login.jsp">您好，请登录&nbsp;&nbsp;</a>
								<a href="JDDispatcherServlet?target=JD/register.jsp" class="top-right-regist" >免费注册</a>
							<%
						
							}else{
							%>
								<b>你好,<%=user.getUsername()%></b>
								<a href="LoginServlet?action=logout" class="top-right-regist">退出</a>
							<%
								}
							%>
						</div>
					</li>
					<li class="line"></li>
					<li >
						<div class="top-myjd">
							<a  href="#">我的订单</a>
						</div>
					</li>
					<li class="line"></li>
					<li class="fore fore-myjd">
						<div class="top-myjd">
							<a  href="#" class="jsTN1">我的京东</a>
							<i><s>◇</s></i>
						</div>
						<div class="my-jd">
							<div class="myjd-up">
								<div class="myjd-upbox">
									<a href="">待处理订单</a>
								</div>
								<div class="myjd-upbox">
									<a href="">消息</a>
								</div>
								<div class="myjd-upbox">
									<a href="">返修退换货</a>
								</div>
								<div class="myjd-upbox">
									<a href="">我的问答</a>
								</div>
								<div class="myjd-upbox">
									<a href="">降价商品</a>
								</div>
								<div class="myjd-upbox">
									<a href="">我的关注</a>
								</div>
							</div>
							<div class="myjd-down">
								<div class="myjd-upbox">
									<a href="">我的京豆</a>
								</div>
								<div class="myjd-upbox">
									<a href="">我的优惠券</a>
								</div>
								<div class="myjd-upbox">
									<a href="">我的白条</a>
								</div>
								<div class="myjd-upbox">
									<a href="">我的理财</a>
								</div>
							</div>
						</div>
					</li>
					<li class="line"></li>
					<li >
						<div class="top-myjd">
							<a  href="#">京东会员</a>
						</div>
					</li>
					<li class="line"></li>
					<li class="fore fore-firmShop">
						<div class="top-myjd">
							<a  href="#" class="jsTN1">企业采购</a>
							<i><s>◇</s></i>
						</div>
						<div class="firm-shop">
							<div class="firm-shopboxs">
								<a href="">企业购</a>
							</div>
							<div class="firm-shopboxs">
								<a href="">商用产品劵</a>
							</div>
							<div class="firm-shopboxs">
								<a href="">工业品</a>
							</div>
							<div class="firm-shopboxs">
								<a href="">礼品卡</a>
							</div>
						</div>
					</li>
					<li class="line"></li>
					<li class="fore fore-A-Service">
						<div class="top-myjd">
							<a  href="#" class="jsTN1">客户服务</a>
							<i><s>◇</s></i>
						</div>
						
						<div class="A-Service">
							<div class="A-Serviceup">
							<form action="servlet" method="post">
								
								<input type="submit" value=""/>
								<div class="A-ServiceHead" id="kehu">
									客户
								</div>
							
						
								<div class="A-ServiceBody" id="bz">
									<a href="">
										帮助中心
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										售后服务
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										在线客服
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										意见建议
									</a>
								</div></form>
								<div class="A-ServiceBody">
									<a href="">
										电话客服
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										客服邮箱
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										金融咨询
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										全球售客服
									</a>
								</div>
							</div>
							<div class="A-Servicedown">
								<div class="A-ServiceHead">
									商户
								</div>
								<div class="A-ServiceBody">
									<a href="">
										合作招商
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										学习中心
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										商家后台
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										京麦工作台
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										商家帮助
									</a>
								</div>
								<div class="A-ServiceBody">
									<a href="">
										规矩平台
									</a>
								</div>
							</div>
						</div>
					</li>
					<li class="line"></li>
					<li class="fore fore-webLead">
						<div class="top-myjd">
							<a  href="#" class="jsTN1">网站导航</a>
							<i><s>◇</s></i>
						</div>
						<div class="webLead">
							<div class="webLeadLE">
								<div class="webLeadLhead">
									特色主题
								</div>
								<div class="webLeadBody">
									<a href="">
										京东试用
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东金融
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										全球售
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										国际站
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东会员
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东预售
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										买什么
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										俄语站
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										装机大师
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										0元评测
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										定期送
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										港澳售
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										优惠售
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										秒杀
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										闪购
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										印尼站
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东金融科技
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										ln货推荐
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										陪伴计划
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										出海招商
									</a>
								</div>
							</div>
							<div class="webLeadRI">
								<div class="webLeadMhead">
									行业频道
								</div>
								<div class="webLeadBody">
									<a href="">
										手机
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										智能数码
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										玩3C
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										电脑办公
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										家用电器
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东智能
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										服装城
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东生鲜
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										家装城
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										母婴
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										食品
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										农贸频道
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										整车
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										图书
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东元器件
									</a>
								</div>
							</div>
							<div class="webLeadRI">
								<div class="webLeadMhead">
									生活服务
								</div>
								<div class="webLeadBody">
									<a href="">
										京东众筹
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										白条
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东金融App
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东小金库
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										理财
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										智能家电
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										话费
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										水电煤
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										彩票
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										旅行
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										机票酒店
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										电影票
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东到家
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										游戏
									</a>
								</div>
							</div>
							<div class="webLeadRI">
								<div class="webLeadMhead">
									更多精选
								</div>
								<div class="webLeadBody">
									<a href="">
										合作招商
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东通讯
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东E卡
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										企业采购
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										服务市场
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										办公生活馆
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										乡村招募
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										校园加盟
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京友邦
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										京东社区
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										游戏社区
									</a>
								</div>
								<div class="webLeadBody">
									<a href="">
										知识产权维权
									</a>
								</div>
							</div>
						</div>
					</li>
					<li class="line"></li>
					<li class="top-nav-jd">
						<div id="">
							<div class="top-myjd">
								手机京东
							</div>
						</div>
						<div class="top-nav-jdform">
							<div class="top-nav-jdp"></div>
						</div>
					</li>		
				</ul>
			</div>
		</div>

		<!--top-nav部分end-->
		
		<!--head部分start-->
		<div class="index-head">
			<div class="w he">
				<div class="heads-2018">
					<div class="head-logo">
						<div class="head-h1">
							<a href="" class="logo-a"></a>
						</div>
					</div>
					<div class="head-search">
						<div class="head-search-bgm">
							<input type="text" class="text-font" value="闪迪U盘" />
						</div>
						<a href=""class="iconfont">&#xe61f;</a>
						<button class="button">
							<i class="iconfont" style="font-size: 25px; position: absolute;top: 2px;right: 13px; ">&#xe616;</i>
						</button>
					</div>
					<div class="head-car">
						<i class="iconfont" id="head-car-icon">&#xe620;</i>
						<a href="" class="head-car-a" >我的购物车</a>
						<i class="shopping-amount-i">0</i>
					</div>
					<div id="head-hotwords">
						<a class="style-red" href="" style="color: #f10215; width: 70px;">抢百元空调</a>
						<a href="">0元试用</a>
						<a href="">红魔</a>
						<a href="">每150-50</a>
						<a href="">奶爸盛典</a>
						<a href="">百元空调</a>
						<a href="">凉爽清仓</a>
						<a href="">满99减50</a>
						<a href="">卫浴1元</a>
					</div>
					
				
			    </div>
			    <div id="my-jdgoods">
			    	<div class="alljdgoods">
			    		全部商品分类
			    	</div>
			    </div>
			    <div id="head-moreb">
					<ul id="head-moreb-group">
						<li>
							<a href="">秒杀</a>
						</li>
						<li>
							<a href="">优惠券</a>
						</li>
						<li>
							<a href="">PLUS会员</a>
						</li>
						<li>
							<a href="">闪购</a>
						</li>
						<li class="line"></li>
						<li>
							<a href="">拍卖</a>
						</li>
						<li>
							<a href="">京东服饰</a>
						</li>
						<li>
							<a href="">京东超市</a>
						</li>
						<li>
							<a href="">生鲜</a>
						</li>
						<li class="line"></li>
						<li>
							<a href="">
								全球购
								<img src="img/满减.png"/>
							</a>
						</li>
						<li>
							<a href="">京东金融</a>
						</li>
					</ul>
				</div>
				<div id="slogo">
						
				</div>			
			</div>		
		</div>

		<!--search部分end-->
		
		<!--中间部分开始-->
		<div id="rec_2015">
			<div class="w">
				<div class="rec-wram">
					<div id="hotsale">
						<div class="hd1">全球热卖</div>
						<div class="hd2">促销活动</div>
						<div class="bd">
							<ul>
								<li>
									<a href="" class="li-img" title="华为（HUAWEI） P20 AI智慧全面屏  4G智能手机 p10升级 宝石蓝 全网通6G+128G"> 
										<img width="100" height="100px" src="jdchenying/listImg/phone/huaweiP20.jpg" />
									</a> 
									<a class="li-txt" href=""> 
											华为（HUAWEI） P20 AI智慧全面屏  4G智能手机 p10升级 宝石蓝 全网通6G+128G
									</a>
									<h3>￥2499.00</h3> 
									<a class="li-btn" href="#">立即抢购</a>
									</li>
								<li>
									<a href="" class="li-img" title="黑莓（BlackBerry）KEY2标准版 6GB+64GB双卡双待 4G全网通手机 黑色 移动联通电信手机"> 
										<img width="100"height="100px" src="jdchenying/listImg/phone/heimeiK2.jpg" />
									</a>
									<a class="li-txt" href="">
									  		黑莓（BlackBerry）KEY2标准版 6GB+64GB双卡双待 4G全网通手机 黑色 移动联通电信手机
									</a>
									<h3>￥3999.00</h3>
									<a class="li-btn" href="#">立即抢购</a>
								</li>
								<li><a href="" class="li-img" title="小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待"> 
									<img width="100"height="100px" src="jdchenying/listImg/phone/xiaomi8.jpg" />
									</a> 
									<a class="li-txt" href="">小米8 全面屏游戏智能手机 6GB+64GB 黑色 全网通4G 双卡双待</a>
									<h3>￥2599.00</h3> 
									<a class="li-btn" href="#">立即抢购</a>
								</li>
	
							</ul>
							
						</div>
						<div class="bd2" style="float: right;padding-top: 10px;">
							<ul >
								<li >
									·
									<a href="">2018下半年开学季大促销</a>
								</li>
								<li>
									·
									<a href="">新自由幻想，浪漫约"惠"</a>
								</li>
								<li>
									·
									<a href="">狂欢世界杯，12期免息</a>
								</li>
								<li>
									·
									<a href="">全球购3C数码专场</a>
								</li>
								<li>
									·
									<a href="">足不出户，吃遍全球</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--中间部分结束-->
		
		
		<!--商品详情列表-->
		<div id="J_crumbsBar" class="w">
			<div class="crumbs-bar clearfix">
				<div class="crumbs-nav">
					<div class="crumbs-nav-item one-level">
						<a class="crumbs-link" href="//shouji.jd.com">${jdgood.jname}</a> <i class="crumbs-arrow">></i>
					</div>
					<div class="menu-drop">
						<div class="trigger">
							<span class="curr">${jdgood2.j2name}</span> <i class="menu-drop-arrow"></i>
						</div>
					</div>
					<i class="crumbs-arrow">!!!</i>
					
				</div>
			</div>
		</div>
		<div id="J_searchWrap" class="w">
			<div id="J_container" class="container">
				<div id="J_selector" class="selector">
					<div class="s-title">
						<h3>
						<b>${jdgood2.j2name}</b> <em>商品展示</em>
					</h3>
						<div class="st-ext">
							共
							<i>${totalRecordSum}</i>个商品
						</div>
					</div>
					<div id="J_selectorMark" class="J_selectorLine s-line J_selectorFold" data-id="100002" style="display: block;">
						<div class="sl-wrap">
							<div class="sl-key">
								<span>品牌：</span>
							</div>
							<div class="sl-value">
								<div class="sl-v-list">
									<ul class="J_valueList">
									<c:forEach items="${jdgood3s}" var="jdgood3s">
										<li>
											<a href="#">${jdgood3s.j3name }</a>
										</li>
									</c:forEach>	

									</ul>
								</div>
							</div>
						</div>
					</div>
					<div id="J_selectorPrice" class="J_selectorLine s-line J_selectorFold" data-id="100002" style="display: block;">
						<div class="sl-wrap">
							<div class="sl-key">
								<span> 价格 </span>

							</div>
							<div class="sl-value">
								<div class="sl-v-list">
									<ul class="J_valueList">
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>
										<li>
											<a href="#">100-200</a>
										</li>

										<li>
											<a href="#">自定义</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div id="J_selectorNet" class="J_selectorLine s-line J_selectorFold" data-id="100002" style="display: block;">
						<div class="sl-wrap">
							<div class="sl-key">
								<span>网络：</span>
							</div>
							<div class="sl-value">
								<div class="sl-v-list">
									<ul class="J_valueList">
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>
										<li>
											<a href="#">移动4G/联通4G/电信4G</a>
										</li>

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
								<a id="price" class="up" href="javascript:void(0)"> <span>价格</span>
									<b class="orderArrow"></b>
								</a> <a id="xiaoliang" class="down"> <span>销量</span> <b
									class="orderArrow grayDown"></b>
								</a> <a id="pingjiaSum" class="down"> <span>评论数</span> <b
									class="orderArrow grayDown"></b>
								</a> <a class="down"> <span>上架时间</span> <b
									class="orderArrow grayDown"></b>
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
									List<Jdproduct> list = (List<Jdproduct>) request.getAttribute("list");
									for (Jdproduct product : list) {
								%>
								<li class="gl-item">
									<div class="gl-i-wrap">
										<div class="p-img">
											<a
												href="UserProductServlet?action=getOneProduct&pid=<%=product.getPid()%>">
												<img width="220" height="220px"
												src="MyJdImg/<%=product.getProductListLargeImage()%>" />
											</a>
										</div>
										<div class="p-scroll">
											<div class="ps-wrap">
												<ul class="ps-main">
													<li class="ps-item"><a href="#" class="plsm_curr">
															<img width="25px" height="25px"
															src="MyJdImg/<%=product.getProductListSmallImage1()%>" />
													</a></li>
													<li class="ps-item"><a href="#"> <img width="25px"
															height="25px" src="MyJdImg/<%=product.getProductListSmallImage2()%>" />
													</a></li>
													<li class="ps-item"><a href="#"> <img width="25px"
															height="25px" src="MyJdImg/<%=product.getProductListSmallImage3()%>" />
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
											<strong> 已有 <a href="#"><%=product.getPingjiaSum()%></a>
												人评价
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
								<span class="p-num">
								 <a id="previous"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=pageInfo.getPreviousPage()%>"
									class="pn-prev"> <i><</i> <em>上一页</em>
								</a> <%
									 	int totalPageCount = pageInfo.getTotalPageCount();
									 	int currentPage = pageInfo.getCurrentPage();

 										if (totalPageCount <= 10) {
 										//全部打印出来
									 	for (int i = 1; i <= totalPageCount; i++) {
									 %>
									  <a pageNum="pageNum"href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}

										} else {
											//当前页的样式为 class="curr"
											//打印一部分

											if (currentPage <= 5) {
												//从1开始打印 打印到 当前页数 + 2页
												for (int i = 1; i <= currentPage + 2; i++) {
									%> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}
									%> <!--  打印..--> <b class="pn-break">...</b> <!-- 打印最后一页(即总共的页数) -->
									<a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=totalPageCount%>"><%=totalPageCount%></a>
									<%
										} else if (currentPage < totalPageCount - 3) {//当前页<总页数-3   8
									%> <!--始终打印10个
												先打印1  和 ..  --> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=1">1</a>
									<b class="pn-break">...</b> <%
 	//从当前页-3 开始打印  打印到当前页+2
						 			for (int i = currentPage - 3; i <= currentPage + 2; i++) {
									 %> 
						 			<a pageNum="pageNum"href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=i%>"><%=i%></a>
									<%
										}
									%> <!--  打印 ..  和最后一页--> <b class="pn-break">...</b> <a
									pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=<%=totalPageCount%>"><%=totalPageCount%></a>
									<%
										} else {//8
									%> <!-- 先 打印 1 和 .. --> <a pageNum="pageNum"
									href="UserProductServlet?action=getPageByQuery&cid=${requestScope.cid}&searchCondition=${requestScope.searchCondition}&orderCondition=${orderConditionObj.orderCondition}&ascOrDesc=${orderConditionObj.ascOrDesc}&requestPage=1">1</a>
									<b class="pn-break">...</b>
									 <%
 	//再打印 当前页-3 到剩下的
									 for (int i = currentPage - 3; i <= totalPageCount; i++) {
									 %> 
									 <a pageNum="pageNum"
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
	    	作者：chenying2014@qq.com
	    	时间：2018-08-30
	    	
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
									<a href="#"> <img width="190" height="190px" src="img/56025e43N6b526078.jpg" />
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
									已有
									<a href="#" class="number">25444</a> 人评价
								</div>
							</li>

							<li>
								<div class="p-img">
									<a href="#"> <img width="190" height="190px" src="img/56025e43N6b526078.jpg" />
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
									已有
									<a href="#" class="number">25444</a> 人评价
								</div>
							</li>

							<li>
								<div class="p-img">
									<a href="#"> <img width="190" height="190px" src="img/56025e43N6b526078.jpg" />
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
									已有
									<a href="#" class="number">25444</a> 人评价
								</div>
							</li>

							<li>
								<div class="p-img">
									<a href="#"> <img width="190" height="190px" src="img/56025e43N6b526078.jpg" />
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
									已有
									<a href="#" class="number">25444</a> 人评价
								</div>
							</li>

							<li>
								<div class="p-img">
									<a href="#"> <img width="190" height="190px" src="img/56025e43N6b526078.jpg" />
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
									已有
									<a href="#" class="number">25444</a> 人评价
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
			<div class="end-nav">
			<div class="end-navhead">
				<div class="w">
					<div class="end-heads">
					<i class="end-headTheI">
						<img src="img/end-navHead.png" class="end-headimg1"/>
					</i>
					<p>品类齐全，轻松购物</p>
					</div>
					<div class="end-heads">
						<i class="end-headTheI">
							<img src="img/end-navHead.png" class="end-headimg2"/>
						</i>
						<p>多仓直发，急速配送</p>
					</div>
					<div class="end-heads">
						<i class="end-headTheI">
							<img src="img/end-navHead.png" class="end-headimg3"/>
						</i>
						<p>正品行货，精致服务</p>
					</div>
					<div class="end-heads">
						<i class="end-headTheI">
							<img src="img/end-navHead.png" class="end-headimg4"/>
						</i>
						<p>天天低价，畅选无忧</p>
					</div>
				</div>
			</div>
			<div class="w">
				<div class="end-navbody">
					<div class="end-navbodymain">
						<p class="end-navbodyI">购物指南</p>
						<ul class="end-navbodyUL">
							<a href="">
								<li>购物流程</li>
							</a>
							<a href="">
								<li>会员介绍</li>
							</a>
							<a href="">
								<li>生活旅行</li>
							</a>
							<a href="">
								<li>常见问题</li>
							</a>
							<a href="">
								<li>大家电</li>
							</a>
							<a href="">
								<li>联系客服</li>
							</a>					
						</ul>
					</div>
					<div class="end-navbodymain">
						<p class="end-navbodyI">购物指南</p>
						<ul class="end-navbodyUL">
							<a href="">
								<li>上门自提</li>
							</a>
							<a href="">
								<li>211限时达</li>
							</a>
							<a href="">
								<li>配送服务查询</li>
							</a>
							<a href="">
								<li>配送费收取标准</li>
							</a>
							<a href="">
								<li>海外配送</li>
							</a>	
						</ul>
					</div>
					<div class="end-navbodymain">
						<p class="end-navbodyI">支付方式</p>
						<ul class="end-navbodyUL">
							<a href="">
								<li>货到付款</li>
							</a>
							<a href="">
								<li>在线支付</li>
							</a>
							<a href="">
								<li>分期付款</li>
							</a>
							<a href="">
								<li>邮局汇款</li>
							</a>
							<a href="">
								<li>公司转账</li>
							</a>			
						</ul>
					</div>
					<div class="end-navbodymain">
						<p class="end-navbodyI">售后服务</p>
						<ul class="end-navbodyUL">
							<a href="">
								<li>售后政策</li>
							</a>
							<a href="">
								<li>价格保护</li>
							</a>
							<a href="">
								<li>退款说明</li>
							</a>
							<a href="">
								<li>返修/退货款</li>
							</a>
							<a href="">
								<li>取消订单</li>
							</a>			
						</ul>
					</div>
					<div class="end-navbodymain">
						<p class="end-navbodyI">特色服务</p>
						<ul class="end-navbodyUL">
							<a href="">
								<li>夺宝岛</li>
							</a>
							<a href="">
								<li>DIY装机</li>
							</a>
							<a href="">
								<li>延保服务</li>
							</a>
							<a href="">
								<li>京东E卡</li>
							</a>
							<a href="">
								<li>京东通信</li>
							</a>
							<a href="">
								<li>京东JD+</li>
							</a>s					
						</ul>
					</div>
					<div class="end-navbodymain" style="overflow: hidden;position: relative;text-align: center;">
						<p class="end-navbodyI">京东自营覆盖区县</p>
						<img src="img/end-navHead.png"/ style="position: absolute; left: -7px; top: 5px;">
						<div class="end-navbodyS1">京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</div>
						<div class="end-navbodyS2">
							查看详情
							<i class="iconfont" style="position: relative;right: 4px;top: 2px;">&#xe617;</i>
						</div>
					</div>
				</div>
				<div class="end-navend">
					<div class="end-navendBox1">
						<div class="" style="margin: 0px auto; width: 1090px;height: 18px;">
							<a href="">关于我们</a>
							<span></span>
							<a href="">联系我们</a>
							<span></span>
							<a href="">联系客服</a>
							<span></span>
							<a href="">合作招商</a>
							<span></span>
							<a href="">商家帮助</a>
							<span></span>
							<a href="">营销中心</a>
							<span></span>
							<a href="">手机京东</a>
							<span></span>
							<a href="">友情链接</a>
							<span></span>
							<a href="">销售联盟</a>
							<span></span>
							<a href="">京东社区</a>
							<span></span>
							<a href="">风险监测</a>
							<span></span>
							<a href="">隐私政策</a>
							<span></span>
							<a href="">京东公益</a>
							<span></span>
							<a href="">English Site</a>
							<span></span>
							<a href="">Media & IR</a>
						</div>
					</div>
					<div class="" style="margin: 0px auto; width: 800px;height: 22px;text-align: center;">
						<div class="end-navendBox2">
							<a href="">京东网安备11000002000088号</a>
							<span></span>
							<a href="">京ICP证070359号</a>
							<span></span>
							<a href="">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>
							<span></span>
							<a href="">新出发京零 字第大120007号</a>
						</div>
					</div>
					<div class="" style="margin: 0px auto; width: 865px;height: 22px;">
						<div class="end-navendBox2">
							<a href="">互联网出版许可证编号新出网证(京)字150号</a>
							<span></span>
							<a href="">出版物经营许可证</a>
							<span></span>
							<a href="">网络文化经营许可证京网文[2014]2148-348号</a>
							<span></span>
							<a href="">违法和不良信息举报电话：4006561155</a>
						</div>
					</div>
					<div class="" style="margin: 0px auto; width: 740px;height: 22px;">
						<div class="end-navendBox2">
							<a href="">Copyright © 2004 - 2018  京东JD.com 版权所有</a>
							<span></span>
							<a href="">消费者维权热线：4006067733</a>
							<span></span>
							<a href="">经营证照</a>
							<span></span>
							<a href="">(京)网械平台备字(2018)第00003号</a>
						</div>
					</div>
					<div class="" style="margin: 0px auto; width: 635px;height: 22px;">
						<div class="end-navendBox2">
							<i>
								<img src="img/end-navHead.png" class="end-navBox2-img1"/>
							</i>
							<a href="">Global Site</a>
							<span></span>
							<i>
								<img src="img/end-navHead.png" class="end-navBox2-img2"/>
							</i>
							<a href="">Сайт России</a>
							<span></span>
							<i>
								<img src="img/end-navHead.png" class="end-navBox2-img3"/>
							</i>
							<a href="">Situs Indonesia</a>
							<span></span>
							<i>
								<img src="img/end-navHead.png" class="end-navBox2-img4"/>
							</i>
							<a href="">Sitio de España</a>
							<span></span>
							<i>
								<img src="img/end-navHead.png" class="end-navBox2-img5"/>
							</i>
							<a href="">เว็บไซต์ประเทศไทย</a>
						</div>
					</div>
					<div class="" style="margin: 0px auto; width: 200px;height: 22px;">
						<div class="end-navendBox2">
							<a href="">京东旗下网站：京东钱包</a>
							<span></span>
							<a href="">京东云</a>
						</div>
					</div>
					
					<div class="end-navendBox3">
						<div class="" style="margin: 0px auto; width: 535px;height: 22px;">
							<i>
								<img src="img/end-navHead.png" class="end-navBox3-img1"/>
							</i>
							<i>
								<img src="img/end-navHead.png" class="end-navBox3-img2"/>
							</i>
							<i>
								<img src="img/end-navHead.png" class="end-navBox3-img3"/>
							</i>
							<i>
								<img src="img/end-navHead.png" class="end-navBox3-img4"/>
							</i>
							<i>
								<img src="img/end-navHead.png" class="end-navBox3-img5"/>
							</i>
						</div>
					</div>
				</div>
			</div>
			
			<!--右侧搜索开始-->
			<div class="J-global-toolbar">
				<div class="toolbar-wrap J-wrap">
					<div class="toolbar">
						<div class="toolbar-panels J-panel">
							<div style="visibility: hidden;" class="J-content toolbar-panel tbar-panel-cart toolbar-animate-out">
								<h3 class="tbar-panel-header J-panel-header">
									<a href="" class="title"><i></i><em class="title">购物车</em></a>
									<span class="close-panel J-close"></span>
								</h3>
								<div class="tbar-panel-main">
									<div class="tbar-panel-content J-panel-content">
										<div id="J-cart-tips" class="tbar-tipbox hide">
											<div class="tip-inner">
												<span class="tip-text">还没有登录，登录后商品将被保存</span>
												<a href="#none" class="tip-btn J-login">登录</a>
											</div>
										</div>
										<div id="J-cart-render">
											<div class="tbar-cart-list">
												<div class="tbar-cart-item" >
													<div class="jtc-item-promo">
														<em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
														<div class="promo-text">已购满600元，您可领赠品</div>
													</div>
													<div class="jtc-item-goods">
														<span class="p-img"><a href="#" target="_blank"><img src="http://img14.360buyimg.com/n5/g10/M00/00/14/rBEQWFEAilIIAAAAAACGm9ueTbUAAAH7gB8kskAAIaz106.jpg" alt="美的（Midea） BCD-206TM(E) 206升静音/省电/三门冰箱（闪白银）" height="50" width="50" /></a></span>
														<div class="p-name">
															<a href="#">美的（Midea） BCD-206TM(E)206升静音/省电/三门冰箱（闪白银）</a>
														</div>
														<div class="p-price"><strong>¥1398.00</strong>×1 </div>
														<a href="#none" class="p-del J-del">删除</a>
													</div>
												</div>
												<div class="tbar-cart-item">
													<div class="jtc-item-promo">
														<em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
														<div class="promo-text">已购满600元，您可领赠品</div>
													</div>
													<div class="jtc-item-goods">
														<span class="p-img">
															<a href="#" target="_blank"><img src="http://img14.360buyimg.com/n5/g10/M00/00/14/rBEQWFEAilIIAAAAAACGm9ueTbUAAAH7gB8kskAAIaz106.jpg" alt="美的（Midea） BCD-206TM(E) 206升静音/省电/三门冰箱（闪白银）" height="50" width="50" /></a>
														</span>
														<div class="p-name">
															<a href="#">美的（Midea） BCD-206TM(E)206升静音/省电/三门冰箱（闪白银）</a>
														</div>
														<div class="p-price"><strong>¥1398.00</strong>×1 </div>
														<a href="#none" class="p-del J-del">删除</a> 
													</div>
												</div>
												<div class="tbar-cart-item" >
													<div class="jtc-item-promo">
														<em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
														<div class="promo-text">已购满600元，您可领赠品</div>
													</div>
													<div class="jtc-item-goods">
														<span class="p-img"><a href="#" target="_blank"><img src="http://img14.360buyimg.com/n5/g10/M00/00/14/rBEQWFEAilIIAAAAAACGm9ueTbUAAAH7gB8kskAAIaz106.jpg" alt="美的（Midea） BCD-206TM(E) 206升静音/省电/三门冰箱（闪白银）" height="50" width="50" /></a></span>
														<div class="p-name"><a href="#">美的（Midea） BCD-206TM(E)206升静音/省电/三门冰箱（闪白银）</a> </div>
														<div class="p-price"> <strong>¥1398.00</strong>×1 </div>
														<a href="#none" class="p-del J-del">删除</a>
													</div>
												</div>
												<div class="tbar-cart-item" >
													<div class="jtc-item-promo">
														<em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
														<div class="promo-text">已购满600元，您可领赠品</div>
													</div>
													<div class="jtc-item-goods">
														<span class="p-img"><a href="#" target="_blank"><img src="http://img14.360buyimg.com/n5/g10/M00/00/14/rBEQWFEAilIIAAAAAACGm9ueTbUAAAH7gB8kskAAIaz106.jpg" alt="美的（Midea） BCD-206TM(E) 206升静音/省电/三门冰箱（闪白银）" height="50" width="50" /> </a> </span>
														<div class="p-name"><a href="#">美的（Midea） BCD-206TM(E)206升静音/省电/三门冰箱（闪白银）</a> </div>
														<div class="p-price"> <strong>¥1398.00</strong>×1 </div>
														<a href="#none" class="p-del J-del">删除</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tbar-panel-footer J-panel-footer">
									<div class="tbar-checkout">
										<div class="jtc-number"> <strong class="J-count">0</strong>件商品 </div>
										<div class="jtc-sum"> 共计：<strong class="J-total">¥113</strong> </div>
										<a class="jtc-btn J-btn" href="#none" target="_blank">去购物车结算</a>
									</div>
								</div>
							</div>
			
							<div style="visibility: hidden;" data-name="follow" class="J-content toolbar-panel tbar-panel-follow">
								<h3 class="tbar-panel-header J-panel-header">
									<a href="#" target="_blank" class="title"> <i></i> <em class="title">我的关注</em> </a>
									<span class="close-panel J-close"></span>
								</h3>
								<div class="tbar-panel-main">
									<div class="tbar-panel-content J-panel-content">
										<div class="tbar-tipbox2">
											<div class="tip-inner"> <i class="i-loading"></i> </div>
										</div>
									</div>
								</div>
								<div class="tbar-panel-footer J-panel-footer"></div>
							</div>
							
							<div style="visibility: hidden;" class="J-content toolbar-panel tbar-panel-history toolbar-animate-in">
								<h3 class="tbar-panel-header J-panel-header">
									<a href="#" target="_blank" class="title"> <i></i> <em class="title">我的足迹</em> </a>
									<span class="close-panel J-close"></span>
								</h3>
								<div class="tbar-panel-main">
									<div class="tbar-panel-content J-panel-content">
										<div class="jt-history-wrap">
											<ul>
												<li class="jth-item">
													<a href="#" class="img-wrap"> <img src="http://img10.360buyimg.com/n0/s100x100_g9/M03/0C/18/rBEHalCKCk8IAAAAAAD5nbR5xOAAACfgQENi_wAAPm1269.jpg" height="100" width="100" /> </a>
													<a class="add-cart-button" href="#" target="_blank">加入购物车</a>
													<a href="#" target="_blank" class="price">￥498.00</a>
												</li>
												<li class="jth-item">
													<a href="#" class="img-wrap"> <img src="http://img10.360buyimg.com/n0/s100x100_g9/M03/0C/18/rBEHalCKCk8IAAAAAAD5nbR5xOAAACfgQENi_wAAPm1269.jpg" height="100" width="100" /></a>
													<a class="add-cart-button" href="#" target="_blank">加入购物车</a>
													<a href="#" target="_blank" class="price">￥498.00</a>
												</li>
											</ul>
											<a href="#" class="history-bottom-more" target="_blank">查看更多足迹商品 &gt;&gt;</a>
										</div>
									</div>
								</div>
								<div class="tbar-panel-footer J-panel-footer"></div>
							</div>
						</div>
						
						<div class="toolbar-header"></div>
						
						<div class="toolbar-tabs J-tab">
							<div class="toolbar-tab tbar-tab-cart">
								<i class="tab-ico"></i>
								<em class="tab-text ">购物车</em>
								<span class="tab-sub J-count ">1</span>
							</div>
							<div class=" toolbar-tab tbar-tab-follow">
								<i class="tab-ico"></i>
								<em class="tab-text">我的关注</em>
								<span class="tab-sub J-count hide">0</span> 
							</div>
							<div class=" toolbar-tab tbar-tab-history ">
								<i class="tab-ico"></i>
								<em class="tab-text">我的足迹</em>
								<span class="tab-sub J-count hide">0</span>
							</div>
						</div>
						
						<div class="toolbar-footer">
							<div class="toolbar-tab tbar-tab-top"> <a href="#"> <i class="tab-ico  "></i> <em class="footer-tab-text">顶部</em> </a> </div>
							<div class=" toolbar-tab tbar-tab-feedback"> <a href="#" target="_blank"> <i class="tab-ico"></i> <em class="footer-tab-text ">反馈</em> </a> </div>
						</div>
						
						<div class="toolbar-mini"></div>
						
					</div>
					
					<div id="J-toolbar-load-hook"></div>
					
				</div>
				
				
				
				
			</div>
			
			
			<script type="text/javascript" src = 'js/nav.js'></script>
			<!--右侧搜索结束-->
			
		</div>
		
		</div>
		<!--右侧搜索开始-->
			<div class="J-global-toolbar">
				<div class="toolbar-wrap J-wrap">
					<div class="toolbar">
						<div class="toolbar-panels J-panel">
							<div style="visibility: hidden;" class="J-content toolbar-panel tbar-panel-cart toolbar-animate-out">
								<h3 class="tbar-panel-header J-panel-header">
									<a href="" class="title"><i></i><em class="title">购物车</em></a>
									<span class="close-panel J-close"></span>
								</h3>
								<div class="tbar-panel-main">
									<div class="tbar-panel-content J-panel-content">
										<div id="J-cart-tips" class="tbar-tipbox hide">
											<div class="tip-inner">
												<span class="tip-text">还没有登录，登录后商品将被保存</span>
												<a href="#none" class="tip-btn J-login">登录</a>
											</div>
										</div>
										<div id="J-cart-render">
											<div class="tbar-cart-list">
												<div class="tbar-cart-item" >
													<div class="jtc-item-promo">
														<em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
														<div class="promo-text">已购满600元，您可领赠品</div>
													</div>
													<div class="jtc-item-goods">
														<span class="p-img"><a href="#" target="_blank"><img src=""  height="50" width="50" /></a></span>
														<div class="p-name">
															<a href="#"></a>
														</div>
														<div class="p-price"><strong>¥1398.00</strong>×1 </div>
														<a href="#none" class="p-del J-del">删除</a>
													</div>
												</div>
											
											</div>
										</div>
									</div>
								</div>
								<div class="tbar-panel-footer J-panel-footer">
									<div class="tbar-checkout">
										<div class="jtc-number"> <strong class="J-count">0</strong>件商品 </div>
										<div class="jtc-sum"> 共计：<strong class="J-total">¥113</strong> </div>
										<a class="jtc-btn J-btn" href="#none" target="_blank">去购物车结算</a>
									</div>
								</div>
							</div>
			
							<div style="visibility: hidden;" data-name="follow" class="J-content toolbar-panel tbar-panel-follow">
								<h3 class="tbar-panel-header J-panel-header">
									<a href="#" target="_blank" class="title"> <i></i> <em class="title">我的关注</em> </a>
									<span class="close-panel J-close"></span>
								</h3>
								<div class="tbar-panel-main">
									<div class="tbar-panel-content J-panel-content">
										<div class="tbar-tipbox2">
											<div class="tip-inner"> <i class="i-loading"></i> </div>
										</div>
									</div>
								</div>
								<div class="tbar-panel-footer J-panel-footer"></div>
							</div>
							
							<div style="visibility: hidden;" class="J-content toolbar-panel tbar-panel-history toolbar-animate-in">
								<h3 class="tbar-panel-header J-panel-header">
									<a href="#" target="_blank" class="title"> <i></i> <em class="title">我的足迹</em> </a>
									<span class="close-panel J-close"></span>
								</h3>
								<div class="tbar-panel-main">
									<div class="tbar-panel-content J-panel-content">
										<div class="jt-history-wrap">
											<ul>
												<li class="jth-item">
													<a href="#" class="img-wrap"> <img src="http://img10.360buyimg.com/n0/s100x100_g9/M03/0C/18/rBEHalCKCk8IAAAAAAD5nbR5xOAAACfgQENi_wAAPm1269.jpg" height="100" width="100" /> </a>
													<a class="add-cart-button" href="#" target="_blank">加入购物车</a>
													<a href="#" target="_blank" class="price">￥498.00</a>
												</li>
												<li class="jth-item">
													<a href="#" class="img-wrap"> <img src="http://img10.360buyimg.com/n0/s100x100_g9/M03/0C/18/rBEHalCKCk8IAAAAAAD5nbR5xOAAACfgQENi_wAAPm1269.jpg" height="100" width="100" /></a>
													<a class="add-cart-button" href="#" target="_blank">加入购物车</a>
													<a href="#" target="_blank" class="price">￥498.00</a>
												</li>
											</ul>
											<a href="#" class="history-bottom-more" target="_blank">查看更多足迹商品 &gt;&gt;</a>
										</div>
									</div>
								</div>
								<div class="tbar-panel-footer J-panel-footer"></div>
							</div>
						</div>
						
						<div class="toolbar-header"></div>
						
						<div class="toolbar-tabs J-tab">
							<div class="toolbar-tab tbar-tab-cart">
								<i class="tab-ico"></i>
								<em class="tab-text ">购物车</em>
								<span class="tab-sub J-count ">1</span>
							</div>
							<div class=" toolbar-tab tbar-tab-follow">
								<i class="tab-ico"></i>
								<em class="tab-text">我的关注</em>
								<span class="tab-sub J-count hide">0</span> 
							</div>
							<div class=" toolbar-tab tbar-tab-history ">
								<i class="tab-ico"></i>
								<em class="tab-text">我的足迹</em>
								<span class="tab-sub J-count hide">0</span>
							</div>
						</div>
						
						<div class="toolbar-footer">
							<div class="toolbar-tab tbar-tab-top"> <a href="#"> <i class="tab-ico  "></i> <em class="footer-tab-text">顶部</em> </a> </div>
							<div class=" toolbar-tab tbar-tab-feedback"> <a href="#" target="_blank"> <i class="tab-ico"></i> <em class="footer-tab-text ">反馈</em> </a> </div>
						</div>
						
						<div class="toolbar-mini"></div>
						
					</div>
					
					<div id="J-toolbar-load-hook"></div>
					
				</div>		
			</div>
			
			
			
			<!--右侧搜索结束-->
		<script src="js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src ="js/nav.js" charset="utf-8"></script>
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
				
					$(this).parent().parent().parent().prev().children().children().get(0).src = $(this).find("img").get(0).src;
				

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
					$(this).find(":nth-child(2)").css("background-image","url(jdchenying/listImg/arrow/redDown.png)");
				}
				
				
				
				$(this).siblings(":not([class*='cur'])").find(":nth-child(2)").css("background-image","url(jdchenying/listImg/arrow/grayDown.png)");
			
				
				
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
		
		//---------------------------------------------------------------
		$('.tbar-cart-item').hover(function (){ $(this).find('.p-del').show(); },function(){ $(this).find('.p-del').hide(); });
	$('.jth-item').hover(function (){ $(this).find('.add-cart-button').show(); },function(){ $(this).find('.add-cart-button').hide(); });
	$('.toolbar-tab').hover(function (){ $(this).find('.tab-text').addClass("tbar-tab-hover"); $(this).find('.footer-tab-text').addClass("tbar-tab-footer-hover"); $(this).addClass("tbar-tab-selected");},function(){ $(this).find('.tab-text').removeClass("tbar-tab-hover"); $(this).find('.footer-tab-text').removeClass("tbar-tab-footer-hover"); $(this).removeClass("tbar-tab-selected"); });
	$('.tbar-tab-cart').click(function (){ 
		if($('.toolbar-wrap').hasClass('toolbar-open')){
			if($(this).find('.tab-text').length > 0){
				if(! $('.tbar-tab-follow').find('.tab-text').length > 0){
					var info = "<em class='tab-text '>我的关注</em>";
					$('.tbar-tab-follow').append(info);
					$('.tbar-tab-follow').removeClass('tbar-tab-click-selected'); 
					$('.tbar-panel-follow').css({'visibility':"hidden","z-index":"-1"});
				}
				if(! $('.tbar-tab-history').find('.tab-text').length > 0){
					var info = "<em class='tab-text '>我的足迹</em>";
					$('.tbar-tab-history').append(info);
					$('.tbar-tab-history').removeClass('tbar-tab-click-selected'); 
					$('.tbar-panel-history').css({'visibility':"hidden","z-index":"-1"});
				}
				$(this).addClass('tbar-tab-click-selected'); 
				$(this).find('.tab-text').remove();
				$('.tbar-panel-cart').css({'visibility':"visible","z-index":"1"});
				
			}else{
				var info = "<em class='tab-text '>我的关注</em>";
				$('.toolbar-wrap').removeClass('toolbar-open');
				$(this).append(info);
				$(this).removeClass('tbar-tab-click-selected');
				$('.tbar-panel-cart').css({'visibility':"hidden","z-index":"-1"});
			}
			 
			
		}else{ 
			$(this).addClass('tbar-tab-click-selected'); 
			$(this).find('.tab-text').remove();
			$('.tbar-panel-cart').css({'visibility':"visible","z-index":"1"});
			$('.tbar-panel-follow').css('visibility','hidden');
			$('.tbar-panel-history').css('visibility','hidden');
			$('.toolbar-wrap').addClass('toolbar-open'); 
		}
	});
	$('.tbar-tab-follow').click(function (){ 
		if($('.toolbar-wrap').hasClass('toolbar-open')){
			if($(this).find('.tab-text').length > 0){
				if(! $('.tbar-tab-cart').find('.tab-text').length > 0){
					var info = "<em class='tab-text '>购物车</em>";
					$('.tbar-tab-cart').append(info);
					$('.tbar-tab-cart').removeClass('tbar-tab-click-selected'); 
					$('.tbar-panel-cart').css({'visibility':"hidden","z-index":"-1"});
				}
				if(! $('.tbar-tab-history').find('.tab-text').length > 0){
					var info = "<em class='tab-text '>我的足迹</em>";
					$('.tbar-tab-history').append(info);
					$('.tbar-tab-history').removeClass('tbar-tab-click-selected'); 
					$('.tbar-panel-history').css({'visibility':"hidden","z-index":"-1"});
				}
				$(this).addClass('tbar-tab-click-selected'); 
				$(this).find('.tab-text').remove();
				$('.tbar-panel-follow').css({'visibility':"visible","z-index":"1"});
				
			}else{
				var info = "<em class='tab-text '>我的关注</em>";
				$('.toolbar-wrap').removeClass('toolbar-open');
				$(this).append(info);
				$(this).removeClass('tbar-tab-click-selected');
				$('.tbar-panel-follow').css({'visibility':"hidden","z-index":"-1"});
			}
			 
			
		}else{ 
			$(this).addClass('tbar-tab-click-selected'); 
			$(this).find('.tab-text').remove();
			$('.tbar-panel-cart').css('visibility','hidden');
			$('.tbar-panel-follow').css({'visibility':"visible","z-index":"1"});
			$('.tbar-panel-history').css('visibility','hidden');
			$('.toolbar-wrap').addClass('toolbar-open'); 
		}
	});
	$('.tbar-tab-history').click(function (){ 
		if($('.toolbar-wrap').hasClass('toolbar-open')){
			if($(this).find('.tab-text').length > 0){
				if(! $('.tbar-tab-follow').find('.tab-text').length > 0){
					var info = "<em class='tab-text '>我的关注</em>";
					$('.tbar-tab-follow').append(info);
					$('.tbar-tab-follow').removeClass('tbar-tab-click-selected'); 
					$('.tbar-panel-follow').css({'visibility':"hidden","z-index":"-1"});
				}
				if(! $('.tbar-tab-cart').find('.tab-text').length > 0){
					var info = "<em class='tab-text '>购物车</em>";
					$('.tbar-tab-cart').append(info);
					$('.tbar-tab-cart').removeClass('tbar-tab-click-selected'); 
					$('.tbar-panel-cart').css({'visibility':"hidden","z-index":"-1"});
				}
				$(this).addClass('tbar-tab-click-selected'); 
				$(this).find('.tab-text').remove();
				$('.tbar-panel-history').css({'visibility':"visible","z-index":"1"});
				
			}else{
				var info = "<em class='tab-text '>我的足迹</em>";
				$('.toolbar-wrap').removeClass('toolbar-open');
				$(this).append(info);
				$(this).removeClass('tbar-tab-click-selected');
				$('.tbar-panel-history').css({'visibility':"hidden","z-index":"-1"});
			}
			
		}else{ 
			$(this).addClass('tbar-tab-click-selected'); 
			$(this).find('.tab-text').remove();
			$('.tbar-panel-cart').css('visibility','hidden');
			$('.tbar-panel-follow').css('visibility','hidden');
			$('.tbar-panel-history').css({'visibility':"visible","z-index":"1"});
			$('.toolbar-wrap').addClass('toolbar-open'); 
		}
	});
		
	</script>
		<!--商品详情列表-->
		
	</body>
 
</html>
