<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>注册成功页面</title>
    <link rel="shortcut icon" href="css/favicon.ico" type="image/x-icon" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<style type="text/css">
		a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var {
			margin: 0;
			padding: 0;
			}
		.all{
			width: 100%;
			height: 800;
			}
		#logo{
			width: 100%px;
			height: 150px;
			background-color: white;
			position: relative;
			}
		.middle{
			width: 100%px;
			height: 450px;
			position: relative;
			text-align: center;
			background-color:#ffb16f;						
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
				
				margin-left: 470px;
				display: inline;
			}
			/*middle*/
				
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
			img{
				position: relative;
				top: 7px;
			}
			.middle-img{
				position: relative;
				top: 60px;
			}
			.middle-content{
				margin-top:60px;
				font-size:30px;
				font-family:"华文新魏";
			}
			.second-content{
			margin-top:10px;
			font-family:"楷体";
			}
	</style>
	
  </head>
  
  <body>
    <div class="all">
    	<div id="logo">
			<div id="dog">
				<div id="firstDog"><img src="img/login/dog.png"  width="100" height="60" ></div> 
        		<div id="jingdong" >京东</div>
        		<div id="welcome" >欢迎成为京东注册用户</div>
        		<div id="pop"><img src="img/login/maopao.PNG"/></div> 				
        		<div id="check"><a href="">登录页面，调查问卷</a></div>	
			</div>
		</div>
		
		<div class="middle">
			<img class="middle-img" src="img/login/smile.jpg">
			<div class="middle-content">
				<%
					String msg = (String)request.getAttribute("msg");										
				%>
				恭喜<%=msg%>，成为京东注册用户	
			</div>
			<div class="second-content"><i style="background-color:6ac9e4;color: white;">请到注册邮箱激活用户后登录</i></div>						
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
    </div>
  </body>
</html>
