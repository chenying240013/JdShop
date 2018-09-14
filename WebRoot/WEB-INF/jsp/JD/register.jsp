<%@ page language="java" import="java.util.*,com.vo.*,com.service.inter.*,com.service.impl.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>京东个人注册</title>
		<link rel="shortcut icon" href="css/favicon.ico" type="image/x-icon"/>
		<style type="text/css">
		a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
			    margin: 0;
			    padding: 0;
			}
			a:hover {
			    color: rgb(200, 22, 35);
			}
			
			a {
			    color: rgb(102, 102, 102);
			    text-decoration: none;
			}
			#all{
				width: 100%px;
				
				}
				
			/*all*/
			#logo{
				width: 100%px;
				height: 100px;
				}
			
			#middle{
				width:  100%px;
						}
			#end{				
				width: 100%px;
				height:150px ;			
			}
			
			/*logo*/
			#dog {
				position: absolute;
				top: 30px;
				left: 30px;
			}
			#firstDog{
				position: relative;
				top: 5px;
				display: inline;				
			}
			#jingdong{				
				font-family: '楷体';color: red;font-size: 50px;
				display: inline;
			}
			#welcome{
				font-size: 30px;
				display: inline;
			}
			#check{
				display: inline;
			}
			#pop{
				color: darkgray;
				margin-left: 600px;
				display: inline;
			}
			#check a{
				color: red;
			}
			/*middle*/
			#content1{
				
				text-align: center;
				margin-top: 70px;
			}
			#content2{
				margin-top: 50px;
				
			}
			#content3{
				
			}
			/*#content1*/
			#line{
				
			}
			#word{
				position: relative;
				top: 10px;
				font-size: 15px;
				color: darkgrey;
			}
			/*line*/
			.radius{
				width:20px;
				height: 20px;
				border:1px solid;
				border-radius:100px;
				border-color: darkgray;
				
				display: inline-block;
			}
			.radius1{
				background-color: yellowgreen;
			}	
			.big{
				position: relative;
				top: 3px;
			}
			.point{				
				white-space: pre;
			}
			/*#word*/
			#word1{
				color: yellowgreen;
				position: relative;
				right: 125px;
			}
			#word2{
				position: relative;
				right: 8px;
			}
			#word3{
				position: relative;
				left: 120px;
			}
			
			/*content2 begin*/
			#step2-wrap{
				display:none;
				margin: 0 auto;
				width: 400px;
			}
			#step1-wrap{
				
				margin: 0 auto;
				width: 400px;
			}
			.form-item {
			    position: relative;
			    border: solid 1px #ddd;
			    width: 398px;
			    height: 52px;
			    z-index: 0;
			}
			.form-item label {
			    float: left;
			    width: 87px;
			    height: 50px;
			    line-height: 50px;
			    padding-left: 20px;
			    padding-right: 10px;
			}
			.form-item .field {
			    border: 0 none;
			    font-size: 14px;
			    width: 268px;
			    height: 23px;
			    padding-bottom: 11px;
			    padding-left: 10px;
			    padding-top: 16px;
			}
			.input-tip {
			    color: #c5c5c5;
			    height: 27px;
			    font-size: 12px;
			    padding-top: 5px;
			   
			}
			.mailcode-left{
				border-color: rgb(221, 221, 221);
			    border-right-width: 1px;
			    border-right-style: solid;
			    position: relative;
			    float: left;
			    border: solid 1px #ddd;
			}
			.btn-mailcode, .btn-phonecode {
			    float: left;
			    width: 117px;
			    height: 52px;
			    border: 1px solid #ddd;
			    border-left: none;
			    background: #fff;
			    color: #333;
			    padding: 0;
			    border-top: 1px solid rgb(221, 221, 221);
			    border-right: 1px solid rgb(221, 221, 221);
			    border-bottom: 1px solid rgb(221, 221, 221);
			    border-left: none;
			    border-image: initial;
			}
			.btn-register {
			    width: 100%;
			    height: 54px;
			    line-height: 54px;
			    text-align: center;
			    color: #fff;
			    background: #e2231a;
			    border: 0;
			    font-size: 16px;
			    font-family: "Microsoft YaHei","Hiragino Sans GB";
			    cursor: pointer;
			}
			.reg-other {
				
				width: 400px;
				height: 200px;
				margin: 0 auto;
				margin-top: 28px;
			}
			
			
			.reg-other .reg-other-item:hover {
			    
			    color: #c81623;
			}
			
			.reg-other .reg-other-person {
			    float: left;
			}
			
			.reg-other .reg-other-item {
			    color: #333;
			    cursor: pointer;
			}
			
			.reg-other .reg-ohter-icon {
			    display: inline-block;
			    margin: 0 8px 2px 0;
			    vertical-align: middle;
			    width: 26px;
			    height: 26px;
			    background: url(img/login/reg-icon.png) no-repeat 0 -160px;
			}
			.reg-other-inter{
				margin-left: 150px;
			}
			/*content2 end*/
			
			/*phoneNumber check begin*/
			
			.btn-form-test{
				background: #fff;
				border: 1px solid #ddd;
				color: #333;
				font-size: 15px;
				font-family: "microsoft yahei";
				text-align: center;
				width: 400px;
				height: 52px;
				line-height:52px;
			}
			.phonecode-right{
				float: right;
				border-color: rgb(221, 221, 221);
			    border-right-width: 1px;
			    border-right-style: solid;
			    position: relative;
			    border: solid 1px #ddd;
			}
			.phonecode{
				
				border: none;
			    font-size: 14px;
			    width: 268px;
			    height: 48px;  
			    padding-left: 10px;
			   
			}
			.sousuo{
				height: 52px;
				line-height: 52px;
				text-align: center;
			}
			.arrow {
			    background: url(../img/icon.png) no-repeat;
			    width: 15px;
			    height: 15px;
			    display: inline-block;
			    margin-top: 15px;
			    margin-left: 5px;
			    background-position: -2px -150px;
			}
			.box{
				display: none;
			    font-family: "Microsoft YaHei";
			    background-color: #fff;
			    position: absolute;
			    cursor: default;
			    z-index: 150;
			    box-shadow: 0 0 2px 2px #eee;
			    border: 1px solid #eee;
			    padding: 10px 14px;
			    margin-top: 10px;
			    width: 316px;
			    height: 300px;
			}
			.box1{	
			    width: 316px;
			    height: 42px;
			    margin: 0 auto;
			    position: relative;
			    background: #f7f7f7;
			    margin-bottom: 12px;
			    border: 1px solid #eee;
				
			}
			
			.box1 .search-icon {
			    display: inline-block;
			    width: 17px;
			    height: 16px;
			    background: url(../img/search-icon.png) no-repeat;
			    position: absolute;
			    left: 17px;
			    top: 13px;
			}
			.box1 input {
			    display: inline-block;
			    width: 272px;
			    height: 38px;
			    line-height: 38px;
			    background: #f7f7f7;
			    border: 1px solid #eee;
			    padding-left: 42px;
			  
			}
			.capital-list {
			    line-height: 20px;
			}
			.capital-list ul {
			    width: 330px;
			    word-break: break-all;
			   	list-style: none;
			}
			.capital-list ul li {
			    display: inline-block;
			    margin-right: 10px;
			}
			.cur{
				color: red;
			}
			.current-capital span {
			    display: inline-block;
			    font-family: "Microsoft YaHei";
			}
			/*country list begin*/
			.box3{
				margin-top: 10px;
			}
			 .overview {
			    
			    width: 100%;
			    height: 150px;
			    overflow: hidden;
			    padding-bottom: 5px;
			}
			.overview ul li {
				list-style: none;
			    float: left;
			    width: 95%;
			    cursor: pointer;
			    margin-bottom: 15px;
			}
			.overview ul li i {
			    display: inline-block;
			    float: left;
			    vertical-align: middle;
			    height: 12px;
			    width: 19px;
			    background-size: 19px 12px;
			    background-repeat: no-repeat;
			    margin-right: 14px;
			    margin-top: 3px;
			}
			.scrollbar {
			    right: -7px;
			    z-index: 11;
			    background: transparent url(../img/bg-scrollbar-track-y.png) no-repeat 0 0;
			    position: absolute;
			    background-position: 0 0;
			    float: right;
			    width: 15px;
			    background-repeat: repeat-y;
			}
			#scrollbar2 .track {
			    height: 100%;
			    width: 13px;
			    position: absolute;
			    padding: 0 1px;
			    right: 0;
			}
			#scrollbar2 .thumb {
			    background: transparent url(../img/bg-scrollbar-thumb-y.png) no-repeat 50% 100%;
			    height: 20px;
			    width: 25px;
			    background-repeat: repeat-y;
			    cursor: pointer;
			    overflow: hidden;
			    position: absolute;
			    top: 0;
			    left: -9px;
			}
			#scrollbar2 .thumb .end {
			    overflow: hidden;
			    height: 5px;
			    width: 25px;
			}
			/*country list end*/
			.step1-wrap{
				width: 400px;
				height: 240px;				
				margin: 0 auto;				
			}
			/*phoneNumber check end*/
			
			/*正则表达式 begin*/
			
			.input-tip i{
				display: inline-block;
				width: 16px;
				height: 16px;
				vertical-align: text-top;
				margin-right: 16px;
			}			
			.error {				
				background: url(img/login/icon.png) no-repeat -51px -134px;
				/*background-size: 16px 16px;*/
			}
			.success {				
				background: url(img/login/icon.png) no-repeat 0px -117px;
			}
			.defauld {			  
				background: url(img/login/icon.png) no-repeat 0 -100px;
			}
			.weak {			    
				background: url(img/login/icon.png) no-repeat -17px -134px;				
			}
			.middle {
				background: url(img/login/icon.png) no-repeat -34px -117px;				
			}
			.strength {
				background: url(img/login/icon.png) no-repeat -34px -134px;
			}
		/*姝ｅ垯琛ㄨ揪寮� end*/
		/*end*/
			#footer-2013{
				text-align: center;
			}
			.links{
				margin: 15px 0px 0px 0px;
				color: black;
			}
			.copyright{
				margin: 15px 0px 0px 0px;
			}
			/*图片验证码 pictrueCheck begin*/
			#checkcodeId{
			height:23px;
			width:100px;
			style="font-size: 13px;"
			}
			#imgjsp{
				position:relative;
				top:10px;
			}
			/*图片验证码 pictrueCheck end*/	
		</style>
	</head>
	<body>
		<div id="all">
			<div id="logo">
				<div id="dog">
					<div id="firstDog"><img src="img/login/dog.png"  width="100" height="60" ></div> 
        			<div id="jingdong" >京东</div>
        			<div id="welcome" >欢迎注册</div>
        			<div id="pop">已有账号？</div> 				
        			<div id="check"><a href="LoginServlet?action=getAllLogins&target=login.jsp">请登录></a></div>	
				</div>
			</div>
			<div id="middle">
				<hr style="height:5px" color=lightgray>
				<div id="content1">
					<div id="line">
						<div class="radius radius1">1</div>
						<span id="p1" class="point point1">.  .  .  .  .  .  .  .  .  .  .  .</span>
						<span id="b1" class="big big1">></span>
						<div id="r2" class="radius radius2">2</div>
						<span  class="point point2">.  .  .  .  .  .  .  .  .  .  .  .</span>
						<span  class="big big2">></span>
						<div class="radius radius3">3</div>
					</div>
					<div id="word">
						<span id="word1">
							验证手机号
						</span>
						<span id="word2" >
							填写账号信息
						</span>
						<span id="word3">
							注册成功
						</span>
					</div>
				</div>
				
				<div id="content2">
					<!--novalidate="novalidate"不对输入进行验证的表单：-->
					<form  id="regist-form" method="post" >
						<input type="hidden" name="action" value="add"/>
						<input type="hidden" name="action" value="active"/>
						
						<div id="step1-wrap" >
							<div class="form-item form-item-mailcode">
								<div class="phonecode-right">
									<input type="text" name="phoneNumber" maxlength="11" autocomplete="off" id="phoneNumber" class="field" placeholder="建议使用常用手机" >
								</div>
								
								<!--clstag不是Html的自带属性，是开发者自定义的一个属性来的，是为了能够方便后期对其对应的标签元素进行操作，如获取数据、传值等操作。-->
								<!--<button id="getMailCode" class="btn-mailcode" type="button" clstag="pageclick|keycount|reg_puser_201804031|16" >获取验证码</button>-->
								<!--DIV直接使用focus()和blur()两个方法是无效的，需添加tabindex="0"或者contenteditable="true"属性-->
                                
								<div id="div-selecte" class="sousuo" tabindex="0">
									中国0086
									<a href="javascript:void(0)" class="arrow"></a>
								</div>
								
								<div id="underBox" class="box">									
										<div id="country" class="box1">
											<b class="search-icon"></b>
											<input type="text" placeholder="搜索您的国家和地区" id="inputSearch">
										</div>
										<div id="aly" class="box2">
											<div class="capital-list">
												<ul> <li><a href="javascript:void(0)" class="cur">常用国家/地区</a></li>
													<li><a href="javascript:void(0)">A</a></li><li><a href="javascript:void(0)">B</a></li>
													<li><a href="javascript:void(0)">C</a></li>
													<li><a href="javascript:void(0)">D</a></li>
													<li><a href="javascript:void(0)">E</a></li>
													<li><a href="javascript:void(0)">F</a></li>
													<li><a href="javascript:void(0)">G</a></li>
													<li><a href="javascript:void(0)">H</a></li>
													<li><a href="javascript:void(0)">J</a></li>
													<li><a href="javascript:void(0)">K</a></li>
													<li><a href="javascript:void(0)">L</a></li>
													<li><a href="javascript:void(0)">M</a></li>
													<li><a href="javascript:void(0)">N</a></li>
													<li><a href="javascript:void(0)">P</a></li>
													<li><a href="javascript:void(0)">R</a></li>
													<li><a href="javascript:void(0)">S</a></li>
													<li><a href="javascript:void(0)">T</a></li>
													<li><a href="javascript:void(0)">W</a></li>
													<li><a href="javascript:void(0)">X</a></li>
													<li><a href="javascript:void(0)">Y</a></li>
													<li><a href="javascript:void(0)">Z</a></li>
												</ul>												
											</div>
											
											<div class="current-capital">
												<span id="currentCapital">常用国家/地区</span>
												<span class="line line-short"></span>
											</div>
										</div>
										
										<div id="country-content" class="box3">											
											<div id="scrollbar2" class="scrollbar_all">
												<div class="scrollbar" style="height: 155px;">
													<div class="track" style="height: 155px;">
														<div class="thumb" style="top: 85.3623px; height: 69.6377px;">
															<div class="end">
																
															</div>
														</div>
													</div>
												</div>
												<div class="viewport">
													<div class="overview" style="top: 0px;">
														<ul>
															<li class="" data-code="0886">
																<i style="background-image:url(img/zhongguotaiwan_0886.png)"></i>
																<span>中国台湾</span>
																<span class="flr">0886</span>
															</li>
															<li class="" data-code="0852">
																<i style="background-image:url(img/zhongguotaiwan_0886.png)"></i>
																<span>中国香港</span>
																<span class="flr">0852</span>
															</li>
															<li class="" data-code="0061">
																<i style="background-image:url(img/aodaliya_0061.png)"></i>
																<span>澳大利亚</span>
																<span class="flr">0061</span>
																
															</li>
															<li class="" data-code="0001">
																<i style="background-image:url(img/meiguo_0001.png)"></i>
																<span>美国</span>
																<span class="flr">0001</span>
															</li>
															<li class="" data-code="0060">
																<i style="background-image:url(img/malaixiya_0060.png)"></i>
																<span>马来西亚</span>
																<span class="flr">0060</span>
															</li>
															<li class="" data-code="0065">
																<i style="background-image:url(img/xinjiapo_0065.png)"></i>
																<span>新加坡</span>
																<span class="flr">0065</span>
															</li>
															<li class="" data-code="0081">
																<i style="background-image:url(img/riben_0081.png)"></i>
																<span>日本</span>
																<span class="flr">0081</span>
															</li>
															<li class="" data-code="0064">
																<i style="background-image:url(img/xinxilan_0064.png)"></i>
																<span>新西兰</span>
																<span class="flr">0064</span>
															</li>
															<li class="" data-code="0001">
																<i style="background-image:url(img/jianada_0001.png)"></i>
																<span>加拿大</span>
																<span class="flr">0001</span>
															</li>
															<li class="" data-code="0082">
																<i style="background-image:url(img/hanguo_0082.png)"></i>
																<span>韩国</span>
																<span class="flr">0082</span>
															</li>
														</ul>
													</div>
												</div>
											</div>																						
										</div>																	
								</div>
							</div>	
							<div class="input-tip" >
								<i id="tip-5"></i>
								<span id="tip5">
									<%
									String msg1 = (String)request.getAttribute("msg");
									if(msg1!=null){
									%>
										<%=msg1%>
									<%} %>																	
								</span>
							</div>
							
							<div class="form-item form-item-mailcode">
								<div class="mailcode-left">
									<input type="text" name="mailCode" maxlength="6" autocomplete="off" id="phoneCode" class="field mailcode" placeholder="请输入手机验证码" aria-invalid="false">
								</div>
								<!--clstag不是Html的自带属性，是开发者自定义的一个属性来的，是为了能够方便后期对其对应的标签元素进行操作，如获取数据、传值等操作。-->
								<button id="getPhoneCode" class="btn-mailcode" type="button" clstag="pageclick|keycount|reg_puser_201804031|16"  disabled="disabled">获取验证码</button>
								
							</div>	
							<div class="input-tip" ><i  id="tip-6" style="display: none"></i><span id="tip6"></span></div>
							
							<button type="button" class="btn-register" id="form-under" >下一步</button>							
						</div>					
					</div>
					
						<div id="step2-wrap" >
							<div id="form-item-account" class="form-item form-item-account">
								<label>用户名</label>
								<!--placeholder 属性提供可描述输入字段预期值的提示信息（hint）。该提示会在输入字段为空时显示，并会在字段获得焦点时消失。-->
								<!--autocomplete 属性规定表单是否应该启用自动完成功能。自动完成允许浏览器预测对字段的输入。当用户在字段开始键入时，浏览器基于之前键入过的值，应该显示出在字段中填写的选项。-->
								<!--maxlength 属性规定输入字段的最大长度，以字符个数计。maxlength 属性与 <input type="text"> 或 <input type="password"> 配合使用-->
								<input type="text" class="field" id="form-account" name="username" autocomplete="off" maxlength="20" placeholder="您的账户名和登录名"/>

							</div>
							<div class="input-tip" >
								<i id="tip-1"></i>
								<span id="tip1">
									<%
									String msg = (String)request.getAttribute("msg");
									if(msg!=null){
									%>
										<%=msg%>
									<%} %>																	
								</span>
							</div>
							<div class="form-item">
								<label>设置密码</label>
								<input type="password" class="field" id="form-pwd" name="password" autocomplete="off" maxlength="20" placeholder="建议使用两种或两种以上字符组合"/>
							</div>	
							<div class="input-tip" ><i id="tip-2"></i><span id="tip2"></span></div>
							<div class="form-item">
								<label>确认密码</label>
								<input type="password" class="field" id="form-equalTopwd" name="pwdRepeat" autocomplete="off" maxlength="20" placeholder="请再次输入密码"/>
							</div>	
							<div class="input-tip" ><i id="tip-3"></i><span id="tip3"></span></div>
							<div class="form-item ">
								<label>邮箱验证</label>
								<input type="text" class="field" id="form-email" name="mail" autocomplete="off" maxlength="50" placeholder="请输入邮箱"/>
							</div>	
							<div class="input-tip" ><i id="tip-4"></i><span id="tip4"></span></div>
							
							<div id="pictureCheck">
								<input id="checkcodeId" name="checkcode" type="text" maxlength="4" placeholder="验证码"/>
								<!-- 点击图片，重新加载验证码 -->
								<a href="javascript:reloadCheckImg($('img'))">
									<!-- 验证码图片 -->
									<img id="imgjsp" src="img.jsp"/>
								</a>
								<i style="font-size: 13px;">看不清？点击图片更换验证码</i>
							</div>
							<div class="input-tip" ><i id="tip-7"></i><span id="tip7"></span></div>
							<!--clstag不是Html的自带属性，是开发者自定义的一个属性来的，是为了能够方便后期对其对应的标签元素进行操作，如获取数据、传值等操作。-->
							<input type="button" class="btn-register" id="form-submit" value="立即注册"/>
							
						</div>
					</form>
				</div>
				<div id="content3">
					<div  class="reg-other clearfix">
						<a href="//reg.jd.com/b/regPage?source=buser" class="reg-other-item reg-other-person" clstag="pageclick|keycount|reg_puser_201804031|4">
                    		<i class="reg-ohter-icon"></i>企业用户注册
               			</a>
               			<a href="//reg.joybuy.com/reg/person.html" class="reg-other-item reg-other-inter" clstag="pageclick|keycount|reg_puser_201804031|5">
                        	<i class="reg-ohter-icon" style="background-position: -40px -160px;"></i>国际站注册
                    	</a>
					</div>
				</div>
			</div>
			<div id="end">
				<hr />
				<div id="footer-2013">
        		<div class="links">
            		<a rel="nofollow" target="_blank" href="//www.jd.com/intro/about.aspx">
                		关于我们
            		</a>
            		|
            		<a rel="nofollow" target="_blank" href="//www.jd.com/contact/">
                		联系我们
            		</a>
            		|
            		<a rel="nofollow" target="_blank" href="//zhaopin.jd.com/">
               		 	人才招聘
            		</a>
            		|
            		<a rel="nofollow" target="_blank" href="//www.jd.com/contact/joinin.aspx">
                		商家入驻
            		</a>
            		|
            		<a rel="nofollow" target="_blank" href="//www.jd.com/intro/service.aspx">
                		广告服务
            		</a>
            		|
            		<a rel="nofollow" target="_blank" href="//app.jd.com/">
                		手机京东
            		</a>
            		|
            		<a target="_blank" href="//club.jd.com/links.aspx">
                		友情链接
            		</a>
            		|
            		<a target="_blank" href="//media.jd.com/">
                		销售联盟
            		</a>
            		|
            		<a href="//club.jd.com/" target="_blank">
                		京东社区
            		</a>
            		|
            		<a href="//gongyi.jd.com" target="_blank">
                		京东公益
            		</a>
            		|
            		<a target="_blank" href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
        		</div>
        			<div class="copyright">
            			Copyright&nbsp;&copy;&nbsp;2004-2018&nbsp;&nbsp;京东JD.com&nbsp;版权所有
        			</div>				
			</div>
			</div>
		</div>
		<script src="js/jquery-2.1.4.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var phoneInput;			
			var userInput;
			var emailInput;
			var mimaInput;
			var confirmInput;
			var mimaValue;
			var tip1;
			var tip2;
			var tip3;
			var tip4;
			var tip5;
			var i1;
			var i2;
			var i3;
			var i4;
			var i5;
			var bnt1;
			
			window.onload=function  () {
				phoneInput=document.getElementById("phoneNumber");
				phoneInput.onblur=checkPhone;
				phoneInput.onkeyup=checkPhone;
				
				userInput=document.getElementById("form-account");
				userInput.onblur=checkUser;
				userInput.onkeyup=checkUser;
	
				emailInput=document.getElementById("form-email");
				emailInput.onblur=checkEmail;
				emailInput.onkeyup=checkEmail;
				
				mimaInput=document.getElementById("form-pwd");
				mimaInput.onblur=checkMima;
				mimaInput.onkeyup=checkMima2;
				mimaInput.onfocus=checkMima2;
				
				confirmInput=document.getElementById("form-equalTopwd");
				confirmInput.onblur=checkConfirm;
				confirmInput.onkeyup=checkConfirm;
				
				tip1=document.getElementById("tip1");
				tip2=document.getElementById("tip2");
				tip3=document.getElementById("tip3");
				tip4=document.getElementById("tip4");
				tip5=document.getElementById("tip5");
				 
				i1=document.getElementById("tip-1");
				i2=document.getElementById("tip-2");
				i3=document.getElementById("tip-3");
				i4=document.getElementById("tip-4");
				i5=document.getElementById("tip-5");
				 
				bnt1=document.getElementById("form-submit");
				bnt1.onclick=regist;
			}
			//用正则表达式去空格
			function trim (txt) {
				var afterTrimTxt=txt.replace(/^\s*/,"").replace(/\s*$/,"");
				return afterTrimTxt;
			}
			//判断手机号格式
			function isPhone (phone) {
				var regExp=/^(18\d{9})$|^(13\d{9})$|^(15\d{9})$|^(17\d{9})$|^(147\d{8})$/;
				var flag=regExp.test(phone);
				return flag;
			}
			//判断email的格式
			function isEmail (email) {
				var regExp=/^\w{5,10}@\w*\.(com|net|org)$/;
				var flag=regExp.test(email);
				return flag;
			}
			function checkPhone () {
				var phoneValue=phoneInput.value;				
				if (isNaN(phoneValue)) {
					tip5.innerHTML="手机号必须为数字";
					tip5.style.color="#f91";
					i5.className="error";
				} else if (trim(phoneValue)=="") {
					tip5.innerHTML="手机号码不能为空";
					tip5.style.color="#f91";
					i5.className="error";
				}else if (!isPhone(phoneValue)) {
					tip5.innerHTML="手机号格式不正确";
					tip5.style.color="#f91";
					i5.className="error";
					
				}else{
					i5.className="success";
					tip5.innerHTML="";
				}
			}
			//检查用户名
			function checkUser () {
				
				var userValue=userInput.value;
				
				//给span节点的文本赋值为空，以便下文使用
				tip1.innerHTML="";
				//非空验证
				if (trim(userValue)=="") {
					tip1.innerHTML="请输入用户名";
					tip1.style.color="#f91";
					i1.className="error";
				} else{
					i1.className="success";
				}
			}
			//检查密码
			function checkMima () {
				var mimaValue=mimaInput.value;
				
				tip2.innerHTML="";
				if(trim(mimaValue)==""){
					tip2.innerHTML="密码不能为空";
					tip2.style.color="#f91";
					i2.className="error";
				}
			}
			function checkMima2(){
				mimaValue=mimaInput.value;
				
				var regExp1=/^(\d{6,11})$/;
				var regExp2=/^(\d{11,20})$|^(\S{6,11})$/;
				var regExp3=/^(\S{11,20})$/;
				if(mimaValue.length<6){
				 	tip2.style.color="#c5c5c5";
					tip2.innerHTML="建议使用两种或两种以上的组合";
					i2.className="defauld";
				}else if (regExp1.test(mimaValue)) {
					tip2.style.color="#c5c5c5";
					tip2.innerHTML="有被盗风险，建议使用字母，数字和符号两种及两种以上组合";
					i2.className="weak";
				} else if(regExp2.test(mimaValue)){
					tip2.style.color="#c5c5c5";
					tip2.innerHTML="安全前适中，可以使用三种以上的组合来提高安全程度";
					i2.className="middle";
				}else if(regExp3.test(mimaValue)){
					tip2.style.color="#c5c5c5";
					tip2.innerHTML="你的密码很安全";
					i2.className="strength"
				}else{
					tip2.innerHTML="密码格式不正确";
					tip2.style.color="#f91";
					i2.className="error";
				}
			}
			//确认密码
			function checkConfirm () {
				var confirmValue=confirmInput.value;
				
				tip3.innerHTML="";
				if (confirmValue!=mimaValue) {
					tip3.innerHTML="两次输入密码不一致";
					tip3.style.color="#f91";
					i3.className="error";
				} else{
					i3.className="success";
				}
			}
			
			//检查邮箱
			function checkEmail () {
				var emailValue=emailInput.value;
				
				tip4.innerHTML="";
				if (trim(emailValue)=="") {
					tip4.innerHTML="邮箱不能为空";
					tip4.style.color="#f91";
					i4.className="error";
				} else if (!isEmail(emailValue)) {
					tip4.innerHTML="邮箱格式不正确";
					tip4.style.color="#f91";
					i4.className="error";
				} else{
					i4.className="success";
				}
			}
	
			//处理点击事件
			function regist () {
				//调用onblur事件，当用户没有点击输入框时直接点击注册按钮时会执行onblur事件
				userInput.onblur();
				emailInput.onblur();
				mimaInput.onblur();
				confirmInput.onblur();
				//通过span error属性的个数判断有无错误信息
				var	error=document.getElementsByClassName("error");
				if (error.length>0) {
					//不提交表单
				} else{
					var registForm=document.getElementById("regist-form");
					registForm.action="LoginServlet";
					registForm.submit();
				}
				
			}	
				
			$(function(){
				/*用户名存在验证*/
				$("#form-account").blur(function(){
					//1.调用表单输入的数据
					var usernameInput=$(this).val();
					//2.去服务端校验该用户是否存在--ajax
					$.post(
						"LoginServlet",
						{"action":"checkUsername",
						 "username":usernameInput
						},
						function(data){
							var isExist=data.isExist;
							//3.根据返回的isExist动态显示信息
							var usernameInfo="";
							if(isExist){
								usernameInfo="该用户已存在";
								$("#tip1").html(usernameInfo);
								$("#tip1").css("color","red");
								$("#tip-1").removeClass("success");
								$("#tip-1").addClass("error");	
							}
						},
						"json"
					);
				});
				
				/*校验邮箱是否存在*/
				$("#form-email").blur(function(){
					//1.调用表单输入的数据
					var emailInput=$(this).val();
					//2.去服务端校验该用户是否存在--ajax
					$.post(
						"LoginServlet",
						{"action":"checkEmail",
						 "email":emailInput
						},
						function(data){
							var isExist=data.isExist;
							//3.根据返回的isExist动态显示信息
							var emailInfo="";
							if(isExist){
								emailInfo="此邮箱已注册过，请更换邮箱";
								$("#tip4").html(emailInfo);
								$("#tip4").css("color","red");
								$("#tip-4").removeClass("success");
								$("#tip-4").addClass("error");	
							}
						},
						"json"
					);
				});
				
				/*校验手机号码是否存在*/
				$("#phoneNumber").blur(function(){
				    //1.调用表单输入的数据
					var phoneInput=$(this).val();
					//2.去服务端校验该用户是否存在--ajax
					$.post(
						"LoginServlet",
						{"action":"checkPhone",
						 "phoneNumber":phoneInput
						},
						function(data){
							var isExist=data.isExist;
							//3.根据返回的isExist动态显示信息
							var emailInfo="";
							if(isExist){
								phoneInfo="此手机号码已注册过，请更换手机号码";
								$("#tip5").html(phoneInfo);
								$("#tip5").css("color","red");
								$("#tip-5").removeClass("success");
								$("#tip-5").addClass("error");	
								$("#getPhoneCode").attr('disabled',"disabled");
							}else{
								$("#getPhoneCode").removeAttr("disabled");
							}
						},
						"json"
					);
				});
				
			/*倒计时函数*/
 			var intDiff = parseInt(120);//倒计时总秒数量
			function timer(intDiff){
			    window.setInterval(function(){
				     var day=0,
				        hour=0,
				        minute=0,
				        second=0;//时间默认值          
				    if(intDiff > 0){			       
				        second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);			        			         
					    if (second <= 9) second = '0' + second;				   
					    $('#getPhoneCode').html('<s></s>'+second+'秒');
				    }else{
				    	$('#getPhoneCode').html('获取验证码');
				    }
				   
				    intDiff--;
			    }, 1000);
			} 	
				
 			// phoneNumber 为接收验证码手机号,messageType 为短信内容代号，可填入 0.1.2 分别代表注册用户，修改密码，找回密码
 			// $.ajax() $.post $.get 均可实现，这里使用 post 来实现
 			var phoneInput;
 			var daoJiShi;
 			$("#getPhoneCode").click(function(){
  				phoneInput=$("#phoneNumber").val();
 				function test(phoneNumber, messageType) {
	 				$.post(
			 	         "http://www.nobitastudio.cn/lanqiaoPro1/useGetMessageVerificationCode.action",
			             {"phoneNumber": phoneNumber, "messageType": messageType},
			             function (message) {
			             	if(message.success){
			             		timer(intDiff);
			             		$("#tip-5").removeClass("error");
			             		$("#tip-5").addClass("success");
			             	}					
 						},
						 "json");   
			    }			 											
				test(phoneInput,'0');		 			
 			});
 			
 			
			
			//下一步，校验手机验证码
 			$("#form-under").click(function(){
 			
 				var phoneCode=$("#phoneCode").val(); 				
 				function test(phoneNumber, verificationCode) {
	 				$.post(
			 	         "http://www.nobitastudio.cn/lanqiaoPro1/userConfirmVerificationCode.action",
						{"phoneNumber": phoneNumber, "verificationCode": verificationCode},
						 function (message) {
							 alert(message.success + " " + message.inf);//根据 message 中的值进行相关操作
							 if(message.success){
							 	 $("#tip6").removeClass("error");
							 	 $("#r2").css("background-color","yellowgreen");
								 $("#p1").css("color","yellowgreen");
								 $("#b1").css("color","yellowgreen");
								 $("#word2").css("color","yellowgreen");
								 $("#step1-wrap").css("display","none");
								 $("#step2-wrap").css("display","block");
							 }else{
							 	 $("#tip-6").show();
							 	 $("#tip6").css("color","#f91");
							 	 $("#tip-6").addClass("error");
							 	 $("#tip6").html("验证码输入错误或已过期，请重新输入或获取");
							 };
						 },
 						
			        "json");   
			    }			 											
				test(phoneInput,phoneCode);				 			
 			});
 			
			/*country show and hide*/
			$("#div-selecte").click(function  () {
				$("#underBox").show();
			})
			$("#div-selecte").blur(function  () {						
				$("#underBox").hide();
			})
			
		});	
		
		/*图片验证码 pictureCheck*/
		$(function(){
			//图片验证码
			//通过验证码输入框的blur事件，触发次函数
			$("#checkcodeId").blur(function(){
				var checkcode =$("#checkcodeId").val();
				//在服务端对验证码进行验证
				$.post(
					"LoginServlet",
					{"checkcode":checkcode,"action":"pictureCheck"},						
					//根据返回的图片路径，显示不同的提示图片					
					function(data){							
						if(data == 1){
							$("#tip-7").removeClass("error");
							$("#tip-7").addClass("success");
							$("#tip7").html("");			
						}else{							
							$("#tip-7").addClass("error");
							$("#tip7").html("验证码输入错误，请重新输入或获取");
						};	
					},
					"json"
			     );				
			 });
		});
	//刷新验证码
	//t参数确保单击图片时，验证码能及时更换，如果没有，js会认为src属性始终是img.jsp，就不会重新加载
	function reloadCheckImg($img){
		$img.attr("src","img.jsp?t="+(new Date().getTime()));
	}	
		</script>
	</body>
</html>
