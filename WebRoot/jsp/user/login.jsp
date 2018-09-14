<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		
		<title>京东登录界面</title>
		<link rel="shortcut icon" href="css/favicon.ico" type="image/x-icon" />
		<script src="js/jquery-3.3.1.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
			    margin: 0;
			    padding: 0;
			}
			#all{
				width: 100%;
				height: 800;
				}
			/*all*/
			#logo{
				width: 100%px;
				height: 150px;
				background-color: white;
				position: relative;
				}
			.first{
				text-align: center;
				width: 100%px;
				height: 50px;
				/*line-height: 50px;*/
			}
			#background{
				width: 100%px;
				height: 450px;
				position: relative;
				background:url(img/login/background.PNG);	
					
						}
			.end{	
				width: 100%px;
				height:150px ;
				background-color: white;	
			}			
						
			/*logo150*/
			#dog {
				position: absolute;
				top: 70px;
				left: 70px;
			}
			#firstDog{
				
				display: inline;
				
			}
			#jingdong{
				font-family: '楷体';color: red;font-size: 50px;
				display:inline;
			}
			#welcome{
				font-size: 30px;
				display: inline;
			}
			#check{
				display: inline;
			}
			#pop{
				
				margin-left: 600px;
				display: inline;
			}
			/*warn*/
			.i{
				width:15px;
				height: 15px;
				border:1px solid;
				border-radius:100px;
				border-color: darkgray;
				display: inline-block;
				color: darkgray;
			}
			.warnword{
				padding: 17px;
			}
			
			
			/*background*/
			#login{
				width: 350px;
				height: 400px;
				position: absolute;
				top: 10px;
				right: 149px;
				background-color: white;			
				  }
			/*login350 400*/
			.second{
				text-align: center;
				width: 350px;
				height: 50px;
			}
			.login-tab{
				
				margin: 40px;
				width: 175;
				height: 60px;
				line-height: 60px;
				color: gray;
				font-size: 20px;
				font-family: "微软雅黑";
			}
			}#loginFoot{
				width: 350px;
				height: 325px;
			}
			/*login-tab 175 25*/
			.login-tab-l{
				display: inline;
			}
			.login-tab-r{
				display: inline;
			}
			/*loginFoot 350 325*/
			.div-input{
				width: 325px;
				height: 250px;
				margin:0 auto;
			}
			
			#tubiao{
				height: 125px;
				width: 350px;
				
			}
			.line{
				margin-left:15px ;
			}
			/*input 350 325 扫码登录*/
			#maLogin{
				display:none;
			}
			#ma{
				width: 350px;
				height: 175px;
				position: relative;
				top: -10px;
				left: 80px;
			}
			#underMa{
				width: 350px;
				height: 50px;
				font-size: 13px;
			}
			#one{
				position: relative;
				top: -10px;
				left: 82px;
			}
			#underOne{
				position: relative;
				left: 60px;
			}
			#two{
				float: left;
			}
			#three{
				float: left;
			}
			#four{
				float: left;
			}
			/*input账户登录*/
			.item{
			position:relative;
				margin-top:15px;
			}
			.loginDiv2{
				/*visibility:hidden;*/
				width: 290px;
				height: 20px;
				line-height:20px;
				color:#666;
				font-size:12px;
				padding-left:30px;
				border: solid 1px lightpink;
				background-color: papayawhip;
				position: relative;
				
			}
			.loginDiv2 b {
			    position: absolute;
			    top: 10%;
			    left: 10px;
			    width: 16px;
			    height: 16px;   
			    background: url(img/login/all.png) -104px -49px no-repeat;
			}
			
			.error{
				color: red;
			}
			.input{
				width: 280px;
				height: 33px;
				padding-left:40px ;
			}
			.forgetMima{
				margin-top:15px;
				height:25px;	
			}
			.forgetA{
				float:right;
			}
			#tripe{
				text-decoration: none;
				width: 320px;
				height: 40px;
				background-color: red;
				color: white;
				font-size: 20px;
				display: block;
				line-height: 40px;
				border: 1px solid white;
				text-align: center;
				margin-top:15px;
			}
			
			.login-label {
			    position: absolute;
			    z-index: 3;
			   	top:1px;
			    left: 1px;
			    width: 37px;
			    height: 37px;  
			    background: url(img/login/all.png) no-repeat;
			    border-right: 1px solid ;
			}
			 .name-label {
			    background-position: 0 0;
			}
			.pwd-label {				
			    background-position: -48px 0;
			}
			
			/*tubiao*/
			#biao{
				list-style-type: none;
			}
			#biao>li {
				float:left;
			}
			/*biao*/
			
			#biao{
				position: relative;
				left: 10px;
			}
			
			.regist-link{
				position: relative;
				left: 95px;
				top: 8px;
			}
			.regist-link b{
			    display: inline-block;
			    width: 16px;
			    height: 16px;
			    overflow: hidden;
			    background: url(img/login/all.png) -104px -75px no-repeat;
			    vertical-align: middle;
			    margin-right: 5px;
			    margin-top: -3px;
			
			}
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
			/*效果*/
			a{
				color: black;
			}	  
			div a:hover{
				font-weight:900;
				color: red;
			}
			
			div[class*="warn"]{
				background-color:#fff8f0;
				color:#666;
				font-size: 12px;
			}
			img{
				position: relative;
				top: 7px;
			}
			/*用户名登录验证*/
			.name-focus-label{
				background-position: 0 -48px;				
				border-right: 1px solid #3aa2e4;				
			}
			.pass-focus-label{
				background-position: -48px -48px;
				border-right: 1px solid #3aa2e4;				
			}
			.focus-input{
				border: 1px solid #3aa2e4;
			}
			div.loginDivError {
				display: none;
			}
			.name-error-label{
				background-position: 0 -96px;
				border-right: 1px solid #e4393c;
			}			
			.pass-error-label{
				background-position: -48px -96px;
				border-right: 1px solid #e4393c;
			}
			.item-error {
				border: 1px solid #e4393c;
			}		
			.loginDivError b {
			    display: inline-block;
			    width: 16px;
			    height: 17px;
			    overflow: hidden;
			    vertical-align: middle;
			    background: url(img/login/all.png) no-repeat -104px -50px;
			    position: relative;
			    bottom: 1px;
			    margin: 0px;
			    margin-right: 13px;
			}
			.loginDivError{
				/*visibility:hidden;*/
				width: 310px;
				height: 20px;
				line-height:20px;
				font-size:12px;
				padding-left:10px;
				border: solid 1px lightpink;
				background-color: papayawhip;
				position: relative;
				color:red;
			}
			.error{
			
			}
		</style>
	</head>
	<body>
		<div id="all">
			<div id="logo">
				<div id="dog">
					<div id="firstDog"><img src="img/login/dog.png"  width="100" height="60" ></div> 
        			<div id="jingdong" >京东</div>
        			<div id="welcome" >欢迎登录</div>
        			<div id="pop"><img src="img/login/maopao.PNG"/></div> 				
        			<div id="check"><a href="">登录页面，调查问卷</a></div>	
				</div>
			</div>
			<div class="first warn">
					<div class="warnword">
						<div class="i">i</div>
						依据《网络安全法》，为保障您的账户安全和正常使用，请尽快完成手机号验证！ 新版《京东隐私政策》已上线，将更有利于保护您的个人隐私。
					</div>
			</div>
			<div id="background">
				<div id="login">
					<div class="second warn">
						<div class="warnword">
							<div class="i">i</div>
							京东不会以任何理由要求您转账汇款，谨防诈骗。
						</div>
					</div>
					
					<div class="login-tab login-tab-l">
                   		<a id="user-login">账户登录</a>
                	</div>
                	<div class="login-tab login-tab-r">
                		<a id="ma-login" style="text-decoration: none;"> 扫码登录</a>                    	
                	</div>
                 	<div id="loginFoot" >
	
						<!-- 用户名登录部分 -->
						<div id="input" class="div-input">		
							<div id="prompt" class="msg-error" >
								<div class="loginDiv2 ">
									<%
										String msg = (String)request.getAttribute("msg");
										if(msg!=null){
									%>
										<b></b> <span style="color: red;" id="content"><%=msg%></span>	
									<%																
										}else{
									%>
										<b></b> <span id="content">公共场所不建议自动登录，以防账号丢失</span>
									<%
										}
									%>
								</div>							
									<div class="loginDivError"></div>								
							</div>
							<!--  _blank：在新窗口中打开；_self：默认。在相同的框架中打开；_parent：在父框架集中打开；_top：在整个窗口中打开-->
					        <form id="loginForm" action="LoginServlet" method="post"  target="_top">
					        	<input type="hidden" name="action" value="login"/> 
					        	<!-- <input type="hidden" name="toWhere" value="${toWhere}"/> -->
								<div class="item loginDiv3Fisrt">
									<div>
										<label for="user" class="login-label name-label"></label>
									</div>
									<div>
										<input id="user" class="input" type="text" name="username" placeholder="邮箱/用户名/已验证手机" >
									</div>
								</div>
									<div  class="item loginDiv3Fisrt">
										<div>
											<label for="mima" class="login-label pwd-label"></label>
										</div>
										<div>
											<input id="mima" class="input" type="password" name="password" placeholder="密码" >
										</div>
									</div>
									<div class="forgetMima "><a class="forgetA" href="">忘记密码</a></div>
									<a href="javascript:void(0)"   onclick="checkUser();" id="tripe" >登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
							</form>
				        </div>
							
						<!-- 扫码登录部分 -->
                		<div id="maLogin" class="div-input">
							<div id="ma">
								<img id="" src="img/login/erWeiMa.PNG"/>
							</div>
							<div id="underMa">
								<div id="one">
									打开手机京东，扫描二维码
								</div>
								<div id="underOne">
									<div id="two">
										<img src="img/login/input.PNG"/>
										免输入
									</div>
									<div id="three">
										<img src="img/login/quick.PNG"/>
										更快
									</div>
									<div id="four">
										<img src="img/login/safe.PNG"/>
										更安全
									</div>
								</div>
								
							</div>
						</div>	
												
				        <div id="tubiao">
				            <ul id="biao" style="list-style-type: none;">
				                <b></b>
				                <li>
				                	<img id="qq" src="img/login/qq.PNG" />
				                	<a href="javascript:void(0)" onclick="window.location='//qq.jd.com/new/qq/login.aspx'+window.location.search;return false;" class="pdl">
				                    	<b class="QQ-icon"></b><span>QQ</span>
				                	</a>
				                    <span class="line">|</span>
				                </li>
				                <li>
				                	<img id="weixin" src="img/login/weixin.PNG" />
				                	<a href="javascript:void(0)" onclick="window.location='//qq.jd.com/new/wx/login.action'+window.location.search;return false;" class="pd">
				                        <b class="weixin-icon"></b><span>微信</span>
				                	</a>
				                </li>
				                <li class="extra-r">	 				                            	
				                    <div class="regist-link">
				                        <a href="LoginServlet?action=getAllLogins&target=register.jsp" target="_blank"><b></b>立即注册</a>
				                    </div>				            
				                </li>
				            </ul>                                
				        </div>                               
					</div>
				</div>	
			</div>            
		<div class="end">
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
	
		<script type="text/javascript">
		/*背景变化*/
			var background;
				var imgs =["img/login/background2.PNG","img/login/background3.PNG","img/login/background.PNG"]; 
				var i=0;
				var img;
				window.onload=function  () {
					background=document.getElementById("background");
					img=window.setInterval(change,5000);				
				}				
				
				function change () {
					i++;   
				    i=i%3;  // 超过2则取余数，保证循环在0、1、2之间
					background.style.background="url("+imgs[i]+")"; 
				}
				$(function  () {
					$("#background").hover(function  () {
						
						window.clearInterval(img);
					},function  () {
						img=window.setInterval(change,5000);
					})
				})
			
			/*用户名校验*/
			var errors = [
				"请输入账户名和密码",
				"请输入密码"
			];
			var $username;
			var $password;
			var $errorDiv=$("div.loginDivError");
			var $normalDiv=$("div.loginDiv2");
			$(function() {
				$username = $("#user");
				$password = $("#mima");
				$objArr = $(".loginDiv3Fisrt");
				
				$username.focus(function() {
					$($objArr[0]).removeClass("item-error");
					$($objArr[0]).find("label").removeClass("name-error-label");
					$($objArr[0]).addClass("focus-input");
					$($objArr[0]).find("label").addClass("name-focus-label");					
				});
				$username.blur(function() {
					$($objArr[0]).removeClass("focus-input");
					$($objArr[0]).find("label").removeClass("name-focus-label");
				});
				$password.focus(function() {
					$($objArr[1]).removeClass("item-error");
					$($objArr[1]).find("label").removeClass("pass-error-label");
					$($objArr[1]).addClass("focus-input");
					$($objArr[1]).find("label").addClass("pass-focus-label");
				});
				$password.blur(function() {
					$($objArr[1]).removeClass("focus-input");
					$($objArr[1]).find("label").removeClass("pass-focus-label");
				});
			});
			
			function checkUser() {
			//去除空格
			
				var username=trim($username.val());
				var password=trim($password.val());
				var flag = true;
				
				if(username== "") {
				
						$errorDiv.text("");
						$errorDiv.append("<b><b/>");
						$errorDiv.append(errors[0]);
						$normalDiv.hide();
						$errorDiv.show();
						$($objArr[0]).addClass("item-error");
						$($objArr[0]).find("label").addClass("name-error-label");
						flag = false;
						
				}
				if(password== "" && username!="") {
				
						$errorDiv.text("");
						$errorDiv.append("<b><b/>");
						$errorDiv.append(errors[1]);
						$normalDiv.hide();
						$errorDiv.show();
						$($objArr[1]).addClass("item-error");
						$($objArr[1]).find("label").addClass("pass-error-label");
						flag = false;
						
				}					
				//提交表单
				
				if(flag){
					$("#loginForm").submit();
				}
			}

			function trim(txt) {			
				var afterTrimTxt = txt.replace(/^\s*/, "").replace(/\s*$/, "");
				return afterTrimTxt;
			}
			/*扫码登录与用户名登录切换*/	
			$(function(){	
				$("#user-login").click(function(){
					$("#input").show();
					$("#maLogin").hide();
				});
				$("#ma-login").click(function(){
					$("#input").hide();
					$("#maLogin").show();
				});			
			});
			
		</script> 
	</body>
</html>
