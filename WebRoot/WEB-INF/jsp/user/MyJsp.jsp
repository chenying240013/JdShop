				<%@ page language="java" import="java.util.*,com.vo.*,com.service.inter.*,com.service.impl.*"
					pageEncoding="utf-8"%>
				<%
					String path = request.getContextPath();
					String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
							+ path + "/";
				%>
				
				<!DOCTYPE html>
				<html>
				<head>
				<meta charset="UTF-8">
				<base href="<%=basePath%>">
				<title>【海尔LE32A51J】海尔 Haier LE32A51J 32英寸智能网络WiFi高清LED液晶平板电视（黑色）【行情 报价 价格 评测】-京东</title>
				<link rel="icon" type="text/css" href="Jdimg/haiyanru/img/favicon.ico" />
				<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css" />
				
				<!-- <link rel="stylesheet" type="text/css" href="css/reset.css" /> -->
				
				<style type="text/css">
				@charset "UTF-8";
				@font-face {
								font-family: 'icomoon';
								src: url('fonts/icomoon.eot?d46h9l');
								src: url('fonts/icomoon.eot?d46h9l#iefix') format('embedded-opentype'), url('fonts/icomoon.ttf?d46h9l') format('truetype'), url('fonts/icomoon.woff?d46h9l') format('woff'), url('fonts/icomoon.svg?d46h9l#icomoon') format('svg');
								font-weight: normal;
								font-style: normal;
							}
		
				/*隐藏部分的css  <link rel="stylesheet" type="text/css" href="css/arrivedBeiJing.css" />*/
				
				
						/*送至北京开始*/
					.hide-city {
						height: 332.4px;
						width: 324px;
						position: absolute;
						top: 30px;
						left: 151px;
						z-index: 99;
						border-top: none;
						background-color: white;
						display: none;
						border-bottom: 1px solid rgb(222, 222, 222);
						border-left: 1px solid rgb(222, 222, 222);
						border-right: 1px solid rgb(222, 222, 222);
						-moz-box-shadow: 0 0 2px 2px #eee;
						-webkit-box-shadow: 0 0 2px 2px #eee;
						box-shadow: 0 0 2px 2px #eee;
					}
					
					.hide-city table {
						border: none;
						outline-style: none;
					}
					
					.hide-city table tr td {
						border-collapse: collapse;
						height: 20px;
						width: 58px;
						padding-left: 19px;
						border: 0 none;
						/*border-top-style: none;*/
					}
					
					.hide-city table tr td a {
						position: relative;
						left: -10px;
						text-align: center;
						display: block;
						margin-top: 5px;
						height: 24px;
						line-height: 24px;
						width: 40px;
					}
					
					.hide-city table tr td a:hover {
						background-color: rgba(227, 228, 229, 0.5);
						color: red;
					}
					
					.hide-city a {
						text-decoration: none;
						color: black;
						color: #999;
						font-family: "微软雅黑";
						font-weight: normal;
						font-size: 12px;
					}
					
					.hide-city a:hover {
						background-color: rgba(255, 255, 255, 0.5);
					}
					
					.hide-city table {
						border-top-style: none;
					}
					/*送至北京结束*/
					@CHARSET "UTF-8";
					
					/*我的京东start*/
					.MyJD {
						height: 141PX;
						width: 282px;
						padding: 5px 0 5px 15px;
						position: absolute;
						float: right;
						top: 31px;
						left: 721px;
						color: #999;
						display: none;
						border-bottom: 1px solid rgb(222, 222, 222);
						border-left: 1px solid rgb(222, 222, 222);
						border-right: 1px solid rgb(222, 222, 222);
						background-color: white;
						-moz-box-shadow: 0 0 2px 2px #eee;
						-webkit-box-shadow: 0 0 2px 2px #eee;
						box-shadow: 0 0 2px 2px #eee;
					}
					
					.my-jd:hover {
						background-color: white;
					}
					
					.MyJD-shang {
						height: 82px;
						width: 280px;
						/*padding-left: 2px;*/
						float: left;
						border-bottom: 1px solid rgb(222, 222, 222);
						/*border-left: 10px;*/
					}
					
					.MyJD-xia {
						height: 52px;
						width: 280px;
					}
					
					.MyJD-shang-icon1 {
						width: 126px;
						height: 24px;
						float: left;
					}
					
					/*我的京东end*/
					
					/*家电回收*/
					.freeOffer {
						height: 76px;
						width: 200px;
						display: none;
						padding: 10px;
						color: #666;
						background: #fff;
						border: 1px solid #cecbce;
						position: relative;
						top: -390px;
						left: 780px;
						-moz-box-shadow: 0 0 2px 2px #eee;
						-webkit-box-shadow: 0 0 2px 2px #eee;
						box-shadow: 0 0 2px 2px #eee;
					}
					/*Haier电视下的yincangkuang*/
					.content2 {
						top: 255px;
						width: 660px;
						height: 172px;
						padding: 10px 0;
						left: 553px;
						display: none;
						position: absolute;
						background-color: #fff;
						border: 1px solid #ccc;
					}
					
					.br-reco {
						width: 660px;
						height: 72px;
						padding-bottom: 10px;
						margin-top: 10px;
						margin-bottom: 10px;
						border-bottom: 1px dotted #dfdfdf;
						/*display: none;*/
						float: left;
					}
					
					.br-reco-li {
						width: 206px;
						height: 65px;
						margin-left: 5px;
						clear: none;
						float: left;
					}
					
					.br-reco-img {
						float: left;
						margin-left: 5px;
					}
					
					.p-name {
						max-height: 3em;
						min-height: 36px;
						_height: 3em;
						line-height: 1.5em;
						margin-bottom: 5px;
						overflow: hidden;
					}
					
					.p-price {
						color: #e4393c;
						font-size: 14px;
						margin-top: 13px;
						font-family: Verdana;
					}
					
					.br-list {
						list-style: none;
					}
					
					.br-list-li {
						display: inline-block;
						width: 110px;
						padding-left: 15px;
						margin-top: 5px;
						overflow: hidden;
						white-space: nowrap;
						text-overflow: ellipsis;
					}
					
					/*全部商品分类隐藏框start*/
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
						display: none;
					}
					
					.item-fore1 {
						position: relative;
						z-index: 1;
						height: 27px;
						color: #fff;
						background: #fff;
					}
					
					.item-fore1:hover {
						background-color: rgb(222, 222, 222);
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
					/*全部商品分类隐藏框end*/
					
					/*触到小图片时的红色框*/
					.redFrame1,
					.redFrame2, 
					.redFrame3, 
					.redFrame4, 
					.redFrame5 {
						border: 2px solid #ff5722;
						position: absolute;
						height: 68px;
						width: 68px;
						left: 350px;
						bottom: -7px;
						display:none;
					}
					
					.redFrame2 {
						left: 416px;
					}
					
					.redFrame3 {
						left: 472px;
					}
					
					.redFrame4 {
						left: 527px;
					}
					
					.redFrame5 {
						left: 586px;
					}
					
					/*隐藏部分的css结束*/
					
					/*主页面css开始*/
				
				/*<link rel="stylesheet" type="text/css" href="css/MyProject.css"/>*/
				
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
				
				a:hover {
					color: #C81623;
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
					width: 1200px;
					margin: 0 auto;
					background-color: white;
				}
				
				body {
					font: 12px/150% Arial, Verdana, "宋体";
					color: #666;
					background: #fff;
				}
				
				s, i, em {
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
					height: 27px;
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
					top: -87px;
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
					background-image: url(Jdimg/haiyanru/img/tel.png);
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
					font-family: Microsoft YaHei, tahoma, arial, Hiragino Sans GB,
						\\5b8b\4f53, sans-serif;
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
				
				.ShoppingDemo-inner {
					padding: 0 10px;
					font-size: 14px;
					position: relative;
					bottom: 0;
					color: #fff;
				}
				
				.ShoppingDemo-inner a {
					display: block;
					height: 33px;
					background: #f30213;
					color: #fff;
					text-decoration: none;
					text-align: center
				}
				
				.ShoppingDemo-right {
					float: left;
					position: relative;
					z-index: 2;
				}
				
				.ShoppingDemo-right ul li {
					float: left;
				}
				
				.ShoppingDemo-left-a {
					display: block;
					height: 33px;
					background: #f30213;
					color: #fff;
					text-decoration: none;
					text-align: center;
					font-size: 14px;
				}
				
				.ShoppingDemo-left-a:hover {
					color: #fff;
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
				/*全部商品分类end*/
				/*family部分start*/
				.family {
					height: 44px;
					width: 100%;
					background-color: rgb(242, 242, 242);
				}
				/*family左半部分start*/
				.crumb {
					height: 20px;
					width: 485px;
					z-index: 5;
					float: left;
					padding: 13px 0 9px;
					position: relative;
				}
				
				.familyA {
					width: 48px;
					height: 18px;
					float: left;
				}
				
				.contact-icon {
					width: 10px;
					height: 28px;
					font-family: simsun;
					padding: 0 8px;
					float: left;
				}
				
				.Haier {
					height: 22px;
					width: 114px;
					float: left;
					line-height: 20px;
					border: 1px solid #E6E6E6;
					background-color: white;
				}
				
				.Haier a {
					margin-left: 4px;
				}
				
				.Haier-span {
					width: 13px;
					height: 7px;
					display: inline-block;
					margin: 0 10px 0 5px;
					background-image: url(Jdimg/haiyanru/img/arr-close.png);
				}
				
				.familyB {
					width: 120px;
					height: 18px;
					float: left;
					overflow: hidden;
					white-space: nowrap;
					text-overflow: ellipsis;
				}
				/*family左半部分end*/
				/*family右半部分start*/
				.contact {
					height: 21px;
					width: 451px;
					padding: 13px 0 0;
					position: relative;
					/*z-index: 4;*/
					float: right;
				}
				
				.contact-A {
					height: 19px;
					width: 118px;
				}
				
				.A-inner {
					height: 18px;
					width: 108px;
					margin-right: 10px;
				}
				
				.contact-B {
					height: 19px;
					width: 111px;
				}
				
				.B-Start {
					position: relative;
					float: left;
					overflow: hidden;
					width: 74px;
					height: 16px;
					display: inline-block;
					background: url(Jdimg/haiyanru/img/start.png);
				}
				
				.B-Dengji {
					height: 14px;
					width: 37px;
					/*vertical-align: -1px;*/
					color: #e3393c;
				}
				
				.B-Dengji-span {
					height: 14px;
					width: 25px;
				}
				
				.B-Dengji-span a {
					color: #e3393c;
				}
				
				.B-Dengji-i {
					height: 9px;
					width: 9px;
					display: inline-block;
					margin-left: 3px;
					background-position: -50px 0;
					background-image: url(Jdimg/haiyanru/img/Dengji.png);
					position: relative;
					left: 98px;
					top: -19px;
				}
				
				.contact-C {
					height: 21px;
					width: 79px;
					margin-left: 10px;
				}
				
				.C-inner {
					width: 69px;
					height: 21px;
					cursor: pointer;
					float: left;
					margin-right: 10px;
					line-height: 21px;
					white-space: nowrap;
					display: block;
					position: relative;
				}
				
				.C-inner-li {
					width: 16px;
					height: 20px;
					display: inline-block;
					background-image: url(Jdimg/haiyanru/img/smallBox.gif);
				}
				
				.GetPerson {
					width: 53px;
					height: 21px;
					text-align: center;
					position: relative;
					top: -26px;
					left: 21px;
				}
				
				.contact-D {
					height: 18px;
					width: 54px;
				}
				
				.D-inner {
					height: 18px;
					width: 44px;
					cursor: pointer;
					float: left;
					margin-right: 10px;
					white-space: nowrap;
				}
				
				.D-inner-li {
					width: 17px;
					height: 18px;
					display: inline-block;
					background-position: 0 0;
					background-image: url(Jdimg/haiyanru/img/Dengji.png);
				}
				
				.GetPerson1 {
					width: 53px;
					height: 21px;
					text-align: center;
					position: relative;
					top: -22px;
					left: 5px;
				}
				
				.contact-E {
					height: 19px;
					width: 79px;
				}
				
				.E-inner {
					height: 19px;
					width: 69px;
				}
				
				.E-inner-li {
					top: -1px;
					height: 19px;
					width: 16px;
					position: relative;
					display: inline-block;
					background-position: -16px -15px;
					background-image: url(Jdimg/haiyanru/img/Dengji.png);
				}
				
				.GetPerson3 {
					width: 53px;
					height: 21px;
					text-align: center;
					position: relative;
					top: -22px;
					left: 15px;
				}
				/*family右半部分end*/
				/*family部分end*/
				
				/*main部分start*/
				.mainBox {
					height: 515px;
					width: 100%;
				}
				
				.mainBox-inner {
					/*height: 515px;*/
					width: 1210px;
					margin-top: 15px;
				}
				
				.mainBox-left {
					width: 352px;
					height: 479px;
					float: left;
					margin-bottom: 15px;
				}
				
				.mainBox-left-inner {
					width: 352px;
					height: 464px;
				}
				
				#Main-shang {
					width: 352px;
					height: 352px;
					border: 1px solid #EEEEEE;
					margin-bottom: 20px;
				}
				
				#Main-shang img {
					height: 350px;
					width: 350px;
					position: relative;
					vertical-align: middle;
				}
				
				.Main-middle {
					width: 352px;
					height: 54px;
					margin-bottom: 18px;
				}
				
				.Main-middle-icon1, .Main-middle-icon2 {
					display: block;
					width: 22px;
					height: 32px;
					float: left;
					position: absolute;
					cursor: pointer;
					top: 652px;
				}
				
				.Main-middle-icon2 {
					float: right;
					position: relative;
					top: 12px;
				}
				
				.icon-background {
					width: 22px;
					height: 32px;
					display: inline-block;
					background-image: url(Jdimg/haiyanru/img/left.png);
				}
				
				.icon-background2 {
					width: 22px;
					height: 32px;
					display: inline-block;
					background-image: url(Jdimg/haiyanru/img/right.png);
				}
				
				.Main-middle-photo {
					width: 290px;
					height: 54px;
					overflow: hidden;
					margin-left: 30px;
				}
				
				.small-photo {
					width: 54px;
					height: 54px;
					float: left;
					margin-left: 4px;
				}
				
				.Main-xia {
					width: 352px;
					height: 20px;
				}
				
				.Main-xia-left {
					width: 145px;
					height: 19px;
					float: left;
				}
				
				.Main-xia-right {
					width: 24px;
					height: 18px;
					float: right;
				}
				
				.xia {
					cursor: pointer;
					margin-right: -2px;
				}
				
				.xia-i, .xia-i2, .xia-i3 {
					width: 14px;
					height: 13px;
					display: inline-block;
					vertical-align: middle;
					margin-right: 5px;
					background-image: url(Jdimg/haiyanru/img/zutu.png);
					background-position: -44px -40px;
				}
				
				.xia-i2 {
					background-position: -46px -24px;
				}
				
				.xia-i3 {
					background-position: -30px -25px;
				}
				
				.mainBox-middle {
					width: 590px;
					height: 479px;
					float: left;
					margin-left: 20px;
					overflow: hidden;
				}
				
				.title1 {
					height: 17px;
					font: 700 16px Arial, "microsoft yahei";
					color: #666;
					padding-top: 10px;
					line-height: 14px;
					margin-bottom: 5px;
					color: #000000;
					background-color: rgb(200, 200, 200);
					overflow: hidden;
					white-space: nowrap;
					text-overflow:ellipsis ;
				}
				
				.price {
					width: 590px;
					height: 48px;
					position: relative;
					padding-bottom: 5px;
					background-color: rgb(243, 243, 243);
				}
				
				.price-inner {
					width: 590px;
					height: 43px;
					padding: 10px 0 0;
					background: #f3f3f3;
				}
				
				.price-inner-left {
					width: 590px;
					height: 23px;
					position: relative;
					margin-bottom: 5px;
				}
				
				.JDPrice {
					height: 22px;
					width: 58px;
					float: left;
					padding-left: 10px;
					font-family: simsun;
					color: #999;
					position: relative;
					line-height: 22px;
					letter-spacing: 5px;
				}
				
				.JDPrice-P {
					width: 520px;
					height: 23px;
					float: left;
					margin-left: 70px;
					margin-top: -22px;
					/*position: relative;*/
				}
				
				.JDPrice-span {
					height: 17px;
					width: 99px;
					color: #E4393C;
					font-family: "microsoft yahei";
					margin-right: 10px;
					font-size: 16px;
				}
				
				.price-color {
					color: #e4393c;
					font-size: 24px;
				}
				
				.downprice {
					color: #005aa0;
					vertical-align: 2px;
				}
				
				.sumComment {
					width: 69px;
					height: 32px;
					border-left: solid 1px #e6e6e6;
					text-align: center;
					padding: 0 10px;
					line-height: 15px;
					float: right;
					margin-top: -25px;
				}
				
				.arrived {
					width: 590px;
					height: 348px;
					position: relative;
					padding-bottom: 5px;
				}
				
				.arrived-A {
					height: 32px;
					width: 590px;
					margin-bottom: 3px;
					line-height: 32px;
					display: inline-block;
					display: block;
					margin-top: 10px;
				}
				
				.increase-salar {
					float: left;
					padding-left: 10px;
					font-family: simsun;
					line-height: 25px;
					color: #999;
				}
				
				.TV-recyle {
					height: 32px;
					width: 520px;
					margin-left: 70px;
				}
				
				.TV-recyleBox {
					height: 18px;
					width: 135px;
					position: relative;
					display: inline-block;
					border: 1px solid #ced2e6;
					line-height: 14px;
					border-radius: 8px;
					padding: 0 5px 0 18px;
					margin-top: 2px;
				}
				
				.TV-recyle-li {
					height: 16px;
					width: 16px;
					list-style: none;
					position: relative;
					top: 1px;
					left: -16px;
					background-image:
						url(Jdimg/haiyanru/img/83dc0e876c299ed6af570c4d1972a625___sprite.png);
					background-position: -32px 0;
				}
				
				.span12 {
					color: #5e69ad;
					position: relative;
					top: -13px;
					left: 5px;
				}
				
				.arrived-B {
					width: 590px;
					height: 24px;
				}
				
				.TV-recyle2 {
					height: 24px;
					/*	width: 520px;*/
					margin-left: 57px;
				}
				
				.address {
					height: 26px;
					width: 120px;
					float: left;
					margin-top: -4px;
					margin-left: -5px;
				}
				
				.address-inner {
					width: 114px;
					height: 26px;
					position: relative;
					z-index: 3;
					margin-right: 6px;
				}
				
				.ui-area-text-wrap {
					width: 100px;
					height: 23px;
					float: left;
					position: relative;
					background: #fff;
					border: 1px solid #CECBCE;
					padding: 0 24px 0 4px;
					line-height: 23px;
					top: 3px;
					overflow: hidden;
				}
				
				.address-b {
					display: block;
					position: absolute;
					top: -32px;
					right: -6px;
					width: 50px;
					height: 17px;
					cursor: pointer;
					overflow: hidden;
				}
				
				.Havethings {
					margin-right: 10px;
					color: #999;
					height: 24px;
					width: 29px;
					float: left;
					line-height: 24px;
					position: relative;
					left: 20px;
				}
				
				.free {
					height: 19px;
					width: 56px;
					float: left;
					position: relative;
					left: 20px;
					margin-top: 2px;
				}
				
				.free-i {
					display: inline-block;
					width: 16px;
					height: 16px;
					overflow: hidden;
					line-height: 1000px;
					vertical-align: middle;
					background-image: url(Jdimg/haiyanru/img/WenHao.png);
				}
				
				.arrived-C {
					height: 32px;
					width: 590px;
				}
				
				.NullBox {
					height: 32px;
					width: 34px;
					padding-left: 10px;
					font-family: simsun;
					color: #999;
				}
				
				.dd {
					height: 32px;
					width: 520px;
					top: -32px;
					margin-left: 70px;
					position: relative;
				}
				
				.dd-a {
					margin: 0 5px;
					color: #e4393c;
					line-height: 32px;
				}
				
				.arrived-D {
					width: 590px;
					height: 1px;
					overflow: hidden;
					position: relative;
					border-bottom: 1px dotted #dfdfdf;
					margin-bottom: 15px;
				}
				
				.arrived-E {
					height: 32px;
					width: 590px;
					margin-bottom: 3px;
					line-height: 32px;
					display: inline-block;
					display: block;
					margin-top: 10px;
				}
				
				.increase-salar1 {
					height: 30px;
					width: 58px;
					float: left;
					padding-left: 10px;
					font-family: simsun;
					color: #999;
				}
				
				.hhh {
					height: 32px;
					width: 520px;
					margin-left: 70px;
				}
				
				.hhh-inner {
					height: 32px;
					width: 520px;
					position: relative;
				}
				
				.yb-item-cat {
					width: 148px;
					height: 32px;
					/*position: relative;*/
					line-height: 32px;
					float: left;
				}
				
				.yb-item-cat-inner {
					width: 141px;
					height: 21px;
					padding: 4px 5px 4px 6px;
					margin: 0 7px 2px 0;
					border: 1px solid #ccc;
					line-height: 20px;
					position: relative;
					cursor: pointer;
					margin-left: 2px;
				}
				
				.miniheart {
					width: 16px;
					height: 16px;
					margin-right: 4px;
					display: inline-block;
					border: 0;
					vertical-align: middle;
				}
				
				.AAA {
					width: 16px;
					height: 24px;
					float: left;
					position: relative;
					left: 320px;
					top: -35px;
				}
				
				.mini-Span {
					font-size: 12px;
					margin-right: 4px;
					vertical-align: middle;
					max-width: 60px;
					width: 60px\9;
					height: 20px;
					overflow: hidden;
					display: inline-block;
				}
				
				.price2 {
					margin-right: 5px;
					vertical-align: middle;
					font: 12px/150% Arial, Verdana, "\5b8b\4f53";
				}
				
				.price22 {
					width: 15px;
					height: 10px;
					display: inline-block;
					vertical-align: middle;
					background: url(Jdimg/haiyanru/img/惠.png) -2px -1px;
				}
				
				.arrived-F {
					height: 77px;
					width: 590px;
					position: absolute;
					line-height: 32px;
				}
				
				.FF {
					height: 32px;
					width: 58px;
					float: left;
					padding-left: 10px;
					font-family: simsun;
					color: #999;
					position: relative;
				}
				
				.FFF {
					width: 520px;
					height: 77px;
					margin-left: 70px;
					position: relative;
				}
				
				.All-item {
					width: 520px;
					height: 77px;
					float: left;
					position: relative;
				}
				
				.item1 {
					height: 34px;
					width: 64px;
					float: left;
					color: #666;
					background-color: #FFF;
					margin-right: 7px;
					margin-bottom: 4px;
					border: 1px solid #ccc;
				}
				
				.item2 {
					color: #666;
					background-color: #FFF;
					margin-right: 7px;
					margin-bottom: 4px;
					height: 34px;
					width: 119px;
					float: left;
					border: 1px solid #ccc;
				}
				
				.item3 {
					color: #666;
					background-color: #FFF;
					margin-right: 7px;
					margin-bottom: 4px;
					height: 34px;
					width: 126px;
					float: left;
					border: 1px solid #ccc;
				}
				
				.a1 {
					margin-left: 7px;
				}
				
				.item4 {
					height: 39px;
					width: 21px;
					float: left;
				}
				
				.item4-a, .item5-a {
					width: 16px;
					height: 16px;
					overflow: hidden;
					display: inline-block;
					line-height: 1000px;
					margin-top: 8px;
					margin-right: 5px;
					background-image: url(Jdimg/haiyanru/img/Hui.png);
				}
				
				.item5-a {
					background-image: url(Jdimg/haiyanru/img/WenHao.png);
				}
				
				.arrived-G {
					height: 46px;
					width: 590px;
					margin-top: 10px;
					margin-bottom: 20px;
					padding: 0 10px;
					position: relative;
					top: 77px;
				}
				
				.CountShopp {
					width: 58px;
					height: 44px;
					overflow: hidden;
					border: 1px solid #ccc;
					position: relative;
					margin-right: 10px;
					float: left;
					margin-left: -74px;
				}
				
				.Buy-num {
					display: block;
					width: 43px;
					height: 42px;
					line-height: 42px;
					position: absolute;
					top: 1px;
					left: 0;
					border: none;
					border: 0;
					text-align: center;
				}
				
				.Buy-num-add, .Buy-num-reduce {
					display: block;
					width: 15px;
					text-align: center;
					height: 22px;
					line-height: 22px;
					overflow: hidden;
					background: #f1f1f1;
					color: #666;
					position: absolute;
					right: -1px;
					border: 1px solid #ccc;
				}
				
				.Buy-num-add {
					top: -1px;
					text-decoration: none;
				}
				
				.Buy-num-reduce {
					bottom: -1px;
					border-left: 1px solid #ccc;
				}
				
				.ShoppingCar {
					height: 46px;
					line-height: 46px;
					padding: 0 26px;
					font-size: 18px;
					font-family: "microsoft yahei";
					margin-right: 10px;
					float: left;
					background-color: #df3033;
					color: #fff;
				}
				
				.ShoppingCar:hover {
					color: #fff;
				}
				
				.Warm {
					height: 20px;
					width: 520px;
					position: relative;
					top: 60px;
				}
				
				.Warm-li {
					list-style: none;
				}
				
				.mainBox-right {
					width: 210px;
					height: 515px;
					float: right;
				}
				
				.mainBox-right-logo {
					width: 210px;
					height: 60px;
					position: relative;
				}
				
				.mainBox-right-logo img {
					vertical-align: middle;
					position: relative;
					left: 15px;
				}
				
				.SeeAgain {
					width: 210px;
					height: 50px;
					position: relative;
					line-height: 50px;
					font-size: 12px;
					color: #666;
					font-weight: 400;
					text-align: center;
				}
				
				.SeeAgain-h3 {
					position: relative;
					line-height: 50px;
					font-size: 12px;
					color: #666;
					font-weight: 600;
					z-index: 2;
					text-align: center;
				}
				
				.h4-underLine {
					position: absolute;
					z-index: 1;
					left: 0;
					right: 0;
					top: 25px;
					height: 1px;
					background: #f2f2f2;
				}
				
				.FlashPhoto {
					height: 376px;
					width: 150px;
					overflow: hidden;
					position: relative;
					left: 28px;
				}
				
				.FlashPhoto-ul {
					position: relative;
					width: 150px;
					height: 2820px;
					list-style: none;
				}
				
				.FlashPhoto-li {
					height: 188px;
					width: 150px;
					position: relative;
					padding: 10px 0;
				}
				
				.FlashPhoto-a {
					height: 158px;
					width: 150px;
					position: relative;
					display: inline-block;
				}
				
				.FlashPhoto-a img {
					height: 150px;
					width: 150px;
				}
				
				.FlashPhoto-div {
					overflow: hidden;
					text-overflow: ellipsis;
					white-space: nowrap;
					position: absolute;
					left: 0;
					right: 0;
					top: 126px;
					line-height: 12px;
					background: rgba(255, 255, 255, .9);
					padding: 6px;
				}
				
				.FlashPhoto-p {
					height: 18px;
					width: 150px;
					line-height: 18px;
					color: #C81623;
					text-align: center;
				}
				
				.FlashPhoto-icon {
					width: 210px;
					height: 29px;
					/*text-align: center;*/
					position: relative;
					left: 30px;
					top: 20px;
				}
				
				.FlashPhoto-more1 {
					width: 28px;
					height: 15px;
					display: inline-block;
					background-image:
						url(Jdimg/haiyanru/img/9fb4cc50999003bfaf3a2c6215134182___sprite.png);
					position: relative;
					margin-left: 10px;
					background-position: 28 0px;
				}
				
				.FlashPhoto-more2 {
					width: 28px;
					height: 15px;
					left: 60px;
					display: inline-block;
					background-image:
						url(Jdimg/haiyanru/img/9fb4cc50999003bfaf3a2c6215134182___sprite.png);
					position: relative;
					margin-left: 10px;
					background-position: 27px 0px;
				}
				
				/*main部分end*/
				
				/*放大镜*/
			
									
			.small-photo img {
					height: 50px;
					width: 50px;
									
			}
									
			
				
				/*配送至*/
				@charset "utf-8";
				
				body {
					color: #666666;
					font: 12px/150% Arial, Verdana, "宋体";
				}
				
				a, img {
					border: 0;
					text-decoration: none;
				}
				
				em {
					font-style: normal;
				}
				
				ol, ul {
					list-style: none outside none;
					padding: 0;
					margin: 0;
				}
				
				.tab li, .tab a, .tab-item {
					float: left;
					text-align: center;
				}
				
				.tab li, .tab a, .tab-item {
					cursor: pointer;
					float: left;
					text-align: center;
				}
				
				#summary-stock .dt {
					margin-top: 4px;
				}
				
				#list1 .dt {
					float: left;
					height: 18px;
					text-align: right;
					width: 72px;
				}
				
				#list1 .dd1 {
					width: 324px;
					float: left;
				}
				
				#store-selector {
					position: relative;
					float: left;
					z-index: 2;
					height: 26px;
					margin-right: 6px
				}
				
				#store-selector dl, #store-selector dt, #store-selector dd {
					float: none;
					color: #999
				}
				
				#store-selector dl {
					position: absolute;
					top: 23px;
					z-index: 1;
					width: 358px;
					width: 358px;
					padding: 5px;
					border: 1px solid #ddd;
					background: #fff;
					display: none;
					-moz-box-shadow: 0 0 5px #ddd;
					-webkit-box-shadow: 0 0 5px #ddd;
					box-shadow: 0 0 5px #ddd
				}
				
				#store-selector dt {
					padding: 6px 0 10px;
					color: #999
				}
				
				#store-selector dd {
					padding-bottom: 5px;
					line-height: 18px
				}
				
				#store-selector a:link, #store-selector a:visited {
					color: #005aa0
				}
				
				#store-selector a:hover, #store-selector a:active {
					background: #005aa0;
					color: #fff
				}
				
				#store-selector .text {
					float: left; +
					float: none;
					_float: left;
					position: relative;
					top: -35px;
					z-index: 2;
					height: 23px;
					background: #fff;
					border: 1px solid #CECBCE;
					padding: 0 20px 0 4px;
					line-height: 23px;
					overflow: hidden
				}
				
				#store-selector .text b {
					display: block;
					position: absolute;
					top: 0;
					right: 2px;
					overflow: hidden;
					width: 17px;
					height: 24px;
					background: url(Jdimg/haiyanru/img/btn20121210.png) 0 0 no-repeat
				}
				
				#store-selector .close {
					display: none;
					position: absolute;
					z-index: 2;
					top: -19px;
					left: 390px;
					cursor: pointer;
					width: 17px;
					height: 17px;
					background: url(Jdimg/haiyanru/img/20120418.png) no-repeat -40px 0;
				}
				
				#store-selector a:hover {
					background: #B79567;
					color: #fff;
					cursor: pointer
				}
				
				#store-selector.hover .text {
					border-bottom: 0
				}
				
				#store-selector.hover .i-storeinfo {
					position: relative;
					z-index: 2;
					background: url(Jdimg/haiyanru/img/bg_store.gif) no-repeat right -50px;
				}
				
				#store-selector.hover .i-storeinfo div {
					background: url(Jdimg/haiyanru/img/bg_store.gif) no-repeat -81px -75px;
				}
				
				#store-selector.hover dl {
					display: block
				}
				
				#store-selector.hover .close {
					display: block
				}
				
				#store-prompt {
					clear: left;
					line-height: 25px;
				}
				
				#store-prompt strong {
					font-size: 14px;
				}
				
				#store-prompt a {
					color: #005EAA;
				}
				
				* html #store-selector .i-storeinfo, * html #store-selector .i-storeinfo div
					{
					float: left;
				}
				
				* html #store-selector dl {
					left: 0;
				}
				
				#store-selector .content {
					display: none;
					position: absolute;
					top: -12px;
					left: -18px;
					border: 1px solid #cecbce;
					width: 390px;
					padding: 15px;
					background: #fff;
					-moz-box-shadow: 0 0 5px #ddd;
					-webkit-box-shadow: 0 0 5px #ddd;
					box-shadow: 0 0 5px #ddd;
				}
				
				#store-selector .content select {
					float: left;
					width: 120px;
					border: 1px solid #cecbce;
					margin-right: 15px
				}
				
				#store-selector .content .select3 {
					margin-right: 0
				}
				
				#store-selector.hover .content, #store-selector.hover .close {
					display: block
				}
				
				#JD-stock {
					position: relative;
					margin-bottom: 0
				}
				
				#JD-stock .tab {
					width: 100%;
					height: 25px;
					float: left;
					border-bottom: 2px solid #edd28b;
					overflow: visible;
					*overflow: hidden
				}
				
				#JD-stock .tab li {
					float: left;
					clear: none;
					height: 23px;
					padding: 1px 1px 0;
					border: 1px solid #ddd;
					border-bottom: 0;
					margin-right: 3px;
					background-color: #fff;
					line-height: 22px;
					text-decoration: none
				}
				
				#JD-stock .tab .curr {
					*position: relative;
					height: 25px;
					padding: 0;
					border: 2px solid #edd28b;
					border-bottom: 0
				}
				
				#JD-stock .tab a {
					position: relative;
					float: left;
					height: 23px;
					padding: 0 20px 1px 10px;
					line-height: 23px;
					text-align: center;
					text-decoration: none;
					cursor: pointer;
					color: #005AA0;
					outline: 0;
					*blr: expression(this.onFocus = this.blur ())
				}
				
				#JD-stock .tab a:hover {
					background: 0;
					color: #005AA0
				}
				
				#JD-stock .tab a i {
					position: absolute;
					right: 5px;
					top: 10px;
					*top: 9px;
					display: block;
					width: 7px;
					height: 5px;
					overflow: hidden;
					background: url(Jdimg/haiyanru/img/20130606B.png) no-repeat -76px -34px;
					opacity: .5;
					filter: alpha(opacity = 50)
				}
				
				#JD-stock .tab .curr i, #JD-stock .tab a:hover i {
					opacity: 1;
					filter: alpha(opacity = 100)
				}
				
				#JD-stock .area-list {
					padding-top: 5px
				}
				
				#JD-stock .area-list li {
					float: left;
					width: 80px;
					padding: 2px 0 2px 15px;
					clear: none
				}
				
				#JD-stock .area-list li a {
					float: left;
					padding: 2px 4px;
					*padding: 0 4px;
					color: #005aa0
				}
				
				#JD-stock .area-list li a:hover {
					color: #fff
				}
				
				#JD-stock .area-list .longer-area {
					width: 370px
				}
				
				#JD-stock .area-list .long-area {
					width: 170px
				}
				
				/*主页面css结束*/
				
				/*新加*/
				.Main-middle-photo ul li div.plsm_curr {
					padding: 0px;
					border: 2px solid #e4393c;
				}
				</style>
				
				</head>
				<body>
					<!-- top导航栏start -->
					<div class="site-nav">
						<div class="w">
				
							<ul class="site-nav-fl">
								<li class="BJSY"><i></i> <a href="javascript:void(0)">京东首页</a></li>
								<li class="BJDB"><i></i> <a href="javascript:void(0)">北京</a></li>
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
								<li class="spacer"></li>
								<li class="fore"><a href="javascript:void(0)">我的订单</a> <i></i></li>
								<li class="spacer"></li>
								<li class="my-jd"><a href="javascript:void(0)">我的京东</a></li>
								<li class="spacer"></li>
								<li><a href="javascript:void(0)">京东会员</a></li>
								<li class="spacer"></li>
								<li class="fore"><a href="javascript:void(0)" class="Business">企业采购</a><i></i>
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
									src="Jdimg/haiyanru/img/bff8f7956d52a4ecf455ec5d2aead824_jdlogo-201708-@1x.png" />
							</div>
							<div class="SousuoBox">
								<input type="text" name="" value="电视影音" />
								<button class="searchButton">搜索</button>
							</div>
							<div class="ShopCar">
								<a href="javascript:void(0)" class="myCar">我的购物车</a> <i class="icon1"></i> <i
									class="icon2">0</i>
							</div>
							<div class="under-SouSuoBox">
								<a href="javascript:void(0)">海信</a> <a href="javascript:void(0)">创维</a> <a href="javascript:void(0)">夏普</a> <a href="javascript:void(0)">乐视</a>
								<a href="javascript:void(0)">飞利浦</a> <a href="javascript:void(0)">4K高清线</a> <a href="javascript:void(0)">闭路线</a> <a
									href="javascript:void(0)">电源线</a>
							</div>
						</div>
					</div>
					<!--logo部分end  -->
				
					<!--全部商品分类start-->
					<div class="ShoppingDemo">
						<div class="w">
							<div class="ShoppingDemo-left">
				
								<a href="javascript:void(0)" class="ShoppingDemo-left-a">全部商品分类</a>
				
							</div>
							<div class="ShoppingDemo-right">
								<ul class="shop-icon1">
									<li class="icon-A"><a href="javascript:void(0)">京东服饰</a></li>
									<li class="icon-B"><a href="javascript:void(0)">美妆馆</a></li>
									<li class="icon-C"><a href="javascript:void(0)">超市</a></li>
									<li class="icon-D"><a href="javascript:void(0)">生鲜</a></li>
									<li class="icon-E"><a href="javascript:void(0)">全球购</a></li>
									<li class="icon-F"><a href="javascript:void(0)">闪购</a></li>
									<li class="icon-G"><a href="javascript:void(0)">拍卖</a></li>
				
									<li class="icon-H"><a href="javascript:void(0)">金融</a></li>
							</div>
						</div>
					</div>
					<!--全部商品分类end-->
				
					<!--family部分start-->
					<div class="family">
						<div class="w">
							<div class="crumb">
				
								<div class="familyA">
									<a href="javascript:void(0)">家用电器</a>
								</div>
								<div class="contact-icon">></div>
								<div class="familyA">
									<a href="javascript:void(0)">大 家 电</a>
								</div>
								<div class="contact-icon">></div>
								<div class="familyA">
									<a href="javascript:void(0)">平板电视</a>
								</div>
								<div class="contact-icon">></div>
								<div class="Haier">
									<a href="javascript:void(0)">海尔(Haier)</a>
									<div class="Haier-span"></div>
								</div>
								<!--<div class="Haier-hidden"></div> 隐藏部分-->
								<div class="contact-icon">></div>
								<div class="familyB">海尔（Haier）LS55AL88K81 55英寸网络智能4k电视
									wifi语音高清液晶</div>
							</div>
							<div class="contact">
								<div class="contact-A leftFloat">
									<div class="A-inner">
										<a href="javascript:void(0)">工贸家电官方旗舰店</a>
									</div>
								</div>
								<div class="contact-B leftFloat">
									<div class="B-Start"></div>
									<em class="B-Dengji"> <span class="B-Dengji-span"> <a
											href="javascript:void(0)">9.57</a>
									</span> <i class="B-Dengji-i"></i>
									</em>
								</div>
								<div class="contact-C leftFloat">
									<div class="C-inner">
										<i class="C-inner-li"></i>
										<div class="GetPerson">联系卖家</div>
				
									</div>
								</div>
								<div class="contact-D leftFloat">
									<div class="D-inner">
										<i class="D-inner-li"></i>
										<div class="GetPerson1">JIMI</div>
				
									</div>
								</div>
								<div class="contact-E leftFloat">
									<div class="E-inner">
										<i class="E-inner-li"></i>
										<div class="GetPerson3">关注店铺</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--family部分end-->
				
				
				
					<!--修改部分  -->
				
				
					<!--main部分start-->
					<div class="mainBox">
						<div class="w">
							<div class="mainBox-inner">
				
				
								
								<div class="mainBox-left">
									<div class="mainBox-left-inner">
										<div id="Main-shang">
											<img src="MyJdImg/${product.detailLargeImg}" id="smallImg" />
										</div>
				
										<div class="Main-middle">
											<a href="javascript:void(0)" class="Main-middle-icon1"> <i
												class="icon-background"></i>
											</a> <a href="javascript:void(0)" class="Main-middle-icon2"> <i
												class="icon-background2"></i>
											</a>
											<div class="Main-middle-photo">
												<ul class = "lh">
													<li class="small-photo"><div><img class = "img-hover" src="MyJdImg/${product.detailSmallImg1}"
														class="TV1" /></div></li>
													<li class="small-photo"><div><img class = "img-hover1" src="MyJdImg/${product.detailSmallImg2}"
														class="TV2" /></div></li>
													<li class="small-photo"><div><img class = "img-hover1" src="MyJdImg/${product.detailSmallImg3}"
														class="TV3" /></div></li>
													<li class="small-photo"><div><img class = "img-hover1" src="MyJdImg/${product.detailSmallImg4}"
														class="TV4" /></div></li>
													<li class="small-photo"><div><img class = "img-hover1" src="MyJdImg/${product.detailSmallImg5}"
														class="TV5" /></div></li>
												</ul>
											</div>
										</div>
										
										
										
										<!-- 触到小图片时的框  -->
										
										<div class="Main-xia">
											<div class="Main-xia-left">
												<a href="javascript:void(0)" class="xia"> <i class="xia-i"></i> <em>关注</em>
												</a> <a href="javascript:void(0)" class="xia"> <i class="xia-i2"></i> <em>分享</em>
												</a> <a href="javascript:void(0)" class="xia"> <i class="xia-i3"></i> <em>对比</em>
												</a>
											</div>
											<div class="Main-xia-right">
												<a href="javascript:void(0)">举报</a>
											</div>
										</div>
									</div>
								</div>
								<div class="mainBox-middle">
									<div class="title1">
				
										${product.pname}
				
									</div>
									<div class="price">
										<div class="price-inner">
											<div class="price-inner-left">
												<div class="JDPrice">京东价</div>
												<div class="JDPrice-P">
													<span class="JDPrice-span"> <span>￥</span> <span
														class="price-color"> ${product.price}
				
													</span>
				
													</span> <a href="javascript:void(0)" class="downprice">降价通知</a>
												</div>
												<div class="sumComment">
													<p>累计评价</p>
													<a>${product.productSum}</a>
												</div>
											</div>
										</div>
									</div>
									<div class="arrived">
										<div class="arrived-A">
											<div class="increase-salar">增值业务</div>
											<div class="TV-recyle">
												<div class="TV-recyleBox">
													<a href="javascript:void(0)">
														<li class="TV-recyle-li"></li> <span class="span12">家电回收
															，以旧换新 </span>
													</a>
												</div>
											</div>
										</div>
										<div class="arrived-B">
											<div class="increase-salar">配送至</div>
											<div class="TV-recyle2">
												<div class="address">
													<div class="address-inner">
														<!--送货地址选择-->
														<b class="address-b">--请选择</b>
														<ul id="list1" style="width:620px;margin:40px auto 0 auto;">
															<li id="summary-stock">
				
																<div class="dd1">
																	<div id="store-selector">
																		<div class="text">
																			<div></div>
																			<b></b>
																		</div>
																		<div onclick="$('#store-selector').removeClass('hover')"
																			class="close"></div>
																	</div>
																	<div id="store-prompt">
																		<strong></strong>
																	</div>
																</div>
															</li>
														</ul>
													</div>
												</div>
												<div class="Havethings">
													<strong class="stonger">有货</strong>
												</div>
												<div class="free">
													免运费 <a href="javascript:void(0)"> <i class="free-i"></i>
													</a>
												</div>
											</div>
										</div>
										<div class="arrived-C">
											<div class="NullBox"></div>
											<div class="dd">
												由 <a href="javascript:void(0)" class="dd-a">工贸家电官方旗舰店</a> 从 湖北武汉市 发货, 并提供售后服务.
											</div>
				
										</div>
										<div class="arrived-D"></div>
										<div class="arrived-E">
											<div class="increase-salar1">增值保障</div>
											<div class="hhh">
												<div class="hhh-inner">
													<div class="yb-item-cat">
														<div class="yb-item-cat-inner">
															<img src="Jdimg/haiyanru/img/Miniheart.png" class="miniheart" /> <span
																class="mini-Span">新全保3年</span> <span class="price2">￥249</span>
															<i class="price22"></i>
														</div>
													</div>
													<div class="yb-item-cat">
														<div class="yb-item-cat-inner">
															<img src="Jdimg/haiyanru/img/Miniheart.png" class="miniheart" /> <span
																class="mini-Span">新全保3年</span> <span class="price2">￥249</span>
															<i class="price22"></i>
														</div>
													</div>
												</div>
												<div class="AAA">
													<i class="free-i"></i>
												</div>
											</div>
										</div>
										<div class="arrived-F clearfix">
											<div class="FF">白条分期</div>
											<div class="FFF">
												<div class="All-item">
													<div class="item1">
														<a href="javascript:void(0)" class="a1"> <strong>不分期</strong>
														</a>
													</div>
													<div class="item2">
														<a href="javascript:void(0)" class="a1"> <strong> ￥1216.99起×3期 </strong>
														</a>
													</div>
													<div class="item3">
														<a href="javascript:void(0)" class="a1"> <strong> ￥617.49起×6期 </strong>
														</a>
													</div>
													<div class="item3">
														<a href="javascript:void(0)" class="a1"> <strong> ￥317.74起×12期 </strong>
														</a>
													</div>
													<div class="item3">
														<a href="javascript:void(0)" class="a1"> <strong> ￥167.75起×24期 </strong>
														</a>
													</div>
													<div class="item4">
														<a href="javascript:void(0)" class="item4-a"></a>
													</div>
													<div class="item4">
														<a href="javascript:void(0)" class="item5-a"></a>
													</div>
												</div>
											</div>
										</div>
										<div class="arrived-G">
											<div class="CountShopp">
											<form action="UserProductServlet?action=addCar&pid=${product.pid}" method="post">			
												<a   href="javascript:void(0)" class="Buy-num-reduce">-</a> 
												<input type="text" name="ShuLiang" class="Buy-num" value=1 />
												 <a   href="javascript:void(0)"  class="Buy-num-add">+</a>
											</div>
											<!-- MyProjectBox/JoinSucceed.jsp -->
												<input type="submit"  class="ShoppingCar" value="加入购物车" />
											</form>
										
											<div class="Warm">
					 							<li class="Warm-li">温馨提示·支持7天无理由退货</li>
											</div>
										</div>
				
									</div>
								</div>
								<div class="mainBox-right">
									<div class="mainBox-right-logo">
										<a href="javascript:void(0)"><img src="Jdimg/haiyanru/img/jiadian.jpg" /></a>
									</div>
									<div class="SeeAgain">
										<h4 class="SeeAgain-h3">看了又看</h4>
										<span class="h4-underLine"></span>
									</div>
									<div class="FlashPhoto">
										<ul class="FlashPhoto-ul">
											<li class="FlashPhoto-li"><a class="FlashPhoto-a"> <img
													src="Jdimg/haiyanru/img/fd646c64dfca8698628addf5d2155058_5b7e260fN731403e4.jpg" />
													<div class="FlashPhoto-div">西门子（SIEMENS） SK23E810TI
														进口台嵌两用洗碗机 家用全自动小型6套 烘干 超快洗 银色</div>
													<p class="FlashPhoto-p">￥2699.00</p>
											</a></li>
				
											<li class="FlashPhoto-li"><a class="FlashPhoto-a"> <img
													src="Jdimg/haiyanru/img/fd646c64dfca8698628addf5d2155058_5b7e260fN731403e4.jpg" />
													<div class="FlashPhoto-div">西门子（SIEMENS） SK23E810TI
														进口台嵌两用洗碗机 家用全自动小型6套 烘干 超快洗 银色</div>
													<p class="FlashPhoto-p">￥2699.00</p>
											</a></li>
				
											<li class="FlashPhoto-li"><a class="FlashPhoto-a"> <img
													src="Jdimg/haiyanru/img/fd646c64dfca8698628addf5d2155058_5b7e260fN731403e4.jpg" />
													<div class="FlashPhoto-div">西门子（SIEMENS） SK23E810TI
														进口台嵌两用洗碗机 家用全自动小型6套 烘干 超快洗 银色</div>
													<p class="FlashPhoto-p">￥2699.00</p>
											</a></li>
				
											<li class="FlashPhoto-li"><a class="FlashPhoto-a"> <img
													src="Jdimg/haiyanru/img/fd646c64dfca8698628addf5d2155058_5b7e260fN731403e4.jpg" />
													<div class="FlashPhoto-div">西门子（SIEMENS） SK23E810TI
														进口台嵌两用洗碗机 家用全自动小型6套 烘干 超快洗 银色</div>
													<p class="FlashPhoto-p">￥2699.00</p>
											</a></li>
				
											<li class="FlashPhoto-li"><a class="FlashPhoto-a"> <img
													src="Jdimg/haiyanru/img/fd646c64dfca8698628addf5d2155058_5b7e260fN731403e4.jpg" />
													<div class="FlashPhoto-div">西门子（SIEMENS） SK23E810TI
														进口台嵌两用洗碗机 家用全自动小型6套 烘干 超快洗 银色</div>
													<p class="FlashPhoto-p">￥2699.00</p>
											</a></li>
										</ul>
									</div>
									<div class="FlashPhoto-icon">
										<a class="FlashPhoto-more1"></a> <a class="FlashPhoto-more2"></a>
									</div>
								</div>
							</div>
				
			
							
				
						</div>
					</div>
				
					<!--main部分end-->
				
				
				
				
					<!-- 修改部分 -->
				
				
				
				
					<div class="hide-city">
				
						<table border="" cellspacing="cellspacing" cellpadding=""
							class="table">
							<tr>
								<td><a href="javascript:void(0)">北京</a></td>
								<td><a href="javascript:void(0)">上海</a></td>
								<td><a href="javascript:void(0)">天津</a></td>
								<td><a href="javascript:void(0)">重庆</a></td>
								<td><a href="javascript:void(0)">河北</a></td>
							</tr>
							<tr>
								<td><a href="javascript:void(0)">山西</a></td>
								<td><a href="javascript:void(0)">河南</a></td>
								<td><a href="javascript:void(0)">辽宁</a></td>
								<td><a href="javascript:void(0)">吉林</a></td>
								<td><a href="javascript:void(0)">黑龙江</a></td>
							</tr>
							<tr>
								<td><a href="javascript:void(0)">内蒙古</a></td>
								<td><a href="javascript:void(0)">江苏</a></td>
								<td><a href="javascript:void(0)">山东</a></td>
								<td><a href="javascript:void(0)">安微</a></td>
								<td><a href="javascript:void(0)">浙江</a></td>
							</tr>
							<tr>
								<td><a href="javascript:void(0)">福建</a></td>
								<td><a href="javascript:void(0)">湖北</a></td>
								<td><a href="javascript:void(0)">湖南</a></td>
								<td><a href="javascript:void(0)">广东</a></td>
								<td><a href="javascript:void(0)">广西</a></td>
							</tr>
							<tr>
								<td><a href="javascript:void(0)">江西</a></td>
								<td><a href="javascript:void(0)">四川</a></td>
								<td><a href="javascript:void(0)">海南</a></td>
								<td><a href="javascript:void(0)">贵州</a></td>
								<td><a href="javascript:void(0)">云南</a></td>
							</tr>
							<tr>
								<td><a href="javascript:void(0)">西藏</a></td>
								<td><a href="javascript:void(0)">陕西</a></td>
								<td><a href="javascript:void(0)">甘肃</a></td>
								<td><a href="javascript:void(0)">青海</a></td>
								<td><a href="javascript:void(0)">宁夏</a></td>
							</tr>
							<tr>
								<td><a href="javascript:void(0)">新疆</a></td>
								<td><a href="javascript:void(0)">港澳</a></td>
								<td><a href="javascript:void(0)">台湾</a></td>
								<td><a href="javascript:void(0)">钓鱼岛</a></td>
								<td><a href="javascript:void(0)">海外</a></td>
							</tr>
						</table>
				
					</div>
				
					<!-- 我的京东 -->
					<div class="MyJD">
						<div class="MyJD-shang">
							<div class="MyJD-shang-icon1">待处理订单</div>
							<div class="MyJD-shang-icon1">返修退换货</div>
							<div class="MyJD-shang-icon1">降价商品</div>
							<div class="MyJD-shang-icon1">消息</div>
							<div class="MyJD-shang-icon1">我的问答</div>
							<div class="MyJD-shang-icon1">我的关注</div>
						</div>
						<div class="MyJD-xia">
							<div class="MyJD-shang-icon1">我的京豆</div>
							<div class="MyJD-shang-icon1">我的白条</div>
							<div class="MyJD-shang-icon1">我的优惠券</div>
							<div class="MyJD-shang-icon1">我的理财</div>
						</div>
					</div>
					<!-- 放大镜 -->
					<div id="bigImg">
						<img src="Jdimg/haiyanru/img/TV1.jpg" />
					</div>
					<div id="lay"></div>
				
					<!-- 免费提供旧机回收服务 -->
					<div class="freeOffer">免费提供旧机回收服务，完成回收服务后获得京东E卡或京东钱包现金再次用于京东消费。</div>
				
					<!--Haier电视下的隐藏框  -->
					<div class="content2">
						<ul class="br-reco">
							<li class="br-reco-li">
								<div class="br-reco-img">
									<a href="javascript:void(0)"> <img src="Jdimg/haiyanru/img/RoseA.jpg" />
									</a>
								</div>
								<div class="p-name">
									<a href="javascript:void(0)">模卡（MOOKA）U65H3 65英寸 4K安卓智能网络纤薄窄边框UHD高清LED液晶电视（金色）</a>
								</div>
								<div class="p-price">
									<stong>￥3699.00</stong>
								</div>
							</li>
				
				
							<li class="br-reco-li">
								<div class="br-reco-img">
									<a href="javascript:void(0)"> <img src="Jdimg/haiyanru/img/RoseB.jpg" />
									</a>
								</div>
								<div class="p-name">
									<a href="javascript:void(0)">海尔（Haier）LS55A51 55英寸 4K安卓智能网络超窄边框UHD高清LED液晶电视</a>
								</div>
								<div class="p-price">
									<stong>￥2599.00</stong>
								</div>
							</li>
				
							<li class="br-reco-li">
								<div class="br-reco-img">
									<a href="javascript:void(0)"> <img src="Jdimg/haiyanru/img/RoseC.jpg" />
									</a>
								</div>
								<div class="p-name">
									<a href="javascript:void(0)">海尔（Haier）LQ55H71 55英寸 4K曲面安卓智能UHD高清LED液晶电视</a>
								</div>
								<div class="p-price">
									<stong>￥3099.00</stong>
								</div>
							</li>
						</ul>
						<ul class="br-list">
				
							<li class="br-list-li"><a href="javascript:void(0)">小米（MI）</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)">海信（Hisense）</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)"> 创维（Skyworth））</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)">TCL 海尔（Haier））</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)"> 康佳（KONKA）</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)"> 长虹（CHANGHONG）</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)"> 酷开（coocaa）</a></li>
				
							<li class="br-list-li"><a href="javascript:void(0)"> 更多>></a></li>
						</ul>
					</div>
				
				
				<!--引入bootstrap需要的js文件-->
					<script src="js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
					<script src="js/jquery-1.9.1.js" type="text/javascript" charset="utf-8"></script>
					<script src="js/jquery-1.7.2.js" type="text/javascript" charset="utf-8"></script>
					<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
					
					
					<script type="text/javascript">
						
			
					$(document).ready(function() {
					
						//		省市联动
						$(".BJDB").mouseover(function() {
							$(".hide-city").show();
						});
						$(".hide-city").mouseover(function() {
					
							$(".hide-city").show();
						});
					
						$(".BJDB").mouseout(function() {
							$(".hide-city").hide();
						});
					
						$(".hide-city").mouseout(function() {
					
							$(".hide-city").hide();
						});
					
					
					
						//		我的京东
						$(".my-jd").mouseover(function() {
							$(".MyJD").show();
						});
						$(".MyJD").mouseover(function() {
					
							$(".MyJD").show();
						});
					
						$(".my-jd").mouseout(function() {
							$(".MyJD").hide();
						});
						$(".MyJD").mouseout(function() {
					
							$(".MyJD").hide();
						});
						
						
						
						//家电回收
						
						$("TV-recyle-li").mouseover(function() {
							$(".freeOffer").show();
							
							
						});
						$("TV-recyle-li").mouseout(function() {
							$(".freeOffer").hide();
							
						});
						
						//免费服务说明
							
						$(".TV-recyleBox").mouseover(function() {
							$(".freeOffer").show();
							$(".address-inner").hide();
						});
							
						$(".TV-recyleBox").mouseout(function() {
							$(".freeOffer").hide();
							$(".address-inner").show();
						});
						
						//海尔电视下的隐藏框
						$(".Haier").mouseover(function() {
							$(".content2").show();
							$(".address-inner").hide();
						});
						
						$(".Haier").mouseout(function() {
							$(".content2").hide();
							$(".address-inner").show();
						});
						
						
			
						
						
						//购买数量框
						
						var add = $(".Buy-num-add");
						var del = $(".Buy-num-reduce")
						var title = $(".Buy-num");
						
						
						//购物车增加与减少
						add.click(function() {
							var count = $(this).prev().val();
							if(count < 200) {
								$(this).prev().val(++count);
			
							} else {
								alert('商品数量最多为5');
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
						
						
						//触到小图片时的红色框
						
						
						
						
						
					});
					
				

					//主页面js结束
					
					
				//送货地址选择的js	
				
				
					!function ($) {
				$.extend({
					_jsonp : {
						scripts : {},
						counter : 1,
						charset : "gb2312",
						head : document.getElementsByTagName("head")[0],
						name : function (callback) {
							var name = "_jsonp_" + (new Date).getTime() + "_" + this.counter;
							this.counter++;
							var cb = function (json) {
								eval("delete " + name),
								callback(json),
								$._jsonp.head.removeChild($._jsonp.scripts[name]),
								delete $._jsonp.scripts[name]
							};
							return eval(name + " = cb"),
							name
						},
						load : function (a, b) {
							var c = document.createElement("script");
							c.type = "text/javascript",
							c.charset = this.charset,
							c.src = a,
							this.head.appendChild(c),
							this.scripts[b] = c
						}
					},
					getJSONP : function (a, b) {
						var c = $._jsonp.name(b),
						a = a.replace(/{callback};/, c);
						return $._jsonp.load(a, c),
						this
					}
				})
			}
			(jQuery);
			
			var iplocation = {"北京": { id: "1", root: 0, djd: 1,c:72 },
								"上海": { id: "2", root: 1, djd: 1,c:78 },
								"天津": { id: "3", root: 0, djd: 1,c:51035 },
								"重庆": { id: "4", root: 3, djd: 1,c:113 },
								"河北": { id: "5", root: 0, djd: 1,c:142 },
								"山西": { id: "6", root: 0, djd: 1,c:303 },
								"河南": { id: "7", root: 0, djd: 1,c:412 },
								"辽宁": { id: "8", root: 0, djd: 1,c:560 },
								"吉林": { id: "9", root: 0, djd: 1,c:639 },
								"黑龙江": { id: "10", root: 0, djd: 1,c:698 },
								"内蒙古": { id: "11", root: 0, djd: 0,c:799 },
								"江苏": { id: "12", root: 1, djd: 1,c:904 },
								"山东": { id: "13", root: 0, djd: 1,c:1000 },
								"安徽": { id: "14", root: 1, djd: 1,c:1116 },
								"浙江": { id: "15", root: 1, djd: 1,c:1158 },
								"福建": { id: "16", root: 2, djd: 1,c:1303 },
								"湖北": { id: "17", root: 0, djd: 1,c:1381 },
								"湖南": { id: "18", root: 2, djd: 1,c:1482 },
								"广东": { id: "19", root: 2, djd: 1,c:1601 },
								"广西": { id: "20", root: 2, djd: 1,c:1715 },
								"江西": { id: "21", root: 2, djd: 1,c:1827 },
								"四川": { id: "22", root: 3, djd: 1,c:1930 },
								"海南": { id: "23", root: 2, djd: 1,c:2121 },
								"贵州": { id: "24", root: 3, djd: 1,c:2144 },
								"云南": { id: "25", root: 3, djd: 1,c:2235 },
								"西藏": { id: "26", root: 3, djd: 0,c:2951 },
								"陕西": { id: "27", root: 3, djd: 1,c:2376 },
								"甘肃": { id: "28", root: 3, djd: 1,c:2487 },
								"青海": { id: "29", root: 3, djd: 0,c:2580 },
								"宁夏": { id: "30", root: 3, djd: 1,c:2628 },
								"新疆": { id: "31", root: 3, djd: 0,c:2652 },
								"台湾": { id: "32", root: 2, djd: 0,c:2768 },
								"香港": { id: "42", root: 2, djd: 0,c:2754 },
								"澳门": { id: "43", root: 2, djd: 0,c:2770 },
								"钓鱼岛": { id: "84", root: 2, djd: 0,c:84 }};
			var provinceCityJson = {"1":[{"id":72,"name":"朝阳区"},{"id":2800,"name":"海淀区"},{"id":2801,"name":"西城区"},
										{"id":2802,"name":"东城区"},{"id":2803,"name":"崇文区"},
										{"id":2804,"name":"宣武区"},{"id":2805,"name":"丰台区"},
										{"id":2806,"name":"石景山区"},{"id":2807,"name":"门头沟"},
										{"id":2808,"name":"房山区"},{"id":2809,"name":"通州区"},
										{"id":2810,"name":"大兴区"},{"id":2812,"name":"顺义区"},
										{"id":2814,"name":"怀柔区"},{"id":2816,"name":"密云区"},
										{"id":2901,"name":"昌平区"},{"id":2953,"name":"平谷区"},
										{"id":3065,"name":"延庆县"}],"2":[{"id":2811,"name":"卢湾区"},
										{"id":2813,"name":"徐汇区"},{"id":2815,"name":"长宁区"},
										{"id":2817,"name":"静安区"},{"id":2820,"name":"闸北区"},
										{"id":2822,"name":"虹口区"},{"id":2823,"name":"杨浦区"},
										{"id":2824,"name":"宝山区"},{"id":2825,"name":"闵行区"},
										{"id":2826,"name":"嘉定区"},{"id":2830,"name":"浦东新区"},
										{"id":2833,"name":"青浦区"},{"id":2834,"name":"松江区"},{"id":2835,"name":"金山区"},{"id":2836,"name":"南汇区"},{"id":2837,"name":"奉贤区"},{"id":2841,"name":"普陀区"},{"id":2919,"name":"崇明县"},{"id":78,"name":"黄浦区"}],"3":[{"id":51035,"name":"东丽区"},{"id":51036,"name":"和平区"},{"id":51037,"name":"河北区"},{"id":51038,"name":"河东区"},{"id":51039,"name":"河西区"},{"id":51040,"name":"红桥区"},{"id":51041,"name":"蓟县"},{"id":51042,"name":"静海县"},{"id":51043,"name":"南开区"},{"id":51044,"name":"塘沽区"},{"id":51045,"name":"西青区"},{"id":51046,"name":"武清区"},{"id":51047,"name":"津南区"},{"id":51048,"name":"汉沽区"},{"id":51049,"name":"大港区"},{"id":51050,"name":"北辰区"},{"id":51051,"name":"宝坻区"},{"id":51052,"name":"宁河县"}],"4":[{"id":113,"name":"万州区"},{"id":114,"name":"涪陵区"},{"id":115,"name":"梁平县"},{"id":119,"name":"南川区"},{"id":123,"name":"潼南县"},{"id":126,"name":"大足区"},{"id":128,"name":"黔江区"},{"id":129,"name":"武隆县"},{"id":130,"name":"丰都县"},{"id":131,"name":"奉节县"},{"id":132,"name":"开县"},{"id":133,"name":"云阳县"},{"id":134,"name":"忠县"},{"id":135,"name":"巫溪县"},{"id":136,"name":"巫山县"},{"id":137,"name":"石柱县"},{"id":138,"name":"彭水县"},{"id":139,"name":"垫江县"},{"id":140,"name":"酉阳县"},{"id":141,"name":"秀山县"},{"id":48131,"name":"璧山县"},{"id":48132,"name":"荣昌县"},{"id":48133,"name":"铜梁县"},{"id":48201,"name":"合川区"},{"id":48202,"name":"巴南区"},{"id":48203,"name":"北碚区"},{"id":48204,"name":"江津区"},{"id":48205,"name":"渝北区"},{"id":48206,"name":"长寿区"},{"id":48207,"name":"永川区"},{"id":50950,"name":"江北区"},{"id":50951,"name":"南岸区"},{"id":50952,"name":"九龙坡区"},{"id":50953,"name":"沙坪坝区"},{"id":50954,"name":"大渡口区"},{"id":50995,"name":"綦江区"},{"id":51026,"name":"渝中区"},{"id":51027,"name":"高新区"},{"id":51028,"name":"北部新区"},{"id":4164,"name":"城口县"},{"id":3076,"name":"高新区"}],"5":[{"id":142,"name":"石家庄市"},{"id":148,"name":"邯郸市"},{"id":164,"name":"邢台市"},{"id":199,"name":"保定市"},{"id":224,"name":"张家口市"},{"id":239,"name":"承德市"},{"id":248,"name":"秦皇岛市"},{"id":258,"name":"唐山市"},{"id":264,"name":"沧州市"},{"id":274,"name":"廊坊市"},{"id":275,"name":"衡水市"}],"6":[{"id":303,"name":"太原市"},{"id":309,"name":"大同市"},{"id":318,"name":"阳泉市"},{"id":325,"name":"晋城市"},{"id":330,"name":"朔州市"},{"id":336,"name":"晋中市"},{"id":350,"name":"忻州市"},{"id":368,"name":"吕梁市"},{"id":379,"name":"临汾市"},{"id":398,"name":"运城市"},{"id":3074,"name":"长治市"}],"7":[{"id":412,"name":"郑州市"},{"id":420,"name":"开封市"},{"id":427,"name":"洛阳市"},{"id":438,"name":"平顶山市"},{"id":446,"name":"焦作市"},{"id":454,"name":"鹤壁市"},{"id":458,"name":"新乡市"},{"id":468,"name":"安阳市"},{"id":475,"name":"濮阳市"},{"id":482,"name":"许昌市"},{"id":489,"name":"漯河市"},{"id":495,"name":"三门峡市"},{"id":502,"name":"南阳市"},{"id":517,"name":"商丘市"},{"id":527,"name":"周口市"},{"id":538,"name":"驻马店市"},{"id":549,"name":"信阳市"},{"id":2780,"name":"济源市"}],"8":[{"id":560,"name":"沈阳市"},{"id":573,"name":"大连市"},{"id":579,"name":"鞍山市"},{"id":584,"name":"抚顺市"},{"id":589,"name":"本溪市"},{"id":593,"name":"丹东市"},{"id":598,"name":"锦州市"},{"id":604,"name":"葫芦岛市"},{"id":609,"name":"营口市"},{"id":613,"name":"盘锦市"},{"id":617,"name":"阜新市"},{"id":621,"name":"辽阳市"},{"id":632,"name":"朝阳市"},{"id":6858,"name":"铁岭市"}],"9":[{"id":639,"name":"长春市"},{"id":644,"name":"吉林市"},{"id":651,"name":"四平市"},{"id":2992,"name":"辽源市"},{"id":657,"name":"通化市"},{"id":664,"name":"白山市"},{"id":674,"name":"松原市"},{"id":681,"name":"白城市"},{"id":687,"name":"延边州"}],"10":[{"id":727,"name":"鹤岗市"},{"id":731,"name":"双鸭山市"},{"id":737,"name":"鸡西市"},{"id":742,"name":"大庆市"},{"id":753,"name":"伊春市"},{"id":757,"name":"牡丹江市"},{"id":765,"name":"佳木斯市"},{"id":773,"name":"七台河市"},{"id":776,"name":"黑河市"},{"id":782,"name":"绥化市"},{"id":793,"name":"大兴安岭地区"},{"id":698,"name":"哈尔滨市"},{"id":712,"name":"齐齐哈尔市"}],"11":[{"id":799,"name":"呼和浩特市"},{"id":805,"name":"包头市"},{"id":810,"name":"乌海市"},{"id":812,"name":"赤峰市"},{"id":823,"name":"乌兰察布市"},{"id":835,"name":"锡林郭勒盟"},{"id":848,"name":"呼伦贝尔市"},{"id":870,"name":"鄂尔多斯市"},{"id":880,"name":"巴彦淖尔市"},{"id":891,"name":"阿拉善盟"},{"id":895,"name":"兴安盟"},{"id":902,"name":"通辽市"}],"12":[{"id":904,"name":"南京市"},{"id":911,"name":"徐州市"},{"id":919,"name":"连云港市"},{"id":925,"name":"淮安市"},{"id":933,"name":"宿迁市"},{"id":939,"name":"盐城市"},{"id":951,"name":"扬州市"},{"id":959,"name":"泰州市"},{"id":965,"name":"南通市"},{"id":972,"name":"镇江市"},{"id":978,"name":"常州市"},{"id":984,"name":"无锡市"},{"id":988,"name":"苏州市"}],"13":[{"id":2900,"name":"济宁市"},{"id":1000,"name":"济南市"},{"id":1007,"name":"青岛市"},{"id":1016,"name":"淄博市"},{"id":1022,"name":"枣庄市"},{"id":1025,"name":"东营市"},{"id":1032,"name":"潍坊市"},{"id":1042,"name":"烟台市"},{"id":1053,"name":"威海市"},{"id":1058,"name":"莱芜市"},{"id":1060,"name":"德州市"},{"id":1072,"name":"临沂市"},{"id":1081,"name":"聊城市"},{"id":1090,"name":"滨州市"},{"id":1099,"name":"菏泽市"},{"id":1108,"name":"日照市"},{"id":1112,"name":"泰安市"}],"14":[{"id":1151,"name":"黄山市"},{"id":1159,"name":"滁州市"},{"id":1167,"name":"阜阳市"},{"id":1174,"name":"亳州市"},{"id":1180,"name":"宿州市"},{"id":1201,"name":"池州市"},{"id":1206,"name":"六安市"},{"id":2971,"name":"宣城市"},{"id":1114,"name":"铜陵市"},{"id":1116,"name":"合肥市"},{"id":1121,"name":"淮南市"},{"id":1124,"name":"淮北市"},{"id":1127,"name":"芜湖市"},{"id":1132,"name":"蚌埠市"},{"id":1137,"name":"马鞍山市"},{"id":1140,"name":"安庆市"}],"15":[{"id":1158,"name":"宁波市"},{"id":1273,"name":"衢州市"},{"id":1280,"name":"丽水市"},{"id":1290,"name":"台州市"},{"id":1298,"name":"舟山市"},{"id":1213,"name":"杭州市"},{"id":1233,"name":"温州市"},{"id":1243,"name":"嘉兴市"},{"id":1250,"name":"湖州市"},{"id":1255,"name":"绍兴市"},{"id":1262,"name":"金华市"}],"16":[{"id":1303,"name":"福州市"},{"id":1315,"name":"厦门市"},{"id":1317,"name":"三明市"},{"id":1329,"name":"莆田市"},{"id":1332,"name":"泉州市"},{"id":1341,"name":"漳州市"},{"id":1352,"name":"南平市"},{"id":1362,"name":"龙岩市"},{"id":1370,"name":"宁德市"}],"17":[{"id":1432,"name":"孝感市"},{"id":1441,"name":"黄冈市"},{"id":1458,"name":"咸宁市"},{"id":1466,"name":"恩施州"},{"id":1475,"name":"鄂州市"},{"id":1477,"name":"荆门市"},{"id":1479,"name":"随州市"},{"id":3154,"name":"神农架林区"},{"id":1381,"name":"武汉市"},{"id":1387,"name":"黄石市"},{"id":1396,"name":"襄阳市"},{"id":1405,"name":"十堰市"},{"id":1413,"name":"荆州市"},{"id":1421,"name":"宜昌市"},{"id":2922,"name":"潜江市"},{"id":2980,"name":"天门市"},{"id":2983,"name":"仙桃市"}],"18":[{"id":4250,"name":"耒阳市"},{"id":1482,"name":"长沙市"},{"id":1488,"name":"株洲市"},{"id":1495,"name":"湘潭市"},{"id":1499,"name":"韶山市"},{"id":1501,"name":"衡阳市"},{"id":1511,"name":"邵阳市"},{"id":1522,"name":"岳阳市"},{"id":1530,"name":"常德市"},{"id":1540,"name":"张家界市"},{"id":1544,"name":"郴州市"},{"id":1555,"name":"益阳市"},{"id":1560,"name":"永州市"},{"id":1574,"name":"怀化市"},{"id":1586,"name":"娄底市"},{"id":1592,"name":"湘西州"}],"19":[{"id":1601,"name":"广州市"},{"id":1607,"name":"深圳市"},{"id":1609,"name":"珠海市"},{"id":1611,"name":"汕头市"},{"id":1617,"name":"韶关市"},{"id":1627,"name":"河源市"},{"id":1634,"name":"梅州市"},{"id":1709,"name":"揭阳市"},{"id":1643,"name":"惠州市"},{"id":1650,"name":"汕尾市"},{"id":1655,"name":"东莞市"},{"id":1657,"name":"中山市"},{"id":1659,"name":"江门市"},{"id":1666,"name":"佛山市"},{"id":1672,"name":"阳江市"},{"id":1677,"name":"湛江市"},{"id":1684,"name":"茂名市"},{"id":1690,"name":"肇庆市"},{"id":1698,"name":"云浮市"},{"id":1704,"name":"清远市"},{"id":1705,"name":"潮州市"}],"20":[{"id":3168,"name":"崇左市"},{"id":1715,"name":"南宁市"},{"id":1720,"name":"柳州市"},{"id":1726,"name":"桂林市"},{"id":1740,"name":"梧州市"},{"id":1746,"name":"北海市"},{"id":1749,"name":"防城港市"},{"id":1753,"name":"钦州市"},{"id":1757,"name":"贵港市"},{"id":1761,"name":"玉林市"},{"id":1792,"name":"贺州市"},{"id":1806,"name":"百色市"},{"id":1818,"name":"河池市"},{"id":3044,"name":"来宾市"}],"21":[{"id":1827,"name":"南昌市"},{"id":1832,"name":"景德镇市"},{"id":1836,"name":"萍乡市"},{"id":1842,"name":"新余市"},{"id":1845,"name":"九江市"},{"id":1857,"name":"鹰潭市"},{"id":1861,"name":"上饶市"},{"id":1874,"name":"宜春市"},{"id":1885,"name":"抚州市"},{"id":1898,"name":"吉安市"},{"id":1911,"name":"赣州市"}],"22":[{"id":2103,"name":"凉山州"},{"id":1930,"name":"成都市"},{"id":1946,"name":"自贡市"},{"id":1950,"name":"攀枝花市"},{"id":1954,"name":"泸州市"},{"id":1960,"name":"绵阳市"},{"id":1962,"name":"德阳市"},{"id":1977,"name":"广元市"},{"id":1983,"name":"遂宁市"},{"id":1988,"name":"内江市"},{"id":1993,"name":"乐山市"},{"id":2005,"name":"宜宾市"},{"id":2016,"name":"广安市"},{"id":2022,"name":"南充市"},{"id":2033,"name":"达州市"},{"id":2042,"name":"巴中市"},{"id":2047,"name":"雅安市"},{"id":2058,"name":"眉山市"},{"id":2065,"name":"资阳市"},{"id":2070,"name":"阿坝州"},{"id":2084,"name":"甘孜州"}],"23":[{"id":3690,"name":"三亚市"},{"id":3698,"name":"文昌市"},{"id":3699,"name":"五指山市"},{"id":3701,"name":"临高县"},{"id":3702,"name":"澄迈县"},{"id":3703,"name":"定安县"},{"id":3704,"name":"屯昌县"},{"id":3705,"name":"昌江县"},{"id":3706,"name":"白沙县"},{"id":3707,"name":"琼中县"},{"id":3708,"name":"陵水县"},{"id":3709,"name":"保亭县"},{"id":3710,"name":"乐东县"},{"id":3711,"name":"三沙市"},{"id":2121,"name":"海口市"},{"id":3115,"name":"琼海市"},{"id":3137,"name":"万宁市"},{"id":3173,"name":"东方市"},{"id":3034,"name":"儋州市"}],"24":[{"id":2144,"name":"贵阳市"},{"id":2150,"name":"六盘水市"},{"id":2155,"name":"遵义市"},{"id":2169,"name":"铜仁市"},{"id":2180,"name":"毕节市"},{"id":2189,"name":"安顺市"},{"id":2196,"name":"黔西南州"},{"id":2205,"name":"黔东南州"},{"id":2222,"name":"黔南州"}],"25":[{"id":4108,"name":"迪庆州"},{"id":2235,"name":"昆明市"},{"id":2247,"name":"曲靖市"},{"id":2258,"name":"玉溪市"},{"id":2270,"name":"昭通市"},{"id":2281,"name":"普洱市"},{"id":2291,"name":"临沧市"},{"id":2298,"name":"保山市"},{"id":2304,"name":"丽江市"},{"id":2309,"name":"文山州"},{"id":2318,"name":"红河州"},{"id":2332,"name":"西双版纳州"},{"id":2336,"name":"楚雄州"},{"id":2347,"name":"大理州"},{"id":2360,"name":"德宏州"},{"id":2366,"name":"怒江州"}],"26":[{"id":3970,"name":"阿里地区"},{"id":3971,"name":"林芝地区"},{"id":2951,"name":"拉萨市"},{"id":3107,"name":"那曲地区"},{"id":3129,"name":"山南地区"},{"id":3138,"name":"昌都地区"},{"id":3144,"name":"日喀则地区"}],"27":[{"id":2428,"name":"延安市"},{"id":2442,"name":"汉中市"},{"id":2454,"name":"榆林市"},{"id":2468,"name":"商洛市"},{"id":2476,"name":"安康市"},{"id":2376,"name":"西安市"},{"id":2386,"name":"铜川市"},{"id":2390,"name":"宝鸡市"},{"id":2402,"name":"咸阳市"},{"id":2416,"name":"渭南市"}],"28":[{"id":2525,"name":"庆阳市"},{"id":2534,"name":"陇南市"},{"id":2544,"name":"武威市"},{"id":2549,"name":"张掖市"},{"id":2556,"name":"酒泉市"},{"id":2564,"name":"甘南州"},{"id":2573,"name":"临夏州"},{"id":3080,"name":"定西市"},{"id":2487,"name":"兰州市"},{"id":2492,"name":"金昌市"},{"id":2495,"name":"白银市"},{"id":2501,"name":"天水市"},{"id":2509,"name":"嘉峪关市"},{"id":2518,"name":"平凉市"}],"29":[{"id":2580,"name":"西宁市"},{"id":2585,"name":"海东地区"},{"id":2592,"name":"海北州"},{"id":2597,"name":"黄南州"},{"id":2603,"name":"海南州"},{"id":2605,"name":"果洛州"},{"id":2612,"name":"玉树州"},{"id":2620,"name":"海西州"}],"30":[{"id":2628,"name":"银川市"},{"id":2632,"name":"石嘴山市"},{"id":2637,"name":"吴忠市"},{"id":2644,"name":"固原市"},{"id":3071,"name":"中卫市"}],"31":[{"id":4110,"name":"五家渠市"},{"id":4163,"name":"博尔塔拉蒙古自治州阿拉山口口岸"},{"id":15945,"name":"阿拉尔市"},{"id":15946,"name":"图木舒克市"},{"id":2652,"name":"乌鲁木齐市"},{"id":2654,"name":"克拉玛依市"},{"id":2656,"name":"石河子市"},{"id":2658,"name":"吐鲁番地区"},{"id":2662,"name":"哈密地区"},{"id":2666,"name":"和田地区"},{"id":2675,"name":"阿克苏地区"},{"id":2686,"name":"喀什地区"},{"id":2699,"name":"克孜勒苏州"},{"id":2704,"name":"巴音郭楞州"},{"id":2714,"name":"昌吉州"},{"id":2723,"name":"博尔塔拉州"},{"id":2727,"name":"伊犁州"},{"id":2736,"name":"塔城地区"},{"id":2744,"name":"阿勒泰地区"}],"32":[{"id":2768,"name":"台湾市"}],"42":[{"id":2754,"name":"香港特别行政区"}],"43":[{"id":2770,"name":"澳门市"}],"84":[{"id":1310,"name":"钓鱼岛"}]};
			var cName = "ipLocation";
			var currentLocation = "北京";
			var currentProvinceId = 1;
			
			//根据省份ID获取名称
			function getNameById(provinceId){
				for(var o in iplocation){
					if (iplocation[o]&&iplocation[o].id==provinceId){
						return o;
					}
				}
				return "北京";
			}
			
			var isUseServiceLoc = true; //是否默认使用服务端地址
			var provinceHtml = '<div class="content"><div data-widget="tabs" class="m JD-stock" id="JD-stock">'
											+'<div class="mt">'
											+'    <ul class="tab">'
											+'        <li data-index="0" data-widget="tab-item" class="curr"><a href="javascript:void(0)" class="hover"><em>请选择</em><i></i></a></li>'
											+'        <li data-index="1" data-widget="tab-item" style="display:none;"><a href="javascript:void(0)" class=""><em>请选择</em><i></i></a></li>'
											+'        <li data-index="2" data-widget="tab-item" style="display:none;"><a href="javascript:void(0)" class=""><em>请选择</em><i></i></a></li>'
											+'        <li data-index="3" data-widget="tab-item" style="display:none;"><a href="javascript:void(0)" class=""><em>请选择</em><i></i></a></li>'
											+'    </ul>'
											+'    <div class="stock-line"></div>'
											+'</div>'
											+'<div class="mc" data-area="0" data-widget="tab-content" id="stock_province_item">'
											+'    <ul class="area-list">'
											+'       <li><a href="javascript:void(0)" data-value="1">北京</a></li><li><a href="javascript:void(0)" data-value="2">上海</a></li><li><a href="javascript:void(0)" data-value="3">天津</a></li><li><a href="javascript:void(0)" data-value="4">重庆</a></li><li><a href="javascript:void(0)" data-value="5">河北</a></li><li><a href="javascript:void(0)" data-value="6">山西</a></li><li><a href="javascript:void(0)" data-value="7">河南</a></li><li><a href="javascript:void(0)" data-value="8">辽宁</a></li><li><a href="javascript:void(0)" data-value="9">吉林</a></li><li><a href="javascript:void(0)" data-value="10">黑龙江</a></li><li><a href="javascript:void(0)" data-value="11">内蒙古</a></li><li><a href="javascript:void(0)" data-value="12">江苏</a></li><li><a href="javascript:void(0)" data-value="13">山东</a></li><li><a href="javascript:void(0)" data-value="14">安徽</a></li><li><a href="javascript:void(0)" data-value="15">浙江</a></li><li><a href="javascript:void(0)" data-value="16">福建</a></li><li><a href="javascript:void(0)" data-value="17">湖北</a></li><li><a href="javascript:void(0)" data-value="18">湖南</a></li><li><a href="javascript:void(0)" data-value="19">广东</a></li><li><a href="javascript:void(0)" data-value="20">广西</a></li><li><a href="javascript:void(0)" data-value="21">江西</a></li><li><a href="javascript:void(0)" data-value="22">四川</a></li><li><a href="javascript:void(0)" data-value="23">海南</a></li><li><a href="javascript:void(0)" data-value="24">贵州</a></li><li><a href="javascript:void(0)" data-value="25">云南</a></li><li><a href="javascript:void(0)" data-value="26">西藏</a></li><li><a href="javascript:void(0)" data-value="27">陕西</a></li><li><a href="javascript:void(0)" data-value="28">甘肃</a></li><li><a href="javascript:void(0)" data-value="29">青海</a></li><li><a href="javascript:void(0)" data-value="30">宁夏</a></li><li><a href="javascript:void(0)" data-value="31">新疆</a></li><li><a href="javascript:void(0)" data-value="32">台湾</a></li><li><a href="javascript:void(0)" data-value="42">香港</a></li><li><a href="javascript:void(0)" data-value="43">澳门</a></li><li><a href="javascript:void(0)" data-value="84">钓鱼岛</a></li>'
											+'    </ul>'
											+'</div>'
											+'<div class="mc" data-area="1" data-widget="tab-content" id="stock_city_item"></div>'
											+'<div class="mc" data-area="2" data-widget="tab-content" id="stock_area_item"></div>'
											+'<div class="mc" data-area="3" data-widget="tab-content" id="stock_town_item"></div>'
											+'</div></div>';
			function getAreaList(result){
				var html = ["<ul class='area-list'>"];
				var longhtml = [];
				var longerhtml = [];
				if (result&&result.length > 0){
					for (var i=0,j=result.length;i<j ;i++ ){
						result[i].name = result[i].name.replace(" ","");
						if(result[i].name.length > 12){
							longerhtml.push("<li class='longer-area'><a href='javascript:void(0)' data-value='"+result[i].id+"'>"+result[i].name+"</a></li>");
						}
						else if(result[i].name.length > 5){
							longhtml.push("<li class='long-area'><a href='javascript:void(0)' data-value='"+result[i].id+"'>"+result[i].name+"</a></li>");
						}
						else{
							html.push("<li><a href='javascript:void(0)' data-value='"+result[i].id+"'>"+result[i].name+"</a></li>");
						}
					}
				}
				else{
					html.push("<li><a href='javascript:void(0)' data-value='"+currentAreaInfo.currentFid+"'> </a></li>");
				}
				html.push(longhtml.join(""));
				html.push(longerhtml.join(""));
				html.push("</ul>");
				return html.join("");
			}
			function cleanKuohao(str){
				if(str&&str.indexOf("(")>0){
					str = str.substring(0,str.indexOf("("));
				}
				if(str&&str.indexOf("（")>0){
					str = str.substring(0,str.indexOf("（"));
				}
				return str;
			}
			
			function getStockOpt(id,name){
				if(currentAreaInfo.currentLevel==3){
					currentAreaInfo.currentAreaId = id;
					currentAreaInfo.currentAreaName = name;
					if(!page_load){
						currentAreaInfo.currentTownId = 0;
						currentAreaInfo.currentTownName = "";
					}
				}
				else if(currentAreaInfo.currentLevel==4){
					currentAreaInfo.currentTownId = id;
					currentAreaInfo.currentTownName = name;
				}
				//添加20140224
				$('#store-selector').removeClass('hover');
				//setCommonCookies(currentAreaInfo.currentProvinceId,currentLocation,currentAreaInfo.currentCityId,currentAreaInfo.currentAreaId,currentAreaInfo.currentTownId,!page_load);
				if(page_load){
					page_load = false;
				}
				//替换gSC
				var address = currentAreaInfo.currentProvinceName+currentAreaInfo.currentCityName+currentAreaInfo.currentAreaName+currentAreaInfo.currentTownName;
				$("#store-selector .text div").html(currentAreaInfo.currentProvinceName+cleanKuohao(currentAreaInfo.currentCityName)+cleanKuohao(currentAreaInfo.currentAreaName)+cleanKuohao(currentAreaInfo.currentTownName)).attr("title",address);
			}
			function getAreaListcallback(r){
				currentDom.html(getAreaList(r));
				if (currentAreaInfo.currentLevel >= 2){
					currentDom.find("a").click(function(){
						if(page_load){
							page_load = false;
						}
						if(currentDom.attr("id")=="stock_area_item"){
							currentAreaInfo.currentLevel=3;
						}
						else if(currentDom.attr("id")=="stock_town_item"){
							currentAreaInfo.currentLevel=4;
						}
						getStockOpt($(this).attr("data-value"),$(this).html());
					});
					if(page_load){ //初始化加载
						currentAreaInfo.currentLevel = currentAreaInfo.currentLevel==2?3:4;
						if(currentAreaInfo.currentAreaId&&new Number(currentAreaInfo.currentAreaId)>0){
							getStockOpt(currentAreaInfo.currentAreaId,currentDom.find("a[data-value='"+currentAreaInfo.currentAreaId+"']").html());
						}
						else{
							getStockOpt(currentDom.find("a").eq(0).attr("data-value"),currentDom.find("a").eq(0).html());
						}
					}
				}
			}
			function chooseProvince(provinceId){
				provinceContainer.hide();
				currentAreaInfo.currentLevel = 1;
				currentAreaInfo.currentProvinceId = provinceId;
				currentAreaInfo.currentProvinceName = getNameById(provinceId);
				if(!page_load){
					currentAreaInfo.currentCityId = 0;
					currentAreaInfo.currentCityName = "";
					currentAreaInfo.currentAreaId = 0;
					currentAreaInfo.currentAreaName = "";
					currentAreaInfo.currentTownId = 0;
					currentAreaInfo.currentTownName = "";
				}
				areaTabContainer.eq(0).removeClass("curr").find("em").html(currentAreaInfo.currentProvinceName);
				areaTabContainer.eq(1).addClass("curr").show().find("em").html("请选择");
				areaTabContainer.eq(2).hide();
				areaTabContainer.eq(3).hide();
				cityContainer.show();
				areaContainer.hide();
				townaContainer.hide();
				if(provinceCityJson[""+provinceId]){
					cityContainer.html(getAreaList(provinceCityJson[""+provinceId]));
					cityContainer.find("a").click(function(){
						if(page_load){
							page_load = false;
						}
						$("#store-selector").unbind("mouseout");
						chooseCity($(this).attr("data-value"),$(this).html());
					});
					if(page_load){ //初始化加载
						if(currentAreaInfo.currentCityId&&new Number(currentAreaInfo.currentCityId)>0){
							chooseCity(currentAreaInfo.currentCityId,cityContainer.find("a[data-value='"+currentAreaInfo.currentCityId+"']").html());
						}
						else{
							chooseCity(cityContainer.find("a").eq(0).attr("data-value"),cityContainer.find("a").eq(0).html());
						}
					}
				}
			}
			function chooseCity(cityId,cityName){
				provinceContainer.hide();
				cityContainer.hide();
				currentAreaInfo.currentLevel = 2;
				currentAreaInfo.currentCityId = cityId;
				currentAreaInfo.currentCityName = cityName;
				if(!page_load){
					currentAreaInfo.currentAreaId = 0;
					currentAreaInfo.currentAreaName = "";
					currentAreaInfo.currentTownId = 0;
					currentAreaInfo.currentTownName = "";
				}
				areaTabContainer.eq(1).removeClass("curr").find("em").html(cityName);
				areaTabContainer.eq(2).addClass("curr").show().find("em").html("请选择");
				areaTabContainer.eq(3).hide();
				areaContainer.show().html("<div class='iloading'>正在加载中，请稍候...</div>");
				townaContainer.hide();
				currentDom = areaContainer;
				$.getJSONP("http://d.360buy.com/area/get?fid="+cityId+"&callback=getAreaListcallback");
			}
			function chooseArea(areaId,areaName){
				provinceContainer.hide();
				cityContainer.hide();
				areaContainer.hide();
				currentAreaInfo.currentLevel = 3;
				currentAreaInfo.currentAreaId = areaId;
				currentAreaInfo.currentAreaName = areaName;
				if(!page_load){
					currentAreaInfo.currentTownId = 0;
					currentAreaInfo.currentTownName = "";
				}
				areaTabContainer.eq(2).removeClass("curr").find("em").html(areaName);
				areaTabContainer.eq(3).addClass("curr").show().find("em").html("请选择");
				townaContainer.show().html("<div class='iloading'>正在加载中，请稍候...</div>");
				currentDom = townaContainer;
				$.getJSONP("http://d.360buy.com/area/get?fid="+areaId+"&callback=getAreaListcallback");
			}
			$("#store-selector .text").after(provinceHtml);
			var areaTabContainer=$("#JD-stock .tab li");
			var provinceContainer=$("#stock_province_item");
			var cityContainer=$("#stock_city_item");
			var areaContainer=$("#stock_area_item");
			var townaContainer=$("#stock_town_item");
			var currentDom = provinceContainer;
			//当前地域信息
			var currentAreaInfo;
			//初始化当前地域信息
			function CurrentAreaInfoInit(){
				currentAreaInfo =  {"currentLevel": 1,"currentProvinceId": 1,"currentProvinceName":"北京","currentCityId": 0,"currentCityName":"","currentAreaId": 0,"currentAreaName":"","currentTownId":0,"currentTownName":""};
				var ipLoc = getCookie("ipLoc-djd");
				ipLoc = ipLoc?ipLoc.split("-"):[1,72,0,0];
				if(ipLoc.length>0&&ipLoc[0]){
					currentAreaInfo.currentProvinceId = ipLoc[0];
					currentAreaInfo.currentProvinceName = getNameById(ipLoc[0]);
				}
				if(ipLoc.length>1&&ipLoc[1]){
					currentAreaInfo.currentCityId = ipLoc[1];
				}
				if(ipLoc.length>2&&ipLoc[2]){
					currentAreaInfo.currentAreaId = ipLoc[2];
				}
				if(ipLoc.length>3&&ipLoc[3]){
					currentAreaInfo.currentTownId = ipLoc[3];
				}
			}
			var page_load = true;
			(function(){
				$("#store-selector").unbind("mouseover").bind("mouseover",function(){
					$('#store-selector').addClass('hover');
					$("#store-selector .content,#JD-stock").show();
				}).find("dl").remove();
				CurrentAreaInfoInit();
				areaTabContainer.eq(0).find("a").click(function(){
					areaTabContainer.removeClass("curr");
					areaTabContainer.eq(0).addClass("curr").show();
					provinceContainer.show();
					cityContainer.hide();
					areaContainer.hide();
					townaContainer.hide();
					areaTabContainer.eq(1).hide();
					areaTabContainer.eq(2).hide();
					areaTabContainer.eq(3).hide();
				});
				areaTabContainer.eq(1).find("a").click(function(){
					areaTabContainer.removeClass("curr");
					areaTabContainer.eq(1).addClass("curr").show();
					provinceContainer.hide();
					cityContainer.show();
					areaContainer.hide();
					townaContainer.hide();
					areaTabContainer.eq(2).hide();
					areaTabContainer.eq(3).hide();
				});
				areaTabContainer.eq(2).find("a").click(function(){
					areaTabContainer.removeClass("curr");
					areaTabContainer.eq(2).addClass("curr").show();
					provinceContainer.hide();
					cityContainer.hide();
					areaContainer.show();
					townaContainer.hide();
					areaTabContainer.eq(3).hide();
				});
				provinceContainer.find("a").click(function() {
					if(page_load){
						page_load = false;
					}
					$("#store-selector").unbind("mouseout");
					chooseProvince($(this).attr("data-value"));
				}).end();
				chooseProvince(currentAreaInfo.currentProvinceId);
			})();
			
			function getCookie(name) {
				var start = document.cookie.indexOf(name + "=");
				var len = start + name.length + 1;
				if ((!start) && (name != document.cookie.substring(0, name.length))) {
					return null;
				}
				if (start == -1) return null;
				var end = document.cookie.indexOf(';', len);
				if (end == -1) end = document.cookie.length;
				return unescape(document.cookie.substring(len, end));
			};
			
			
			//图片显示CY-update
			var $imgsmall = $(".Main-middle-photo ul  li");
			var $imglarge = $("#Main-shang  img");

			console.info($imglarge);
			$imgsmall.mouseover(function() {
				
					$(this).siblings().find("div").removeClass("plsm_curr");
					$(this).find("div").addClass("plsm_curr");
					$imglarge.get(0).src = $(this).find("img").get(0).src;
			});
			
			
			
		</script>
	</body>
</html>
