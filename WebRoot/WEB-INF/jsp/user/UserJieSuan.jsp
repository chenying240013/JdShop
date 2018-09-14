<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>支付页面</title>
	</head>
	<style type="text/css">
		
		body {
	font: 12px/150% Arial, Verdana, "\5b8b\4f53";
	color: #666;
	background: #fff;
}

.w {
	width: 990px;
	margin: 0 auto;
}

.shortcut {
	width: 100%;
	height: 50px;
}

.main {
	padding-bottom: 50px;
}

.payment {
	height: 710px;
	background-color: #fff;
	padding: 12px 30px;
	box-shadow: 0 6px 32px rgba(0, 0, 0, .13);
}

.main-bg {
	display: block;
	background-image: url(img/img/userjiesuanImg/pc_icon_payment-bg.jpg);
}

.payment-load {
	
	width: 710px;
	position: relative;
	min-height: 430px;
}

.jp-logo-wrap {
	position: relative;
}

.jd-logo {
	width: 102px;
	height: 35px;
	position: relative left: -34px;
	top: 0;
	background: url(img/img/userjiesuanImg/pc_icon_title-jdpay.png) no-repeat;
}

.jp-notice {
	height: 32px;
	line-height: 32px;
	margin-left: 110px;
	margin-top: -29px;
	color: #4b5b78;
}

.jn-wrap {
	height: 32px;
	overflow: hidden;
	float: right;
	width: 620px;
	position: relative;
}

.jn-list {
	position: absolute;
	width: 100%;
	top: 0;
	opacity: .6;
}

.jp-tips {
	float: left;
	color: #999;
	opacity: .8;
}

.order {
	position: relative;
	height: 110px;
}

.o-qrcode {
	position: absolute;
	left: 0;
	top: 10px;
	width: 90px;
	height: 90px;
}

.oq-img {
	border: 1px solid #fb9d9d;
	padding: 0;
}

.oq-img img {
	width: 88px;
	height: 88px;
	padding: 1px;
	display: block;
	position: absolute;
	left: 0;
	top: 0;
	z-index: 16;
	cursor: default;
	background: #fff url(img/img/userjiesuanImg/pc_icon_loading.gif) no-repeat center center;
	box-shadow: 0 0 20px rgba(0, 0, 0, .12);
}

.oq-img li {
	position: absolute;
	right: -7px;
	top: 50px;
	width: 7px;
	height: 15px;
	background: url(img/img/userjiesuanImg/border-arrow.png) no-repeat
}

.o-left {
	float: left;
	width: 640px;
	padding-bottom: 32px;
	padding-left: 102px;
}

.o-title {
	line-height: 26px;
	height: 26px;
	overflow: hidden;
	color: #333;
	font-weight: 400;
	font-size: 14px;
	font-family: "Microsoft Yahei";
}

.o-tips {
	line-height: 20px;
	height: 20px;
	line-height: 20px;
}

.o-tips-app-jd {
	width: 16px;
	height: 16px;
	display: inline-block;
	margin: 0 2px;
	vertical-align: text-bottom;
	background: url(img/img/userjiesuanImg/pc_icon_app-icon-jd.png) no-repeat;
}

.o-tips-app-jdjr {
	background: url(img/img/userjiesuanImg/pc_icon_app-icon-jdjr.png) no-repeat;
	width: 16px;
	height: 16px;
	display: inline-block;
	margin: 0 2px;
	vertical-align: text-bottom;
}

.o-tips-div {
	color: #999;
	margin: 0 5px;
}

.o-right {
	float: right;
	width: 190px;
	padding-top: 32px;
	padding-bottom: 10px;
	padding-right: 10px;
	overflow: hidden;
}

.o-price {
	text-align: right;
	line-height: 26px;
}

.o-price em {
	vertical-align: bottom;
}

.o-price strong {
	font-size: 18px;
	vertical-align: bottom;
	color: #e31613;
	margin: 0 3px;
}

.o-detail {
	text-align: right;
	line-height: 20px;
	color: #67a4ff;
}

.o-detail a {
	display: inline-block;
	padding-right: 15px;
	position: relative;
}

.o-detail i {
	right: 0;
	top: 3px;
	position: absolute;
	display: block;
	width: 12px;
	height: 12px;
	background: url(img/img/userjiesuanImg/pc_icon_elements.png) no-repeat -76px -75px;
}

.mt25 {
	margin-top: 25px;
	height: 84px;
	
}

.footer {
	height: 58px;
	padding: 18px 0;
	border-top: 1px solid #ddd;
}

.footer-line {
	line-height: 20px;
	text-align: center;
}

.font-red {
	color: #e31613;
}

.pf-l-copyright {
	margin-right: 40px;
}

.footer-line img {
	vertical-align: middle;
}

.ml40 {
	margin-left: 40px;
}

.s-logo {
	position: absolute;
	left: 0;
	top: 15px;
	color: #666;
	position: relative;
}

.s-logo img {
	vertical-align: middle;
	width: 170px;
	height: 28px;
	position: relative;
}

.s-right {
	float: right;
	padding-top: 20px;
	list-style: none;
}

.s-item {
	height: 20px;
	line-height: 20px;
	padding: 0 11px 0 12px;
	float: left;
}

.s-div {
	float: left;
	color: #ddd;
}

.paychannelBox {
	height: 213px;
	width: 930px;
	
}

.payChanel {
	
}

.paybox-baitiao {
	width: 930px;
	height: 54px;
	border-bottom: 1px solid #eee;
	padding: 0 2px 1px 2px;
}

.p-wrap {
	position: relative;
	_zoom: 1;
	padding-top: 10px;
	padding-bottom: 10px;
}

.p-border {
	display: none;
	position: absolute;
	width: 100%;
	height: 100%;
	left: -2px;
	top: -2px;
	border: 2px solid #b0c2e1;
}
.paybox-selected {
	width: 930px;
	height: 54px;
	border-bottom: 1px solid #eee;
	padding: 0 2px 1px 2px;
	box-shadow: 0 6px 32px rgba(0, 0, 0, .13);
}

.p-key {
	float: left;
	padding-top: 5px;
	padding-left: 18px;
}

.ui-check-disable {
	cursor: default;
}

.ui-checkbox-L {
	display: inline-block;
	width: 24px;
	height: 22px;
	vertical-align: top;
}

.ui-checkbox-L i {
	display: block;
	width: 24px;
	height: 22px;
	background-image: url(../img/userjiesuanImg/pc_icon_elements.png);
	background-repeat: no-repeat;
	background-position: -2px 0;
}

.p-k-icon {
	vertical-align: top;
	display: inline-block;
	margin-left: 30px;
	margin-top: -2px;
	width: 26px;
	height: 26px;
}

.p-k-icon img {
	width: 24px;
	height: 30px;
}

.ui-check-disable strong {
	color: #333;
	vertical-align: top;
	display: inline-block;
	margin-left: 8px;
	font-size: 16px;
	font-family: "Microsoft Yahei";
}

.paybox-xjk {
	border-bottom: 1px solid #eee;
	padding: 0 2px 1px 2px;
	height: 54px;
	
}

.p-wrap {
	position: relative;
	_zoom: 1;
	padding-top: 10px;
	padding-bottom: 10px;
}

.p-key {
	float: left;
	padding-top: 5px;
	padding-left: 18px;
}

.p-value {
	margin-left: 225px;
	margin-right: 5px;
}

.p-v-line {
	line-height: 32px;
}

.font-gray {
	color: #999999;
}

.p-amount {
	display: none;
	position: absolute;
	width: 140px;
	right: 18px;
	top: 14px;
	text-align: right;
	line-height: 26px;
}

.newcard {
	opacity: 1;
}

.pn-new {
	height: 34px;
	line-height: 34px;
	width: 138px;
	border: 1px solid #e0e0e0;
	display: inline-block;
	position: relative;
	text-align: center;
	color: #67a4ff;
	margin-top: 60px;
	left: 100px;
}
.paybox {
	width: 930px;
	height: 54px;
	border-bottom: 1px solid #eee;
	padding: 0 2px 1px 2px;
}

.pay-verify {
	padding-left: 76px;
	padding-top: 32px;
	padding-bottom: 20px;
}



.pay-button-a {
	height: 50px;

	line-height: 48px;
	font-size: 18px;
	width: 220px;
	font-family: "Microsoft Yahei";
	font-weight: 700;
	text-shadow: 0 1px 2px rgba(0, 0, 0, .3);
	display: inline-block;
	padding: 0 20px;
	color: #fff;
	border: 1px solid #e31613;
	background: #ff403d;
	background: linear-gradient(#ff403d, #e31613);
	border-radius: 2px;
	vertical-align: middle;
	cursor: pointer;
	text-align: center;
	box-shadow: 0 1px 0 0 #fe8c8a;
}
.change-new {
	    display: block;
    height: 60px;
    line-height: 56px;
    padding: 0 20px;
    transition: all .1s
}
.change-new-left {
	    float: left;
    color: #ddd;
    font-size: 14px;
}
.left-inner {
	    padding-left: 8px;
    float: left;
    cursor: pointer;
    position: relative;
}

.left-inner a {
	    float: left;
    color: #5e5e5e;
    font-family: "Microsoft Yahei";
    font-size: 16px;
}
.icon {
	    display: inline-block;
    position: relative;
    right: 8px;
    top: -1px;
    width: 26px;
    height: 26px;
}
.icon img {
	width: 26px;
	height: 26px;
	position: relative;
	top: 10px;
	left: 5px;
}
.left-inner span {
	float: left;
	padding: 0 40px;
	font-size: 16px;
}

	</style>

	<body>
					<%
						List<Jdproduct> list = (List<Jdproduct>) request.getAttribute("list");
						double allsum=0;
						int shoppingCarSum=0;
						if (list != null) {
							for (Jdproduct category2: list) {
								shoppingCarSum = category2.getProductSum();
								double price = category2.getPrice();
								double sum = price * shoppingCarSum;
								allsum = allsum + sum;
								
									}
								}
							
					%>
	
		<div class="shortcut">
			<div class="w">
				<a class="s-logo">
					<img width="170" height="28" alt="京东 收银台" src="img/img/userjiesuanImg/42b9498adcc82bab3caaa6ab65e12548_jd-logo.png">
				</a>
				<ul class="s-right">
					<li class="s-item">
					<%
					Login user = (Login)session.getAttribute("user");
					%>
						<a href="//home.jd.com/" target="_blank" class="link-user"><%=user.getUsername() %></a>
					</li>
					<li class="s-div">|</li>
					<li class="s-item">
						<a class="op-i-ext" href="IndexActionServlet?action=getAllOrder" target="_blank">我的订单</a>
					</li>
					<li class="s-div">|</li>
					<li class="s-item">
						<a class="op-i-ext" target="_blank">支付帮助</a>
					</li>
				</ul>
			</div>
		</div>
		

		<div class=" main main-bg">
			<div class="w">
				<div class="order">
					<div class="o-qrcode">
						<a class="oq-img">
							<img src="img/img/userjiesuanImg/code.png" />
							<li></li>
						</a>

					</div>
					<%
						CategoryOrder paymentOne= (CategoryOrder)request.getAttribute("categoryOrderpay");
					%>
					<div class="o-left">
						<h3 class="o-title">订单提交成功，请尽快付款！订单号：1213434</h3>
						<p class="o-tips">
							<span class="o-tips-qrcode">
           					    	 推荐使用
                				<a href="#"  class="o-tips-app-jd" target="_blank" ></a>
                				<a href="#" class="o-tips-app-jdjr" title="京东金融App" target="_blank" ></a>
                					扫码支付
                			</span>
							<span class="o-tips-div">|</span>
							<span class="o-tips-time" id="deleteOrderTip"> 
                				   请您在
                				<span class="font-red">24小时</span> 内完成支付，否则订单会被自动取消(库存紧俏订单请参见详情页时限)
							</span>
						</p>
					</div>
					<div class="o-right">
						<div class="o-price">
							<em>应付金额</em>
							<strong><%=allsum %></strong>
							<em>元</em>
						</div>
						<div class="o-detail">
							<a href="#">
								订单详情
								<i></i>
							</a>
						</div>
					</div>
				</div>
				<div class="payment pay-load">
					<div class="jd-logo"></div>
					<div class="jp-notice">
						<div class="jn-wrap">
							<ul class="jn-list"></ul>
						</div>
						<div class="jp-tips">
							<img src="img/img/userjiesuanImg/jiandan.png" />
						</div>
					</div>
					<div class="paychannelBox">
						<div class="payChanel">
							<div class="paybox-baitiao">
								<div class="p-wrap"></div>
								<i class="p-border"></i>
								<div class="p-key">
									<span class="ui-check-disable">
										<i class="ui-checkbox-L">
											<em></em>
										</i>
										<i class="p-k-icon">
											<img src="img/img/userjiesuanImg/a559efc0caa8c94966da5537bac6f21d_BAITIAO_2.0.png"/>
										</i>
										<strong>打白条</strong>
									</span>
								</div>
								<div class="p-value">
									<div class="p-v-line">
										<span class="font-gray">未开通白条</span>
									</div>
									<!--if-->
								</div>
							</div>
							<div class="paybox-xjk">
								<div class="p-wrap">
									<i class="p-border"></i>
									<div class="p-key">
										<span class="ui-check-disable">
											<i class="ui-checkbox-L"><em change-class=""></em></i>
											<i class="p-k-icon">
												<img src="img/img/userjiesuanImg/6520d951981f7d9c5d87e212b57e6c7b_XJKCONSUME.png">
											</i>
											<strong>京东小金库</strong>
										</span>
									</div>
									<div class="p-value">
										<div class="p-v-line">
											<span class="font-gray">未开通小金库</span>
										</div>
										<!--if-->
									</div>

								</div>
							</div>
							<div class="paybox-selected">
								<div class="p-wrap">
									<i class="p-border"></i>
									<div class="p-key">
										<span class="ui-check-disable">
											<i class="ui-checkbox-L"><em change-class=""></em></i>
											<i class="p-k-icon">
												<img src="img/img/userjiesuanImg/c03dd6217457ced6f73747e27e30a0f1_ABC.png">
											</i>
											<strong>农业银行</strong>
										</span>
									</div>
									<div class="p-value">
										<div class="p-v-line">
											<span class="font-gray">储蓄卡(2574)</span>
										</div>
										<!--if-->
									</div>

								</div>
							</div>
							<div class="paybox">
								<div class="p-wrap">
									<i class="p-border"></i>
									<div class="p-key">
										<span class="ui-check-disable">
											<i class="ui-checkbox-L"><em change-class=""></em></i>
											<i class="p-k-icon">
												<img src="img/img/userjiesuanImg/sdk_icon_XYKFENQI.png">
											</i>
											<strong>信用卡分期</strong>
										</span>
									</div>
									<div class="p-value">
										<div class="p-v-line">
											<span class="font-gray">随机送最高100元支付立减券</span>
										</div>
										<!--if-->
									</div>

								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="newcard">
							<a class="pn-new"   >
								添加新卡&nbsp;/&nbsp;网银支付
								<i></i>
							</a>
						</div>
					</div>
					<div>
				
					<div class="pay-verify">
							<div class="pay-button">
								<a href="UserOrderServlet?action=paymentByAll" class="pay-button-a">立即支付</a>
							</div>
						</div>
					</div>
				
				</div>
				<div class="mt25">
					<div class="change-new">
						<div class="change-new-left">
							
							<div class="left-inner">
								<a>
									<i class="icon">
										<img src="img/img/userjiesuanImg/fe3ac1adde30e7ce99eceee643debe9a_PAY-UNION.png">
									</i>
                               			 中国银联
                           		 </a>
                           		 <span>|</span>
							</div>
							
							<div class="left-inner">
								<a>
									<i class="icon">
										<img src="img/img/userjiesuanImg/09a85eb8ed94cedd4442e3ad119b26c2_PAY-WEIXIN.png">
									</i>
                               			 微信支付
                           		 </a>
                           		 <span>|</span>
							</div>
							
							<div class="left-inner">
								<a>
									<i class="icon">
										<img src="img/img/userjiesuanImg/4ce87af45f5bfc2a9aabcb4e6677dca1_PAY-DAIFU.png">
									</i>
                               			 找人代付
                           		 </a>
                           		 
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="w">
				<div class="footer">
					<div class="footer-line">
						<span class="pf-l-copyright">Copyright © 2004-2018  京东JD.com 版权所有</span>
						<img width="185" height="20" src="img/img/userjiesuanImg/cab35ac55a92ffe7ac148660860b91a0_footer-auth.png">
						<span class="ml40">由网银在线（北京）科技有限公司提供技术支持</span>
					</div>
				</div>
			</div>

		</div>
	</body>

</html>