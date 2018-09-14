<%@ page language="java" import="java.util.*,com.vo.*,com.service.inter.*,com.service.impl.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>京东项目(JD.COM)-正品低价、品质保障、配送及时、轻松购物！</title>
		<link rel="stylesheet" type="text/css" href="jdchenying/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="jdchenying/css/swiper.min.css">
		<link rel="stylesheet" type="text/css" href="jdchenying/css/baceNext.css"/>
		<link rel="stylesheet" type="text/css" href="jdchenying/css/iconfont.css"/>
		<link rel="shortcut icon"href="jdchenying/favicon.ico" >
		<link rel="stylesheet" type="text/css" href="jdchenying/css/bace.css"/>
		<style type="text/css">
			* {
				box-sizing: content-box;
			}
		</style>
		<script src="jdchenying/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="jdchenying/js/bootstrap.min.js" ></script>
		<script type="text/javascript">
			
			
			$(function(){
				//计时器
				var second;
			    var s=5;
				second = document.getElementById("jd1ed-second");
				minute = document.getElementById("jd1ed-minute");
				var t = $("#jd1ed-minute").text();
				window.setInterval(deTime,1000);
				function deTime(){
					s--
					second.innerHTML=s;
					if(s==0){
						t--;
						minute.innerHTML=t;
						second.innerHTML='0'+s;
						s=60;
					}
					if((s<10)){
						second.innerHTML='0'+s;
					}
				}
				//
			});
		</script>
  

  </head>
  
  <body class="index">
		<!--site-nav部分start-->
		<div class="site-nav">
			<div class="w tb">
				<a href="" class="site-top"></a>
				<a href="" class="close-banner"></a>
			</div>
		</div>
		<!--site-nav部分end-->
		
		<!--top-nav部分start-->
		<div class="top-nav">
			<div class="w jsFortop-nav">
				<ul class="fl tobejing">
					<li class="sendcity">
						<div class="top-nav-city jsTN1">
							<i class="iconfont">&#xe636;</i>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;北京</span>
						</div>
					</li>
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
							<div class="top-nav-jdp">
								<img src="jdchenying/img/jd二维码.png"/>
							</div>
						</div>
					</li>		
				</ul>
			</div>
		</div>

		<!--top-nav部分end-->
		<!--head部分start-->
		<div class="index-head">
			<div class="w he">
				<div class="head-logo">
					<h1 class="head-h1">
						<a href="" class="logo-a"></a>
					</h1>
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
		
		
		
		<!--fs部分start-->
		<div class="fs">
			<div class="w">
				<div class="fs-col1">
					<div class="fs-col1l-ist">
						<ul class="ist-uls ">
						<%
							List<Jdgood> list = (List<Jdgood>) request.getAttribute("list");
							
							for (Jdgood jdgoods : list) {
						%>
							<li class="ist-thisli togood2and3">
								<a class="ist-thisa" href=""><%=jdgoods.getJname()%></a>
								
								<div class="jdgood2and3">
									<%
										//根据一级商品种类 查询下面的二级商品种类
										Jdgood2Service service = new Jdgood2ServiceImpl();
									
										List<Jdgood2> jdgood2List = service.getAllJdgood2ByJdgood(jdgoods.getJid());
										
										for(Jdgood2 jdgood2:jdgood2List){
									%>	
									<div class="jdgood2andjd3" >
										<div class="jdgood2">
											<div class="jdgood2-text">
												<a href="UserProductServlet?action=getProductListByCategory&requestPage=1&cid=<%=jdgood2.getJ2id()%>"><%=jdgood2.getJ2name()%></a>
												<i class="iconfont" style="float: right;">&#xe617;</i>
											</div>
										</div>
										<%
										//根据二级商品种类 查询下面的三级商品种类
											Jdgood3Service service2 = new Jdgood3ServiceImpl();
										
											List<Jdgood3> jdgood3List = service2.getAllJdgood3ByJdgood(jdgood2.getJ2id());
										
											for(Jdgood3 jdgood3:jdgood3List){
										%>
											<div class="jdgood3">
												<a href=""><%=jdgood3.getJ3name()%></a>
											</div>
										<%
											}
										 %>
									</div>
								
									<%
										}
									 %>
								</div>	
							</li>
						<%
							}
						%>	
						
						</ul>
					</div>
				</div>
				<div class="fs-col2">
					<div class="col2-out">
						<div class="col2-in">
							<div class="col2-main">
								
								<div class="col2-imgs">
									<div class="col2-imglist">
										<div class="swiper-container col2Swiper">
											<div class="swiper-wrapper">
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-1.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-2.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-3.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-4.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-5.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-6.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-7.jpg" alt="First slide">
													</a>
												</div>
												<div class="swiper-slide">
													<a href="">
														<img src="img/head/fs-col2-1-8.jpg" alt="First slide">
													</a>
												</div>
											</div>
											<!-- Add Pagination -->
											<div class="swiper-pagination" style="left: 39%;"></div>
											<div class="swiper-button-next" style="right: 0px;">
												<button class="jd1-button2">
														<i class="iconfont" id="jd1-icon2">&#xe621;</i>
												</button>
											</div>
											<div class="swiper-button-prev" style="left: 0px;">
												<button class="jd1-button1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
														<i class="iconfont" id="jd1-icon1">&#xe60c;</i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="fs-col3">
					<div class="col3-main">
						<div class="col3-img">
							<a href="">
								<img src="img/col3-1.jpeg"/>
							</a>
						</div>
						<div class="col3-img">
							<a href="">
								<img src="img/col3-2.jpeg"/>
							</a>
						</div>
						<div class="col3-img">
							<a href="">
								<img src="img/col3-3.jpeg"/>
							</a>
						</div>
					</div>
				</div>
				<div class="fs-col4">
					<div class="col4-head">
						<div class="col4head-main">
							<div class="col4headmain-start">
								<a class="col4start-a" href="">
									<img src="img/col4-head.jpg"/>
								</a>
							</div>
							<div class="col4headmain-middle" >
								<p class="theup">Hi~欢迎来到京东！</p>
								<p class="thedown">
									<a href="">登录</a>
									<a href="">注册</a>
								</p>
							</div>
							<div class="col4headmain-end">
								<a class="col4end-a1" href="">新人福利</a>
								<a class="col4end-a2" href="">PLUS会员</a>
							</div>
						</div>
					</div>
					<div class="col4-body">
						<div class="col4-body-div1">
							<ul class="col4-body-ul">
								<li class="col4-body-li1">
									<a href="">促销</a>
								</li>
								<li class="col4-body-line"></li>
								<li class="col4-body-li2">
									<a href="">公告</a>
								</li>
								<li class="col4-body-li3">
									<a href="">更多</a>
								</li>
							</ul>
						</div>
						<div class="col4-body-div2">
							<ul>
								<li>
									<a href="">百万阶梯劵企业专享</a>
								</li>
								<li>
									<a href="">家电放价万台815元空调</a>
								</li>
								<li>
									<a href="">赛格威平衡轮W1 即踩即走</a>
								</li>
								<li>
									<a href="">奥妙-向伟大的母亲致净</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col4-end">
						<div class="col4-end-main">
							<ul>
								<li>
									<a href="">
										<i class="iconfont">&#xe638;</i>
										<span id="">
											话费
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="col4-p1">降</p>
										<i class="iconfont">&#xe6f8;</i>
										<span id="">
											机票
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe61b;</i>
										<span id="">
											酒店
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe682;</i>
										<span id="">
											游戏
										</span>
									</a>
								</li>
							</ul>
							<ul>
								<li>
									<a href="">
										<i class="iconfont">&#xe705;</i>
										<span id="">
											企业购
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<p class="col4-p1">减</p>
										<i class="iconfont">&#xe603;</i>
										<span id="">
											加油卡
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe60b;</i>
										<span id="">
											电影票
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe69c;</i>
										<span id="">
											火车票
										</span>
									</a>
								</li>
							</ul>
							<ul>
								<li>
									<a href="">
										<i class="iconfont">&#xe641;</i>
										<span id="">
											众筹
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe61e;</i>
										<span id="">
											理财
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe650;</i>
										<span id="">
											礼品卡
										</span>
									</a>
								</li>
								<li>
									<a href="">
										<i class="iconfont">&#xe623;</i>
										<span id="">
											白条
										</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<!--fs部分end-->
		
		
		
		<!--jdcore(这是整个中心部分)部分start-->
		<div class="jdcore">
			
			<!--jdcore-1 start-->
			<div class="jdcore-1">
				<div class="w">
					<div class="jdcore1-left">
						<a href="">
							<div class="jd1LF-hd">
								京东秒杀
							</div>
							<div class="jd1LF-nt">
								FLASH&nbsp;&nbsp;DEALS
							</div>
							<i class="iconfont">&#xe670;</i>
							<div class="jd1Lf-md">
								本场距离结束还剩
							</div>
							<div class="jd1LF-ed">
								<!--京东计时器-->
								<div id="jd1ed-hour">
									01
								</div>
								<div id="jd1ed-minute">28</div>
								<div id="jd1ed-second">
									00
								</div>
								<div class="jd1ed-line">
									
								</div>
							</div>
						</a>
					</div>
					<div class="jdcore1-right">
						<div class="jdcore1R-list">
							<div class="swiper-container jdcore1Rswiper">
								<div class="swiper-wrapper" style="cursor: grab;">
									<div class="swiper-slide">
										<div class="jdcore1LiST-main">
											<div class="jd1-list" title="半日闲 怪味胡豆500g 怪味胡豆 兰花豆 麻辣蚕豆 休闲零食500g 怪味胡豆 香辣味">
												<a href="">
													<img class="jdcore1-img" src="img/jdcore-1.jpeg" />
													<p class="jdcore1-text">半日闲 怪味胡豆500g 怪味胡豆 兰花豆 麻辣蚕豆 休闲零食500g 怪味胡豆 香辣味</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥9.90</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥16.90
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="蒙衲普 偏光太阳镜男女同款驾驶镜 司机墨镜炫彩膜眼镜蛤蟆镜 潮款可定制近视镜 枪框黑灰片">
													<img class="jdcore1-img" src="img/jdcore-2.jpeg" />
													<p class="jdcore1-text">蒙衲普 偏光太阳镜男女同款驾驶镜 司机墨镜炫彩膜眼镜蛤蟆镜 潮款可定制近视镜 枪框黑灰片</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥99.50</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥139.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="得宝 Tempo纸巾无味软抽4层90抽*18包整箱抽纸德宝餐巾纸面巾纸">
													<img class="jdcore1-img" src="img/jdcore-3.jpeg" />
													<p class="jdcore1-text">得宝 Tempo纸巾无味软抽4层90抽*18包整箱抽纸德宝餐巾纸面巾纸</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥699.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥2000.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="领奥 Mini智能电动儿童自平衡车两轮成人越野双轮思维代步扭扭车体感车带扶手 APP遥控 炫白色音乐款【10吋越野宽轮+腿控+手控+APP】">
													<img class="jdcore1-img" src="img/jdcore-4.jpeg" />
													<p class="jdcore1-text">领奥 Mini智能电动儿童自平衡车两轮成人越野双轮思维代步扭扭车体感车带扶手 APP遥控 炫白色音乐款【10吋越野宽轮+腿控+手控+APP】</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥99</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥279.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
										</div>
				
									</div>
									<div class="swiper-slide">
										<div class="jdcore1LiST-main">
											<div class="jd1-list" title="蒙牛 真果粒牛奶饮品（四种口味）250g*24 缤纷 礼盒装">
												<a href="">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_2-1.jpeg" />
													<p class="jdcore1-text">蒙牛 真果粒牛奶饮品（四种口味）250g*24 缤纷 礼盒装</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥59.89</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥99.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="华为(HUAWEI)M5 8.4英寸平板电脑（哈曼卡顿音效 4G内存/32G存储 WiFi）香槟金">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_2-2.jpeg" />
													<p class="jdcore1-text">华为(HUAWEI)M5 8.4英寸平板电脑（哈曼卡顿音效 4G内存/32G存储 WiFi）香槟金</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥1885.50</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥2088.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="联想 K5 Note 4GB+64GB 6英寸全面屏双摄 全网通4G手机 双卡双待 极地黑">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_2-3.jpeg" />
													<p class="jdcore1-text">联想 K5 Note 4GB+64GB 6英寸全面屏双摄 全网通4G手机 双卡双待 极地黑</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥799.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥999.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="格力(GREE) 2匹 变频 Q铂 立柜式冷暖空调 KFR-50LW/(50596)FNAa-A3">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_2-4.png" />
													<p class="jdcore1-text">格力(GREE) 2匹 变频 Q铂 立柜式冷暖空调 KFR-50LW/(50596)FNAa-A3</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥5298.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥6399.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
										</div>
				
									</div>
									<div class="swiper-slide">
										<div class="jdcore1LiST-main">
											<div class="jd1-list" title="澳大利亚进口脐橙 澳橙12个装 单果重约150g-180g  新鲜水果">
												<a href="">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_3-1.jpeg" />
													<p class="jdcore1-text">澳大利亚进口脐橙 澳橙12个装 单果重约150g-180g  新鲜水果</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥39.90</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥59.90
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="鲁花 食用油 非转基因 物理压榨 特香菜籽油 5L">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_3-2.jpeg" />
													<p class="jdcore1-text">鲁花 食用油 非转基因 物理压榨 特香菜籽油 5L</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥85.80</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥129.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="Wacom 和冠手写板 Bamboo Pen Medium CTL-672/K2-F 数位板、绘画板、绘图板">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_3-3.jpeg" />
													<p class="jdcore1-text">Wacom 和冠手写板 Bamboo Pen Medium CTL-672/K2-F 数位板、绘画板、绘图板</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥485.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥509.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="得宝(Tempo) 抽纸 4层100抽*(16+2)包德宝纸巾 天然无香（整箱销售）">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_3-4.jpeg" />
													<p class="jdcore1-text">得宝(Tempo) 抽纸 4层100抽*(16+2)包德宝纸巾 天然无香（整箱销售）</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥79.90</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥119.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
										</div>
				
									</div>
									<div class="swiper-slide">
										<div class="jdcore1LiST-main">
											<div class="jd1-list" title="科密 EW-9200 无线扫描枪一二维码扫码枪 农资农药医药药品条码枪 快递收银微信支付开票中文扫码器">
												<a href="">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_4-1.jpeg" />
													<p class="jdcore1-text">科密 EW-9200 无线扫描枪一二维码扫码枪 农资农药医药药品条码枪 快递收银微信支付开票中文扫码器</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥369.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥499.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="高尔夫GOLF升级可折叠防水男女双肩包大容量14/15英寸学生书包电脑包便携户外背包 深蓝色 防水可折叠2732">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_4-2.jpeg" />
													<p class="jdcore1-text">高尔夫GOLF升级可折叠防水男女双肩包大容量14/15英寸学生书包电脑包便携户外背包 深蓝色 防水可折叠2732</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥59.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥189.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="天地壹号 苹果醋饮料330ml×12罐 整箱（新老包装随机发货）">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_4-3.jpeg" />
													<p class="jdcore1-text">天地壹号 苹果醋饮料330ml×12罐 整箱（新老包装随机发货）</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥45.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥59.60
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
											<div class="jd1-list">
												<a href="" title="后Whoo拱辰享气韵生礼盒套装">
													<img class="jdcore1-img" src="img/jdcore1/jdcore1_4-4.jpeg" />
													<p class="jdcore1-text">后Whoo拱辰享气韵生礼盒套装</p>
													<div class="jdcore1-price">
														<div class="jd1price-new">
															<span class="jdcore1-new">￥799.00</span>
														</div>
				
														<div class="jd1price-old">
															<span class="jdcore1-old">
																￥899.00
																<div class="jdcore1-old-line"></div>
															</span>
				
														</div>
													</div>
												</a>
											</div>
										</div>
				
									</div>
									
								</div>
								<!-- Add Arrows -->
								
								<div class="swiper-button-next" style="right: 0px;">
									<button class="jd1-button2">
											<i class="iconfont" id="jd1-icon2">&#xe621;</i>
									</button>
								</div>
								<div class="swiper-button-prev" style="left: 0px;">
									<button class="jd1-button1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
											<i class="iconfont" id="jd1-icon1">&#xe60c;</i>
									</button>
								</div>
							</div>
	
						</div>
						<div class="jdcore1R-one">
						  	<div class="swiper-container swiper-jd1R-one">
							    <div class="swiper-wrapper">
							      	<div class="swiper-slide">
							      		<div class="jd1R-one">
											<a href="">
												<img src="img/jdcoreR-1.jpeg"/>
											</a>
										</div>
							      </div>
							      <div class="swiper-slide">
							      		<div class="jd1R-one">
											<a href="">
												<img src="img/jdcore1/jdcoreR-2.jpeg"/>
											</a>
										</div>
							      </div>
							     
							    </div>
							    <!-- Add Pagination -->
							    <div class="swiper-pagination" style="left: 42%;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-1 end  -->
			
			
		
			<!--jdcore-2 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-left">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>排行榜</h3>
								<i class="iconfont">&#xe784;</i>
								<span>专属你的购物指南</span>
							</a>
						</div>
						<div class="jd2LF-list">
							<div class="jd2LF-div">
								手机通信
							</div>
							<div class="jd2LF-div">
								大家电
							</div>
							<div class="jd2LF-div">
								厨房小电
							</div>
							<div class="jd2LF-div">
								生活电器
							</div>
							<div class="jd2LF-div">
								饮料冲调
							</div>
						</div>
						<div class="jd2LF-goods">
							<div class="jd2godds-1">
								<a href="">
									<img src="img/手机通讯-1.jpeg" class="jd2-img1"/>
									<span class="jd2godds-span1">1</span>
									<span class="jd2godds-span2">华为 HUAWEI 畅享7S 全面屏双摄 4GB +64GB 蓝色 移动联通电信4G手机 双卡双待</span>
								</a>
							</div>
							<div class="jd2godds-2">
								<a href="">
									<img src="img/手机通讯-2.jpeg" class="jd2-img1"/>
									<span class="jd2godds-span1">2</span>
									<span class="jd2godds-span2">荣耀10 GT游戏加速 AIS手持夜景 6GB+64GB 幻夜黑 全网通 移动联通电信4G 双卡双待</span>
								</a>
							</div>
							<div class="jd2godds-3">
								<a href="">
									<img src="img/手机通讯-3.jpeg" class="jd2-img1"/>
									<span class="jd2godds-span1">3</span>
									<span class="jd2godds-span2">一加手机6 8GB+128GB 月牙白 全面屏双摄游戏手机 全网通4G 双卡双待</span>
								</a>
							</div>
						</div>
						<!--此处还有4个部分-->
						<div class="jd2LF-line"></div>
						<div class="jd2LF-sdiv">
							<span class="jd2LF-span1">
								<i class="jd2LF-sdi1"></i>
							</span>
							<span class="jd2LF-span2">
								<i class="jd2LF-sdi2"></i>
							</span>
						</div>
					</div>
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>会买专辑</h3>
								<i class="iconfont">&#xe784;</i>
								<span>甄选优质好物品</span>
							</a>
						</div>
						<div class="jd2MD-bd">
							<div class="jd2MD-main">
								<button class="jd-buttonLF">
									<i class="iconfont" id="jd-iconLF">&#xe60c;</i>
								</button>
								<button class="jd1-buttonRI">
									<i class="iconfont" id="jd1-iconRI">&#xe621;</i>
								</button>
								<div class="jd2MD-main-imgs">
									<div class="jd2MD-M_imgs">
									<!--此处5个div不显示-->
										<a href="">
											<div class="jd2MDimgs-up">
												<img src="img/会买专辑-1.jpeg"/>
											</div>
											<div class="jd2MDimgs-down">
												<div class="jd2MD-down-imgs">
													<div class="jd2MD-down-imgone">
														<img src="img/会买专辑1-1.jpeg"/>
													</div>
													<div class="jd2MD-down-imgone">
														<img src="img/会买专辑1-2.jpeg"/>
													</div>
													<div class="jd2MD-down-imgone">
														<img src="img/会买专辑1-3.jpeg"/>
													</div>
												</div>
												<div class="jd2MD-span">
													<b>智能穿戴科技生活，手腕上的小小管家</b>
													
												</div>
												<div class="jd2MD-texts" title="科技一天天的发展，而我们生活中的各种高科技产物也层出不穷，对于追求时尚的年轻人来说，肯定是各种科技物品都要尝试一下。而今天推荐的这些智能手表就非常不错，极具未来感的外观设计，戴在手上简直酷毙，并且可接收手机的推送消息，电话、短信它一个都不会让你错过，还能支持多种运动模式，记录你全天的状态、。">
													科技一天天的发展，而我们生活中的各种高科技产物也层出不穷，对于追求时尚的年轻人来说，肯定是各种科技物品都要尝试一下。
													而今天推荐的这些智能手表就非常不错，极具未来感的外观设计，
													戴在手上简直酷毙，并且可接收手机的推送消息，电话、短信它一个都不会让你错过，还能支持多种运动模式，记录你全天的状态、。
												</div>
											</div>
										</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="jd2MD-ed">
							<div class="jd2LF-sdiv">
								<span class="jd2LF-span1">
									<i class="jd2LF-sdi1"></i>
								</span>
								<span class="jd2LF-span2">
									<i class="jd2LF-sdi2"></i>
								</span>
							</div>
						</div>
					</div>
					<div class="jd2-right">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>领劵中心</h3>
								<i class="iconfont">&#xe784;</i>
								<span>前往领劵中心</span>
							</a>
						</div>
						<div class="jd2RI-body">
							<div class="jd2RI-bodymains">
								<a href="">
									<div class="jd2RI-bodybgm">
										<img src="img/领劵中心-1.png" class="jd2RI-bodypngs"/>
									</div>
									<div class="jd2RI-bodytests">
										<div class="jd2RI-BDup">
											￥200
										</div>
										<div class="jd2RI-BDml">
											满2980元可用
										</div>
										<div class="jd2RI-BDdw">
											可购买部分自营手机商品【手机神券日】
										</div>
									</div>
									<div class="jd2RI-bodyCOL">
										更多精选好劵
									</div>
									<div class="jd2RI-boll1"></div>
									<div class="jd2RI-boll2"></div>
								</a>
							</div>
							<div class="jd2RI-bodymains">
								<a href="">
									<div class="jd2RI-bodybgm">
										<img src="img/领劵中心-2.jpeg" class="jd2RI-bodypngs"/>
									</div>
									<div class="jd2RI-bodytests">
										<div class="jd2RI-BDup">
											￥100
										</div>
										<div class="jd2RI-BDml">
											满500元可用
										</div>
										<div class="jd2RI-BDdw">
											可购买部分自营手机商品【手机神券日】
										</div>
									</div>
									<div class="jd2RI-bodyCOL">
										更多手机数码劵
									</div>
									<div class="jd2RI-boll1"></div>
									<div class="jd2RI-boll2"></div>
								</a>
							</div>
							<div class="jd2RI-bodymains">
								<a href="">
									<div class="jd2RI-bodybgm">
										<img src="img/领劵中心-3.jpeg" class="jd2RI-bodypngs"/>
									</div>
									<div class="jd2RI-bodytests">
										<div class="jd2RI-BDup">
											￥55
										</div>
										<div class="jd2RI-BDml">
											满199元可用
										</div>
										<div class="jd2RI-BDdw">
											可购买部分自营手机商品【手机神券日】
										</div>
									</div>
									<div class="jd2RI-bodyCOL">
										更多食品饮料劵
									</div>
									<div class="jd2RI-boll1"></div>
									<div class="jd2RI-boll2"></div>
								</a>
							</div>
						</div>
						
						<div class="jd2RI-end">
							<div class="jd2LF-sdiv">
								<span class="jd2LF-span1">
									<i class="jd2LF-sdi1"></i>
								</span>
								<span class="jd2LF-span2">
									<i class="jd2LF-sdi2"></i>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-2 end  -->
			
			
			<!--jdcore-3 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>觅me</h3>
								<i class="iconfont">&#xe784;</i>
								<span>探索生活</span>
							</a>
						</div>
						<div class="jd2MD-bd">
							<div class="jd2MD-main">
								<button class="jd-buttonLF">
									<i class="iconfont" id="jd-iconLF">&#xe60c;</i>
								</button>
								<button class="jd1-buttonRI">
									<i class="iconfont" id="jd1-iconRI">&#xe621;</i>
								</button>
								<div class="jd2MD-main-imgs">
									<div class="jd2MD-M_imgs">
									<!--此处5个div不显示-->
										<a href="">
											<div class="jd3LF-up">
												<img src="img/寻觅1-1.jpeg"/>
											</div>
											<div class="jd3LF-down">
												<div class="jd2MD-span">
													<b>美人计重塑婀娜身姿，get妖娆小蛮腰</b>
												</div>
												<div class="jd2MD-texts" title="炎炎夏日，是一个大秀身姿的好时节。在这个夏天，选择一款什么样的衣服，能够展示自己婀娜多姿的身材呢？好想穿上性感的露挤装，露出自己的马甲线。">
													炎炎夏日，是一个大秀身姿的好时节。在这个夏天，选择一款什么样的衣服，能够展示自己婀娜多姿的身材呢？好想穿上性感的露挤装，露出自己的马甲线。
												</div>
											</div>
										</a>
									</div>
								</div>
								
							</div>
						</div>
						<div class="jd2MD-ed">
							<div class="jd2LF-sdiv">
								<span class="jd2LF-span1">
									<i class="jd2LF-sdi1"></i>
								</span>
								<span class="jd2LF-span2">
									<i class="jd2LF-sdi2"></i>
								</span>
							</div>
						</div>
					</div>
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>发现好货</h3>
								<i class="iconfont">&#xe784;</i>
								<span>发现品质生活</span>
							</a>
						</div>
						<div class="jd3MD-body">
							<ul>
								<li class="jd3MD-bodyitem">
									<a href="">
										<div class="jd3MD-bodyimg">
											<img src="img/发现好货1-1.png"/>
										</div>
										<div class="jd3MD-bodyup">安桥家庭影院功放</div>
										<div class="jd3MD-bodydown" title="环绕格式方面支援高清音频格式例如杜比TrueHD 技术，放大器部分，实现了低噪音，同时重播出结实的低音和清晰的中高频，除此之外亦设有低音增强技术。">
											环绕格式方面支援高清音频格式例如杜比TrueHD 技术，放大器部分，实现了低噪音，同时重播出结实的低音和清晰的中高频，除此之外亦设有低音增强技术。
										</div>
									</a>
								</li>
								<li class="jd3MD-bodyitem">
									<a href="">
										<div class="jd3MD-bodyimg">
											<img src="img/发现好货1-2.png"/>
										</div>
										<div class="jd3MD-bodyup">喜玛尔图薄款冲锋衣</div>
										<div class="jd3MD-bodydown" title="适合春秋季穿着的薄款冲锋衣，舒适轻盈，面料拒油污并具有4级防水性能，同时防风透湿，风雨无阻助你勇敢探索。款式符合亚洲人身材，腋下设有透气网布，穿着舒适无拘束。">
											适合春秋季穿着的薄款冲锋衣，舒适轻盈，面料拒油污并具有4级防水性能，同时防风透湿，风雨无阻助你勇敢探索。款式符合亚洲人身材，腋下设有透气网布，穿着舒适无拘束。
										</div>
									</a>
								</li>
								<li class="jd3MD-bodyitem">
									<a href="">
										<div class="jd3MD-bodyimg">
											<img src="img/发现好货1-3.jpeg"/>
										</div>
										<div class="jd3MD-bodyup">海尔自清洁圆柱空调</div>
										<div class="jd3MD-bodydown" title="3匹智能圆柱空调，可以有效覆盖30到40平的面积，给大客厅带来全方位的降温体验。内外机自清洁系统，对机器进行清洗拒绝细菌附着，净化空气守护呼吸健康。">
											3匹智能圆柱空调，可以有效覆盖30到40平的面积，给大客厅带来全方位的降温体验。内外机自清洁系统，对机器进行清洗拒绝细菌附着，净化空气守护呼吸健康。
										</div>
									</a>
								</li>
								<li class="jd3MD-bodyitem">
									<a href="">
										<div class="jd3MD-bodyimg">
											<img src="img/发现好货1-4.jpeg"/>
										</div>
										<div class="jd3MD-bodyup">HTC全面屏游戏手机</div>
										<div class="jd3MD-bodydown" title="环绕格式方面支援高清音频格式例如杜比TrueHD 技术，放大器部分，实现了低噪音，同时重播出结实的低音和清晰的中高频，除此之外亦设有低音增强技术。">
											TA以火炽红炫美色系，开启新年新篇章。18:9的全面屏设计，让宽广的视野在手中游刃有余。边框自定义触控模式，让你拿在手中忍不住把玩。半透明机身，让神秘的内部构造若影若现。
										</div>
									</a>
								</li>
							</ul>
						</div>
						
					</div>
					<div class="jd2-right">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>会逛</h3>
								<i class="iconfont">&#xe784;</i>
								<span>你要逛的都在这里</span>
							</a>
						</div>
						<div class="jd3LF-down">
							<div class="jd2MD-main">
								<div class="jd3MD-main-imgs">
									<div class="jd3MD-M_imgs">
										<a href="">
											<div class="jd3LF-up">
												<img src="img/会逛1-1.jpeg"/>
											</div>
											<div class="jd3LFbody-down">
												<div class="jd3LF-downimgs">
													<img src="img/会逛2-1.jpeg"/>
												</div>
												<div class="jd3LF-downimgs">
													<img src="img/会逛2-2.jpeg"/>
												</div>
												<div class="jd3LF-downimgs">
													<img src="img/会逛2-3.jpeg"/>
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-3 end  -->
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>时尚达人</h3>
			</div>
			
			<!--jdcore-4 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-left">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>运动户外</h3>
								<i class="iconfont">&#xe784;</i>
								<span>玩所未玩</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/运动户外1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/运动户外1-2.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/运动户外1-3.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>魅力装扮</h3>
								<i class="iconfont">&#xe784;</i>
								<span>精致生活</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/魅力装扮1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/魅力装扮1-2.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/魅力装扮1-3.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="jd4-right">
						<div class="jd4-picture">
							<a href="">
								<img src="img/美妆节.jpeg"/>
							</a>
						</div>
						<div class="jd4-panes"></div>
					</div>
				</div>
			</div>
			
			<!--jdcore-4 end  -->
			
			<!--jdcore-5 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd5-left">
						<div class="jd5-picture">
							<a href="">
								<img src="img/小猪佩奇.jpeg"/>
							</a>
						</div>
						<div class="jd5-panes"></div>
					</div>
					<div class="jd5-middle">
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">足下男靴·</h3>
									<span>男神必备型靴</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/足下型靴1-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/足下型靴1-2.jpeg"/>
								</div>
							</div>
						</a>
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">原宿少年·</h3>
									<span>简单自然</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/原宿少年1-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/原宿少年1-2.jpeg"/>
								</div>
							</div>
						</a>
					</div>
					<div class="jd5-right">
						<div class="jd5-right-body">
							<div class="jd5-right-up">
								<a href="">
									<div class="jd5-right-upIMG">
										<img src="img/jd5RI1-1芬腾.jpeg"/>
									</div>
									<span class="jd5-right-upSpan">芬腾官方京东自营旗舰店</span>
								</a>
							</div>
							<div class="jd5-right-md">
								<img src="img/jd5RI-1-2.jpeg"/>
							</div>
							<div class="jd5RIbody-down">
								<div class="jd5RI-downimgs">
									<img src="img/jd5RI芬腾2-1.jpeg"/>
								</div>
								<div class="jd5RI-downimgs">
									<img src="img/jd5芬腾2-2.jpeg"/>
								</div>
								<div class="jd5RI-downimgs">
									<img src="img/jd5芬腾2-3.jpeg"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-5 end  -->
			

			<!--jdcore-6 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-left">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>京东服饰</h3>
								<i class="iconfont">&#xe784;</i>
								<span>尽享时尚生活</span>
							</a>
						</div>
						<div class="jd3LF-down">
							<div class="jd2MD-main">
								<div class="jd3MD-main-imgs">
									<div class="jd3MD-M_imgs">
										<a href="">
											<div class="jd3LF-up">
												<img src="img/jd6京东服饰1-1.jpeg"/>
											</div>
											<div class="jd3LFbody-down">
												<div class="jd3LF-downimgs">
													<img src="img/jd6京东服饰2-1.jpeg"/>
												</div>
												<div class="jd3LF-downimgs">
													<img src="img/jd6京东服饰2-2.jpeg"/>
												</div>
												<div class="jd3LF-downimgs">
													<img src="img/jd6京东服饰2-3.jpeg"/>
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>我型我素</h3>
								<i class="iconfont">&#xe784;</i>
								<span>时尚有我 品质衣橱</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/jd6我型我素1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd6我型我素1-2.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd6我型我素1-3.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="jd4-right">
						<div class="jd4-picture">
							<a href="" class="jd6-upa">
								<img src="img/jd6rightup.jpeg"/>
							</a>
							<a href="" class="jd6-downa">
								<img src="img/jd6rightdown.jpeg"/>
							</a>
						</div>
						<div class="jd4-panes"></div>
					</div>
				</div>
			</div>
			<!--jdcore-6 end  -->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>智能先锋</h3>
			</div>
			
			<!--jdcore-7 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-left">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>手机频道</h3>
								<i class="iconfont">&#xe784;</i>
								<span>一个极客的诞生</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="" class="jd7bodyupa1">
									<img src="img/jd7手机频道1-1.jpeg"/>
								</a>
								<a href="" class="jd7bodyupa2">
									<img src="img/jd7手机频道1-2.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<table border="1px" style="color: #DDCDA0;" cellspacing="" cellpadding="3px">
									<tr>
										<th>
											<a href="">
												<img src="img/jd7手机频道2-1.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道2-2.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道2-3.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道2-4.jpeg"/>
											</a>
										</th>
									</tr>
									<tr>
										<th>
											<a href="">
												<img src="img/jd7手机频道3-1.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道3-2.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道3-3.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道3-4.png"/>
											</a>
										</th>
									</tr>
									<tr>
										<th>
											<a href="">
												<img src="img/jd7手机频道4-1.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道4-2.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道4-3.jpeg"/>
											</a>
										</th>
										<th>
											<a href="">
												<img src="img/jd7手机频道4-4.jpeg"/>
											</a>
										</th>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>新品首发</h3>
								<i class="iconfont">&#xe784;</i>
								<span>看新奇好物 必来新品首发</span>
							</a>
						</div>
						<div class="jd4-body">
							<a href="">
								<img src="img/jd7新品首发.png"/>
							</a>
						</div>
					</div>
					<div class="jd4-right">
						<div class="jd4-picture">
							<a href="">
								<img src="img/jd7-RI电脑数码.jpeg"/>
							</a>
						</div>
						<div class="jd4-panes"></div>
					</div>
				</div>
			</div>
			<!--jdcore-7 end  -->
			
			
			<!--jdcore-8 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd5-left">
						<div class="jd5-picture">
							<a href="" class="jd6-upa">
								<img src="img/jd8LEup.jpeg"/>
							</a>
							<a href="" class="jd6-downa">
								<img src="img/jd8LEdown.jpeg"/>
							</a>
						</div>
						<div class="jd5-panes"></div>
					</div>
					<div class="jd5-middle">
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">酷玩3C·</h3>
									<span>精选酷玩3C</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/jd8MI1-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/jd8MI1-2.jpeg"/>
								</div>
							</div>
						</a>
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">游戏人生·</h3>
									<span>超酷游戏</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/jd8MI2-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/jd8MI2-2.jpeg"/>
								</div>
							</div>
						</a>
					</div>
					<div class="jd5-right">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>智能数码</h3>
								<i class="iconfont">&#xe784;</i>
								<span>智能潮货 high购不停</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/jd8RI-up.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<a href="">
									<img src="img/jd8RI-down.png"/>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-8 end  -->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>生活百货</h3>
			</div>
			
			<!--jdcore-9 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-left">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>京东超市</h3>
								<i class="iconfont">&#xe784;</i>
								<span>精选超值好物</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/jd9京东超市1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd9京东超市1-2.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd9京东超市1-3.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="jd2-middle">
						<div class="jd5-right-body">
							<div class="jd5-right-up">
								<a href="">
									<div class="jd5-right-upIMG">
										<img src="img/jd9MI1-1.jpeg"/>
									</div>
									<span class="jd5-right-upSpan">恒都自营旗舰店</span>
								</a>
							</div>
							<div class="jd5-right-md">
								<img src="img/jd9MI2-1.jpeg"/>
							</div>
							<div class="jd5RIbody-down">
								<div class="jd5RI-downimgs">
									<img src="img/jd9MI3-1.jpeg"/>
								</div>
								<div class="jd5RI-downimgs">
									<img src="img/jd9MI3-2.jpeg"/>
								</div>
								<div class="jd5RI-downimgs">
									<img src="img/jd9MI3-3.jpeg"/>
								</div>
							</div>
						</div>
					</div>
					<div class="jd4-right">
						<div class="jd4-picture">
							<a href="">
								<img src="img/jd9RI.jpeg"/>
							</a>
						</div>
						<div class="jd4-panes"></div>
					</div>
				</div>
			</div>
			
			<!--jdcore-9 end  -->
			
			<!--jdcore-10 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd5-left">
						<div class="jd5-picture">
							<a href="" class="jd6-upa">
								<img src="img/jd10LEup.jpeg"/>
							</a>
							<a href="" class="jd6-downa">
								<img src="img/jd10LEdown.jpeg"/>
							</a>
						</div>
						<div class="jd5-panes"></div>
					</div>
					<div class="jd5-middle">
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">玩儿乐汇·</h3>
									<span>儿童玩具</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/jd10MI1-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/jd10MI1-2.jpeg"/>
								</div>
							</div>
						</a>
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">名酒荟萃·</h3>
									<span>挚爱名酒</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/jd10MI2-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/jd10MI2-2.jpeg"/>
								</div>
							</div>
						</a>
					</div>
					<div class="jd5-right">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>吃喝玩乐</h3>
								<i class="iconfont">&#xe784;</i>
								<span>为你挑选最好的</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/jd10RI1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd10RI2-1.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd10RI2-2.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-10 end  -->
			
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>居家优品</h3>
			</div>
			
			
			
			<!--jdcore-11 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd5-left">
						<div class="jd5-picture">
							<a href="">
								<img src="img/jd11LE.jpeg"/>
							</a>
						</div>
						<div class="jd5-panes"></div>
					</div>
					<div class="jd2-middle">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>家电馆</h3>
								<i class="iconfont">&#xe784;</i>
								<span>家电好物节</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/jd11MI1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd11MI2-1.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd11MI2-2.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="jd5-right">
						<div class="jd2LF-up">
							<a href="" class="jd2LF-a">
								<h3>我爱我家</h3>
								<i class="iconfont">&#xe784;</i>
								<span>品质生活家</span>
							</a>
						</div>
						<div class="jd4-body">
							<div class="jd4-bodyup">
								<a href="">
									<img src="img/jd11RI1-1.jpeg"/>
								</a>
							</div>
							<div class="jd4-bodydown">
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd11RI2-1.jpeg"/>
									</a>
								</div>
								<div class="jd4-bodydown-img">
									<a href="">
										<img src="img/jd11RI2-2.jpeg"/>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-11 end  -->
			
			
			<!--jdcore-12 start-->
			<div class="jdcore-2">
				<div class="w">
					<div class="jd2-left">
						<div class="jd5-right-body">
							<div class="jd5-right-up">
								<a href="">
									<div class="jd5-right-upIMG">
										<img src="img/jd12LE1-1.jpeg"/>
									</div>
									<span class="jd5-right-upSpan">芝华仕旗舰店</span>
								</a>
							</div>
							<div class="jd5-right-md">
								<img src="img/JD12LE2-1.jpeg"/>
							</div>
							<div class="jd5RIbody-down">
								<div class="jd5RI-downimgs">
									<img src="img/JD12LE3-1.jpeg"/>
								</div>
								<div class="jd5RI-downimgs">
									<img src="img/JD12LE3-2.jpeg"/>
								</div>
								<div class="jd5RI-downimgs">
									<img src="img/JD12LE3-3.jpeg"/>
								</div>
							</div>
						</div>
					</div>
					<div class="jd5-middle">
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">居家范儿·</h3>
									<span>居家睡衣</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/jd12MI1-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/jd12MI1-2.jpeg"/>
								</div>
							</div>
						</a>
						<a href="" class="jd5-MDa">
							<div class="jd2LF-up">
								<div href="" class="jd2LF-a">
									<h3 style="font-size: 18px;">大爱多肉·</h3>
									<span>萌萌多肉</span>
								</div>
							</div>
							<div class="jd5LF-down">
								<div class="jd5LF-downImg">
									<img src="img/jd12MI2-1.jpeg"/>
								</div>
								<div class="jd5LF-downImg">
									<img src="img/jd12MI2-2.jpeg"/>
								</div>
							</div>
						</a>
					</div>
					<div class="jd4-right">
						<div class="jd4-picture">
							<a href="" class="jd6-upa">
								<img src="img/jd12RIup-.jpeg"/>
							</a>
							<a href="" class="jd6-downa">
								<img src="img/jd12RIdown.jpeg"/>
							</a>
						</div>
						<div class="jd4-panes"></div>
					</div>
				</div>
			</div>
			<!--jdcore-12 end  -->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>JOY寻宝</h3>
			</div>
			
			
			<!--jdcore-13 start-->
			<div class="jdcore-13">
				<div class="w">
					<div class="jd13left">
						<div class="jd13-box">
							<div class="jd13-boxup">
								<a href="">
									<div class="jd13-boximg">
										<img src="img/jd13box1-1.jpeg"/>
									</div>
									<h3 class="jd13-boxtext">巅峰音质·音乐发烧友</h3>
								</a>
							</div>
							<div class="jd13LFbody-down">
								<div class="jd3LF-downimgs">
									<img src="img/jd13box1-2.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box1-3.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box1-4.jpeg"/>
								</div>
							</div>
						</div>
						<div class="jd13-box">
							<div class="jd13-boxup">
								<a href="">
									<div class="jd13-boximg">
										<img src="img/jd13box2-1.jpeg"/>
									</div>
									<h3 class="jd13-boxtext">冷酷到底·冷酷到底</h3>
								</a>
							</div>
							<div class="jd13LFbody-down">
								<div class="jd3LF-downimgs">
									<img src="img/jd13box2-2.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box2-3.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box2-4.jpeg"/>
								</div>
							</div>
						</div>
					</div>
					<div class="jd13middle">
						<div class="jd13-box">
							<div class="jd13-boxup">
								<a href="">
									<div class="jd13-boximg">
										<img src="img/jd13box3-1.jpeg"/>
									</div>
									<h3 class="jd13-boxtext">家庭影院·把影院搬回家</h3>
								</a>
							</div>
							<div class="jd13LFbody-down">
								<div class="jd3LF-downimgs">
									<img src="img/jd13box3-2.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box3-3.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box3-4.jpeg"/>
								</div>
							</div>
						</div>
						<div class="jd13-box">
							<div class="jd13-boxup">
								<a href="">
									<div class="jd13-boximg">
										<img src="img/jd13box4-1.jpeg"/>
									</div>
									<h3 class="jd13-boxtext">精致书房·书房装修</h3>
								</a>
							</div>
							<div class="jd13LFbody-down">
								<div class="jd3LF-downimgs">
									<img src="img/jd13box4-2.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box4-3.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box4-4.jpeg"/>
								</div>
							</div>
						</div>
					</div>
					<div class="jd13right">
						<div class="jd13-box">
							<div class="jd13-boxup">
								<a href="">
									<div class="jd13-boximg">
										<img src="img/jd13box5-1.jpeg"/>
									</div>
									<h3 class="jd13-boxtext">绝饰佳人·我的饰界</h3>
								</a>
							</div>
							<div class="jd13LFbody-down">
								<div class="jd3LF-downimgs">
									<img src="img/jd13box5-2.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box5-3.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box5-4.jpeg"/>
								</div>
							</div>
						</div>
						<div class="jd13-box">
							<div class="jd13-boxup">
								<a href="">
									<div class="jd13-boximg">
										<img src="img/jd13box6-1.jpeg"/>
									</div>
									<h3 class="jd13-boxtext">调酒大师·随你调配</h3>
								</a>
							</div>
							<div class="jd13LFbody-down">
								<div class="jd3LF-downimgs">
									<img src="img/jd13box6-2.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box6-3.jpeg"/>
								</div>
								<div class="jd3LF-downimgs">
									<img src="img/jd13box6-4.jpeg"/>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-13 end  -->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>特色推荐</h3>
			</div>
			
			
			<!--jdcore-14 start-->
			<div class="jdcore-14">
				<div class="w">
					<div class="jd14button" style="z-index: 1; position: absolute;" >
						<button class="jd-buttonLF" style="top: 160px; ">
						<i class="iconfont" id="jd-iconLF"style="color: white;">&#xe60c;</i>
						</button>
					</div>
					<div class="jd14button"style="z-index: 1;position: absolute;">
						<button class="jd1-buttonRI" style="top: 160px;left: 1170px;">
						<i class="iconfont" id="jd1-iconRI"style="color: white;">&#xe621;</i>
						</button>	
					</div>
					
					<div class="" style="z-index: 0;position: relative;height: 330px;">
						<div class="jd14-LE">
							<div class="jd2LF-up">
								<a href="" class="jd2LF-a">
									<h3>京东全球购</h3>
									<i class="iconfont">&#xe784;</i>
									<span>全球好物安心购</span>
								</a>
							</div>
							<div class="jd14down">
								<a href="">
									<img src="img/jd14-1-1.jpeg"/>
								</a>
							</div>
						</div>
						<div class="jd14-MD">
							<div class="jd2LF-up">
								<a href="" class="jd2LF-a">
									<h3>设计师推荐</h3>
									<i class="iconfont">&#xe784;</i>
									<span>全球设计精选</span>
								</a>
							</div>
							<div class="jd14down">
								<a href="">
									<img src="img/jd14-1-2.jpeg"/>
								</a>
							</div>
						</div>
						<div class="jd14-RI">
							<div class="jd2LF-up">
								<a href="" class="jd2LF-a">
									<h3>环球时尚</h3>
									<i class="iconfont">&#xe784;</i>
									<span>环球名品，奢华精选</span>
								</a>
							</div>
							<div class="jd14down">
								<a href="">
									<img src="img/jd14-1-3.jpeg"/>
								</a>
							</div>
						</div>
						<div class="">
							
						</div>
					</div>
					<div class="jd2MD-ed">
						<div class="jd2LF-sdiv" style="margin: 0px auto;">
							<span class="jd2LF-span1">
								<i class="jd2LF-sdi1"></i>
							</span>
							<span class="jd2LF-span2">
								<i class="jd2LF-sdi2"></i>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-14 end  -->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>京东直播</h3>
			</div>
			
			<!--jdcore-15 start-->
			<div class="jdcore-15">
				<div class="w">
					<div class="jd15-LE">
						<div class="jd15down">
							<div class="jd15-main">
								<a href="" style="position: relative;"title="时尚萌娃噜噜牛新品直降7折">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15LE1-1.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">新品直降7折</span>
								</a>
							</div>
							<div class="jd15-main">
								<a href="" style="position: relative;" title="专业珠宝镶嵌，下班在工厂直播！">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15LE1-2.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">专业镶嵌，支持定制！</span>
								</a>
							</div>
							<div class="jd15-main">
								<a href="" style="position: relative;" title="霸气琪爷带您淘翡翠，疯狂砍价中">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15LE1-3.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">拉好友点关注免费送礼物</span>
								</a>
							</div>
							<div class="jd15-main">
								<a href="" style="position: relative;" title="神画投影仪体验不一样的超清抽奖">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15LE1-4.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">抽奖送优酷年卡</span>
								</a>
							</div>
						</div>
					</div>
					<div class="jd15-MD">
						<div class="jd15center">
							<a href="" title="好货你懂得">
								<i class="iconfont">&#xe601;</i>
								<img src="img/jd15MD1-1.jpeg" style="z-index: 0;position: relative;"/>
								<p class="jd15MD-p1">好货你懂得</p>
								<p class="jd15MD-p2">直播专属</p>
							</a>
						</div>
					</div>
					<div class="jd15-RI">
						<div class="jd15down">
							<div class="jd15-main">
								<a href="" style="position: relative;"title="锦斐珠宝翡翠带你领略玉石之美">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15RI1-1.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">薄利  厂价   新开福利放送</span>
								</a>
							</div>
							<div class="jd15-main">
								<a href="" style="position: relative;" title="透真美妆买一送一丨超级划算">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15RI1-2.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">专业镶嵌，支持定制！</span>
								</a>
							</div>
							<div class="jd15-main">
								<a href="" style="position: relative;" title="千年沉淀 只为玉见你">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15RI1-3.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">0元起拍</span>
								</a>
							</div>
							<div class="jd15-main">
								<a href="" style="position: relative;" title="臻品籽料 玉遇有缘人 高货放漏">
									<i class="iconfont">&#xe601;</i>
									<img src="img/jd15RI1-4.jpeg" style="z-index: 0;position: relative;"/>
									<span class="jd15-span">好款   零起拍卖</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--jdcore-15 end  -->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>还没逛够</h3>
			</div>
			
			<!--more-nav部分开始-->
					<!--样式一开始-->
						<!--
							<div class="more-navDIV1">
								<a href="" title="">
									<div class="more-navDIV1head">
										<img src=""/>
									</div>
									<div class="more-navDIV1stern">
										<span class="more-navDIV1span1">
											
										</span>
										<span class="more-navDIV1span2">
											￥
										</span>
									</div>
								</a>
							</div>
							<a href="" class="more-navA2">
								<div class="more-navA2-div">
									加入购物车
								</div>
							</a>
						-->
					<!--样式一结束-->
					
					<!--样式二开始-->
					<!--
						<div class="more-navDIV2">
							<a href="" class="more-navA1">
								<div class="more-navDIV1head">
									<img src=""/>
								</div>
								<div class="more-navDIV1stern">
									<div class="more-navDIV1span1">
										<i class="more-navD2-i1">
											<img src=""/>
										</i>
										1
									</div>
									<div class="more-navDIV2down">
										<span class="more-navDIV2span1">￥25.5</span>
										<span class="more-navDIV2span2">
											￥28.5
											<i class="more-navD2-i2">
												<img src="1"/>
											</i>
										</span>
									</div>
								</div>
							</a>
						</div>
					-->
					<!--样式二结束-->
					
					<!--样式三开始-->
					<!--
						<div class="more-navDIV3">
							<a href="">
								<img src="img/more-nav1-2.jpeg"/>
							</a>
						</div>
					-->
					<!--样式三结束-->
					
			<div class="more-nav">
				<div class="w-more">
					<!--第一行开始-->
					<div class="more-navDIV1">
						<a href="" title="中国香港 GEL peppito 奶盐味梳打饼干405g 袋装 下午茶 早餐零食（新老包装随机发货）">
							<div class="more-navDIV1head">
								<img src="img/more-nav1-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									中国香港 GEL peppito 奶盐味梳打饼干405g 袋装 下午茶 早餐零食（新老包装随机发货）
								</span>
								<span class="more-navDIV1span2">
									￥19.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav1-2.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="飞科(FLYCO)电吹风机家用FH6232大功率吹风筒 2000W">
							<div class="more-navDIV1head">
								<img src="img/more-nav1-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									飞科(FLYCO)电吹风机家用FH6232大功率吹风筒 2000W
								</span>
								<span class="more-navDIV1span2">
									￥55.50
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="美的（Midea）电水壶 304不锈钢电热水壶 1.7L容量 双层防烫烧水壶WHJ1705C（时尚青春范）">
							<div class="more-navDIV1head">
								<img src="img/more-nav1-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									美的（Midea）电水壶 304不锈钢电热水壶 1.7L容量 双层防烫烧水壶WHJ1705C（时尚青春范）
								</span>
								<span class="more-navDIV1span2">
									￥99.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV2">
						<a href="" class="more-navA1" title="卡饰社（CarSetCity）雪尼尔长杆可伸缩洗车拖把洗车刷 汽车掸子扫擦车拖把洗车工具 CS-83021 绿色">
							<div class="more-navDIV1head">
								<img src="img/more-nav1-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<div class="more-navDIV1span1">
									<i class="more-navD2-i1">
										<img src="img/京东精选.png"/>
									</i>
									卡饰社（CarSetCity）雪尼尔长杆可伸缩洗车拖把洗车刷 汽车掸子扫擦车拖把洗车工具 CS-83021 绿色
								</div>
								<div class="more-navDIV2down">
									<span class="more-navDIV2span1">￥39.00</span>
									<span class="more-navDIV2span2">
										￥36.80
										<i class="more-navD2-i2">
											<img src="img/plus.png"/>
										</i>
									</span>
								</div>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第一行结束-->
					
					<!--第二行开始-->
					<div class="more-navDIV1">
						<a href="" title="妙惟爱MILKLOVE 天然玛瑙手链附证书 红黑玛瑙手串男女情侣款三种尺寸可选 七夕情人节礼物 红玛瑙手链 8MM【小萝莉PK小正太】">
							<div class="more-navDIV1head">
								<img src="img/more-nav2-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									妙惟爱MILKLOVE 天然玛瑙手链附证书 红黑玛瑙手串男女情侣款三种尺寸可选 七夕情人节礼物 红玛瑙手链 8MM【小萝莉PK小正太】
								</span>
								<span class="more-navDIV1span2">
									￥129.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="【多仓配送】费列罗巧克力礼盒装 巧克力七夕情人节生日礼物送女友礼盒 紫此一生">
							<div class="more-navDIV1head">
								<img src="img/more-nav2-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									【多仓配送】费列罗巧克力礼盒装 巧克力七夕情人节生日礼物送女友礼盒 紫此一生
								</span>
								<span class="more-navDIV1span2">
									￥88.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="金纺 3斤新香氛精油浓缩型衣物柔顺剂1.5L持久留香防静电香型可选 金色">
							<div class="more-navDIV1head">
								<img src="img/more-nav2-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									金纺 3斤新香氛精油浓缩型衣物柔顺剂1.5L持久留香防静电香型可选 金色
								</span>
								<span class="more-navDIV1span2">
									￥45.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="卡梦思（KaMengSi）免蒸发膜倒膜染烫修复水疗正品营养液头发护理焗油膏男用女无硅油补水滋养护发素 水光发膜500ML赠送头发面膜618ML">
							<div class="more-navDIV1head">
								<img src="img/more-nav2-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									卡梦思（KaMengSi）免蒸发膜倒膜染烫修复水疗正品营养液头发护理焗油膏男用女无硅油补水滋养护发素 水光发膜500ML赠送头发面膜618ML
								</span>
								<span class="more-navDIV1span2">
									￥168.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav2-5.jpeg"/>
						</a>
					</div>
					<!--第二行结束-->
					
					<!--第3行开始-->
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav3-1.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="环森（HS） 环森 LED灯带 5730高亮防水灯条 吊顶暗槽三色灯带 单色5730超亮款 三排180珠暖白光">
							<div class="more-navDIV1head">
								<img src="img/more-nav3-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									环森（HS） 环森 LED灯带 5730高亮防水灯条 吊顶暗槽三色灯带 单色5730超亮款 三排180珠暖白光
								</span>
								<span class="more-navDIV1span2">
									￥10.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="戴尔DELL游匣G3 15.6英寸游戏笔记本电脑(i5-8300H 8G 128GSSD+1T GTX1050Ti 4G独显 IPS)烈焰版">
							<div class="more-navDIV1head">
								<img src="img/more-nav3-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									戴尔DELL游匣G3 15.6英寸游戏笔记本电脑(i5-8300H 8G 128GSSD+1T GTX1050Ti 4G独显 IPS)烈焰版
								</span>
								<span class="more-navDIV1span2">
									￥5990.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="厂家直销买3发4支买5发7买10发15支仁振草本祛癣止痒乳膏江西仁丰堂皮肤外用草本乳膏软膏">
							<div class="more-navDIV1head">
								<img src="img/more-nav3-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									厂家直销买3发4支买5发7买10发15支仁振草本祛癣止痒乳膏江西仁丰堂皮肤外用草本乳膏软膏
								</span>
								<span class="more-navDIV1span2">
									￥16.80
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV2">
						<a href="" class="more-navA1" title="稻草人（MEXICAN）男士钱包男式短款钱夹头层牛皮时尚休闲两折横夹横款啡色30219-03">
							<div class="more-navDIV1head">
								<img src="img/more-nav3-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<div class="more-navDIV1span1">
									<i class="more-navD2-i1">
										<img src="img/京东精选.png"/>
									</i>
									稻草人（MEXICAN）男士钱包男式短款钱夹头层牛皮时尚休闲两折横夹横款啡色30219-03
								</div>
								<div class="more-navDIV2down">
									<span class="more-navDIV2span1">￥55.00</span>
									<span class="more-navDIV2span2">
										￥53.00
										<i class="more-navD2-i2">
											<img src="img/plus.png"/>
										</i>
									</span>
								</div>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第3行结束-->
					
					<!--第4行开始-->
					<div class="more-navDIV2">
						<a href="" class="more-navA1" title="Yeelight充电感应夜灯光控LED小夜灯智能人体感应灯婴儿喂奶灯起夜灯床头灯可挂可贴可磁吸">
							<div class="more-navDIV1head">
								<img src="img/more-nav4-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<div class="more-navDIV1span1">
									<i class="more-navD2-i1">
										<img src="img/京东精选.png"/>
									</i>
									Yeelight充电感应夜灯光控LED小夜灯智能人体感应灯婴儿喂奶灯起夜灯床头灯可挂可贴可磁吸
								</div>
								<div class="more-navDIV2down">
									<span class="more-navDIV2span1">￥79.00</span>
									<span class="more-navDIV2span2">
										￥69.00
										<i class="more-navD2-i2">
											<img src="img/plus.png"/>
										</i>
									</span>
								</div>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="KK树小学生书包男女通用1-3-4-6年级护脊6-12周岁儿童书包 A藏青色-小码（学前班-3年级）">
							<div class="more-navDIV1head">
								<img src="img/more-nav4-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									KK树小学生书包男女通用1-3-4-6年级护脊6-12周岁儿童书包 A藏青色-小码（学前班-3年级）
								</span>
								<span class="more-navDIV1span2">
									￥119.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="Cleanpik 买二盒送一盒 硅胶牙签牙缝刷20支/盒 软胶头牙龈按摩刷 硅胶牙缝刷清洁牙缝食物 硅胶牙签 20支/盒">
							<div class="more-navDIV1head">
								<img src="img/more-nav4-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									Cleanpik 买二盒送一盒 硅胶牙签牙缝刷20支/盒 软胶头牙龈按摩刷 硅胶牙缝刷清洁牙缝食物 硅胶牙签 20支/盒
								</span>
								<span class="more-navDIV1span2">
									￥18.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav4-4.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="维恩克 3个装长柄杯刷海绵瓶子洗杯子刷清洁玻璃奶瓶涮子神器杯刷子 图片色">
							<div class="more-navDIV1head">
								<img src="img/more-nav4-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									维恩克 3个装长柄杯刷海绵瓶子洗杯子刷清洁玻璃奶瓶涮子神器杯刷子 图片色
								</span>
								<span class="more-navDIV1span2">
									￥19.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第4行结束-->
					
					<!--第5行开始-->
					<div class="more-navDIV1">
						<a href="" title="优贝家（ubaka）INS创意仿真花艺客厅桌面摆件玻璃花瓶小清新办工桌假花装饰品 白色整体花瓶花艺-小号">
							<div class="more-navDIV1head">
								<img src="img/more-nav5-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									优贝家（ubaka）INS创意仿真花艺客厅桌面摆件玻璃花瓶小清新办工桌假花装饰品 白色整体花瓶花艺-小号
								</span>
								<span class="more-navDIV1span2">
									￥69.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav5-2.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="【买一送一】短袖衬衫男 2018夏季新款修身韩版衬衫休闲商务正装免烫职业工装纯色白衬衣 白+白2618A XL">
							<div class="more-navDIV1head">
								<img src="img/more-nav5-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									【买一送一】短袖衬衫男 2018夏季新款修身韩版衬衫休闲商务正装免烫职业工装纯色白衬衣 白+白2618A XL
								</span>
								<span class="more-navDIV1span2">
									￥119.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="心家宜 置物架厨房 微波炉架烤箱架 客厅金属家用货架 出口品质书架花架鞋架多层架 浴室储物收纳架子 银灰色 长45x宽30x高126cm">
							<div class="more-navDIV1head">
								<img src="img/more-nav5-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									心家宜 置物架厨房 微波炉架烤箱架 客厅金属家用货架 出口品质书架花架鞋架多层架 浴室储物收纳架子 银灰色 长45x宽30x高126cm
								</span>
								<span class="more-navDIV1span2">
									￥89.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="华硕(ASUS) 飞行堡垒五代FX80 15.6英寸游戏笔记本电脑(i5-8300H 8G 128GSSD+1T GTX1050Ti 4G IPS)火陨红黑">
							<div class="more-navDIV1head">
								<img src="img/more-nav5-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									华硕(ASUS) 飞行堡垒五代FX80 15.6英寸游戏笔记本电脑(i5-8300H 8G 128GSSD+1T GTX1050Ti 4G IPS)火陨红黑
								</span>
								<span class="more-navDIV1span2">
									￥5999.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第5行结束-->
					
					<!--第6行开始-->
					<div class="more-navDIV1">
						<a href="" title="乌苏啤酒（wusu） 新疆乌苏啤酒红乌苏夺命大乌苏玻璃瓶装【破损包赔】620ml/瓶包邮 620ml*18瓶">
							<div class="more-navDIV1head">
								<img src="img/more-nav6-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									乌苏啤酒（wusu） 新疆乌苏啤酒红乌苏夺命大乌苏玻璃瓶装【破损包赔】620ml/瓶包邮 620ml*18瓶
								</span>
								<span class="more-navDIV1span2">
									￥156.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="玛雅疤可迪硅胶疤痕贴片剖腹产增生疤痕贴遮瑕款修复手术凹凸疙瘩疤">
							<div class="more-navDIV1head">
								<img src="img/more-nav6-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									玛雅疤可迪硅胶疤痕贴片剖腹产增生疤痕贴遮瑕款修复手术凹凸疙瘩疤
								</span>
								<span class="more-navDIV1span2">
									￥75.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="芙选 美鼻器美鼻夹挺鼻器鼻子鼻梁增高器美鼻神器翘鼻翼缩小矫正器（心形）">
							<div class="more-navDIV1head">
								<img src="img/more-nav6-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									芙选 美鼻器美鼻夹挺鼻器鼻子鼻梁增高器美鼻神器翘鼻翼缩小矫正器（心形）
								</span>
								<span class="more-navDIV1span2">
									￥29.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="双飞燕（A4TECH) WKM-1000 有线鼠标键盘套装 有线键盘鼠标套装 有线键鼠套装 电脑键盘 黑色">
							<div class="more-navDIV1head">
								<img src="img/more-nav6-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									双飞燕（A4TECH) WKM-1000 有线鼠标键盘套装 有线键盘鼠标套装 有线键鼠套装 电脑键盘 黑色
								</span>
								<span class="more-navDIV1span2">
									￥69.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav6-5.jpeg"/>
						</a>
					</div>
					<!--第6行结束-->
					
					<!--第7行开始-->
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav7-1.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="【京东包邮】Meilen电子秤称重人体秤精准电子称健康秤家用计体重秤 幸福三猴">
							<div class="more-navDIV1head">
								<img src="img/more-nav7-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									【京东包邮】Meilen电子秤称重人体秤精准电子称健康秤家用计体重秤 幸福三猴
								</span>
								<span class="more-navDIV1span2">
									￥39.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="梦多福 汽车用品 汽车洗车擦车玻璃布吸水加厚毛巾 不掉毛麂皮巾 鸡皮布擦车巾 鹿皮巾 麂皮毛巾【颜色随机发】 专车专用">
							<div class="more-navDIV1head">
								<img src="img/more-nav7-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									梦多福 汽车用品 汽车洗车擦车玻璃布吸水加厚毛巾 不掉毛麂皮巾 鸡皮布擦车巾 鹿皮巾 麂皮毛巾【颜色随机发】 专车专用
								</span>
								<span class="more-navDIV1span2">
									￥16.80
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶250ml*24 整箱装">
							<div class="more-navDIV1head">
								<img src="img/more-nav7-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶250ml*24 整箱装
								</span>
								<span class="more-navDIV1span2">
									￥88.80
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="米家 （MIJIA ）小米声波电动牙刷成人充电式磁悬浮声波震动马达 可替换刷头 智能电动牙刷">
							<div class="more-navDIV1head">
								<img src="img/more-nav7-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									米家 （MIJIA ）小米声波电动牙刷成人充电式磁悬浮声波震动马达 可替换刷头 智能电动牙刷
								</span>
								<span class="more-navDIV1span2">
									￥199.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第7行结束-->
					
					<!--第8行开始-->
					<div class="more-navDIV1">
						<a href="" title="美的（Midea）M1-L213B 快捷微波炉 360°转盘加热 旋钮操控 精准控温 五档火力 21升">
							<div class="more-navDIV1head">
								<img src="img/more-nav8-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									美的（Midea）M1-L213B 快捷微波炉 360°转盘加热 旋钮操控 精准控温 五档火力 21升
								</span>
								<span class="more-navDIV1span2">
									￥359.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="机械革命(MECHREVO)X8Ti 8代酷睿i7-8750H GTX1060 144Hz72% 15.6英寸游戏笔记本 8G 128GPCIE+1T 机械键盘">
							<div class="more-navDIV1head">
								<img src="img/more-nav8-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									机械革命(MECHREVO)X8Ti 8代酷睿i7-8750H GTX1060 144Hz72% 15.6英寸游戏笔记本 8G 128GPCIE+1T 机械键盘
								</span>
								<span class="more-navDIV1span2">
									￥8298.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="易彩 汽车用品车漆划痕修复剂 漆面去划痕研磨剂 MC-308">
							<div class="more-navDIV1head">
								<img src="img/more-nav8-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									易彩 汽车用品车漆划痕修复剂 漆面去划痕研磨剂 MC-308
								</span>
								<span class="more-navDIV1span2">
									￥13.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav8-4.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="慈灵阁开光真品五帝钱葫芦挂件桃木铜葫芦摆件铜钱 古币化煞风水吉祥物 一串开光五帝钱">
							<div class="more-navDIV1head">
								<img src="img/more-nav8-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									慈灵阁开光真品五帝钱葫芦挂件桃木铜葫芦摆件铜钱 古币化煞风水吉祥物 一串开光五帝钱
								</span>
								<span class="more-navDIV1span2">
									￥38.0
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第8行结束-->
					
					<!--第9行开始-->
					<div class="more-navDIV1">
						<a href="" title="聪妈 【原木30包 1元/包】抽纸纸巾整箱家庭装批发卫生纸抽取式面巾纸餐巾纸家用纸抽母婴可用促销">
							<div class="more-navDIV1head">
								<img src="img/more-nav9-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									聪妈 【原木30包 1元/包】抽纸纸巾整箱家庭装批发卫生纸抽取式面巾纸餐巾纸家用纸抽母婴可用促销
								</span>
								<span class="more-navDIV1span2">
									￥31.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav9-2.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="芙妮菲儿（fairily） 假发 刘海 隐形假刘海假发片发箍留流海平齐刘海假发片头帘假发 黑色-自然黑">
							<div class="more-navDIV1head">
								<img src="img/more-nav9-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									芙妮菲儿（fairily） 假发 刘海 隐形假刘海假发片发箍留流海平齐刘海假发片头帘假发 黑色-自然黑
								</span>
								<span class="more-navDIV1span2">
									￥18.80
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="欧式吊灯客厅灯简约现代家用主卧室餐厅吊灯大气奢华大厅吊灯具 定制套装定金,拍前请联系客服">
							<div class="more-navDIV1head">
								<img src="img/more-nav9-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									欧式吊灯客厅灯简约现代家用主卧室餐厅吊灯大气奢华大厅吊灯具 定制套装定金,拍前请联系客服
								</span>
								<span class="more-navDIV1span2">
									￥198.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="曼秀雷敦（Mentholatum） 男士沐浴露 海洋精华500ml 清洁控油保湿护肤清爽">
							<div class="more-navDIV1head">
								<img src="img/more-nav9-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									曼秀雷敦（Mentholatum） 男士沐浴露 海洋精华500ml 清洁控油保湿护肤清爽
								</span>
								<span class="more-navDIV1span2">
									￥25.80
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第9行结束-->
					
					<!--第10行开始-->
					<div class="more-navDIV1">
						<a href="" title="瑞士军刀双肩包男士背包新款大容量休闲商务旅行电脑包学生书包 USb充电包 黑色 大号带usb送军刀+锁">
							<div class="more-navDIV1head">
								<img src="img/more-nav10-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									瑞士军刀双肩包男士背包新款大容量休闲商务旅行电脑包学生书包 USb充电包 黑色 大号带usb送军刀+锁
								</span>
								<span class="more-navDIV1span2">
									￥189.0
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="CROSSGEAR 防盗系列 双肩包男女商务笔记本电脑包15.6英寸背包大容量旅行包防泼水书包CR-9001黑色">
							<div class="more-navDIV1head">
								<img src="img/more-nav10-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									CROSSGEAR 防盗系列 双肩包男女商务笔记本电脑包15.6英寸背包大容量旅行包防泼水书包CR-9001黑色
								</span>
								<span class="more-navDIV1span2">
									￥99.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="狮王（Lion） 【全球购】日本OKINA水口腔清新口气口臭便携漱口水一次清新口气 接吻需备14m 薄荷味*十粒装">
							<div class="more-navDIV1head">
								<img src="img/more-nav10-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									狮王（Lion） 【全球购】日本OKINA水口腔清新口气口臭便携漱口水一次清新口气 接吻需备14m 薄荷味*十粒装
								</span>
								<span class="more-navDIV1span2">
									￥49.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="宏碁(Acer)暗影骑士3游戏本 15.6英寸笔记本电脑AN5(i5八代标压 8G 128G SSD+1T GTX1050 4G IPS 背光键盘)">
							<div class="more-navDIV1head">
								<img src="img/more-nav10-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									宏碁(Acer)暗影骑士3游戏本 15.6英寸笔记本电脑AN5(i5八代标压 8G 128G SSD+1T GTX1050 4G IPS 背光键盘)
								</span>
								<span class="more-navDIV1span2">
									￥5299.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav10-5.png"/>
						</a>
					</div>
					<!--第10行结束-->
					
					<!--第11行开始-->
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav11-1.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="墨斗鱼 防撞墙贴 砖纹70cm*77cm白色2753 防水防撞隔热加厚3D立体墙纸自粘创意壁纸客厅电视背景墙卧室墙贴">
							<div class="more-navDIV1head">
								<img src="img/more-nav11-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									墨斗鱼 防撞墙贴 砖纹70cm*77cm白色2753 防水防撞隔热加厚3D立体墙纸自粘创意壁纸客厅电视背景墙卧室墙贴
								</span>
								<span class="more-navDIV1span2">
									￥21.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="买一送一 春夏季新款休闲裤男修身裤子男 韩版薄款小直筒纯色长裤男装青年小脚裤夏季短裤男五分裤 浅灰色+黑色 29（2尺2）">
							<div class="more-navDIV1head">
								<img src="img/more-nav11-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									买一送一 春夏季新款休闲裤男修身裤子男 韩版薄款小直筒纯色长裤男装青年小脚裤夏季短裤男五分裤 浅灰色+黑色 29（2尺2）
								</span>
								<span class="more-navDIV1span2">
									￥118.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="路由器收纳盒墙上机顶盒置物架免打孔 电视机墙壁挂客厅卧室隔板 白色">
							<div class="more-navDIV1head">
								<img src="img/more-nav11-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									路由器收纳盒墙上机顶盒置物架免打孔 电视机墙壁挂客厅卧室隔板 白色
								</span>
								<span class="more-navDIV1span2">
									￥29.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="凉糕粉250g*5袋 四川宜宾特产小吃休闲零食品冰粉凉虾粉夏季方便食品商用批发开店包邮 5袋装">
							<div class="more-navDIV1head">
								<img src="img/more-nav11-5.png"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									凉糕粉250g*5袋 四川宜宾特产小吃休闲零食品冰粉凉虾粉夏季方便食品商用批发开店包邮 5袋装
								</span>
								<span class="more-navDIV1span2">
									￥25.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第11行结束-->
					
					<!--第12行开始-->
					<div class="more-navDIV1">
						<a href="" title="【疯抢特惠 限量必拼】【爆款直降 50ml香水】原装新款持久淡香花漾甜心自然清新香氛浪漫香水 凝纷香水-粉色浪漫">
							<div class="more-navDIV1head">
								<img src="img/more-nav12-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									【疯抢特惠 限量必拼】【爆款直降 50ml香水】原装新款持久淡香花漾甜心自然清新香氛浪漫香水 凝纷香水-粉色浪漫
								</span>
								<span class="more-navDIV1span2">
									￥59.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="罗技（Logitech）M100r 光电鼠标 即插即用 三年质保（黑色）">
							<div class="more-navDIV1head">
								<img src="img/more-nav12-2.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									罗技（Logitech）M100r 光电鼠标 即插即用 三年质保（黑色）
								</span>
								<span class="more-navDIV1span2">
									￥45.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="轩宜 包邮卫生间下水管道隔音棉包水管海绵防火吸音棉消音棉水管隔音棉家用室内隔音装修隔音材料 110型水管专用20MM厚1米长 管道隔音专用">
							<div class="more-navDIV1head">
								<img src="img/more-nav12-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									轩宜 包邮卫生间下水管道隔音棉包水管海绵防火吸音棉消音棉水管隔音棉家用室内隔音装修隔音材料 110型水管专用20MM厚1米长 管道隔音专用
								</span>
								<span class="more-navDIV1span2">
									￥21.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV3">
						<a href="">
							<img src="img/more-nav12-4.jpeg"/>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="TP-LINK TL-WN725N免驱版  迷你USB无线网卡 智能自动安装随身wifi接收器">
							<div class="more-navDIV1head">
								<img src="img/more-nav12-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									TP-LINK TL-WN725N免驱版  迷你USB无线网卡 智能自动安装随身wifi接收器
								</span>
								<span class="more-navDIV1span2">
									￥49.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第12行结束-->
					
					<!--第13行开始-->
					<div class="more-navDIV1">
						<a href="" title="神舟(HASEE)战神Z7M-KP7G1 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti-4G 1080P)黑色">
							<div class="more-navDIV1head">
								<img src="img/more-nav13-1.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									神舟(HASEE)战神Z7M-KP7G1 15.6英寸游戏本笔记本电脑(i7-7700HQ 8G 1T+128G SSD GTX1050Ti-4G 1080P)黑色
								</span>
								<span class="more-navDIV1span2">
									￥5799.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV2">
						<a href="" class="more-navA1" title="欧普照明（OPPLE）LED灯泡节能球泡 8W E27大螺口 6000K白光">
							<div class="more-navDIV1head">
								<img src="img/more-nav13-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<div class="more-navDIV1span1">
									<i class="more-navD2-i1">
										<img src="img/京东精选.png"/>
									</i>
									欧普照明 OPPLE LED灯泡节能球泡 8W E27大螺口 6000K白光
								</div>
								<div class="more-navDIV2down">
									<span class="more-navDIV2span1">￥15.90</span>
									<span class="more-navDIV2span2">
										￥13.90
										<i class="more-navD2-i2">
											<img src="img/plus.png"/>
										</i>
									</span>
								</div>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="琪源堂 百想膏百想膏乳膏 百想膏中药百想膏婴幼儿款两种乳膏 成人装">
							<div class="more-navDIV1head">
								<img src="img/more-nav13-3.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									琪源堂 百想膏百想膏乳膏 百想膏中药百想膏婴幼儿款两种乳膏 成人装
								</span>
								<span class="more-navDIV1span2">
									￥49.90
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV1">
						<a href="" title="花花公子playboy 男士多功能短款钱包钱夹 头层牛皮革横款多卡位休闲男皮夹PAA2323-6B黑色">
							<div class="more-navDIV1head">
								<img src="img/more-nav13-4.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<span class="more-navDIV1span1">
									花花公子playboy 男士多功能短款钱包钱夹 头层牛皮革横款多卡位休闲男皮夹PAA2323-6B黑色
								</span>
								<span class="more-navDIV1span2">
									￥57.00
								</span>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<div class="more-navDIV2">
						<a href="" class="more-navA1" title="网易严选 网易智造壁挂式感应小夜灯 人体感应光控LED灯 床头灯氛围灯婴儿喂奶灯起夜灯 可挂可贴">
							<div class="more-navDIV1head">
								<img src="img/more-nav13-5.jpeg"/>
							</div>
							<div class="more-navDIV1stern">
								<div class="more-navDIV1span1">
									<i class="more-navD2-i1">
										<img src="img/京东精选.png"/>
									</i>
									网易严选 网易智造壁挂式感应小夜灯 人体感应光控LED灯 床头灯氛围灯婴儿喂奶灯起夜灯 可挂可贴
								</div>
								<div class="more-navDIV2down">
									<span class="more-navDIV2span1">￥49.00</span>
									<span class="more-navDIV2span2">
										￥44.90
										<i class="more-navD2-i2">
											<img src="img/plus.png"/>
										</i>
									</span>
								</div>
							</div>
						</a>
						<a href="" class="more-navA2">
							<div class="more-navA2-div">
								加入购物车
							</div>
						</a>
					</div>
					<!--第13行结束-->
					
				</div>
			</div>
			<!--more-nav部分结束-->
			
			<!--中部logo-->
			<div class="middle-logo">
				<div class="middle-logo-lineLE"></div>
				<div class="middle-logo-lineRI"></div>
				<h3>亲,到底啦</h3>
			</div>
		</div>	
		
		<!--jdcore-nav部分end-->
		
		
		<!--end-nav部分开始-->
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
			
		</div>
		<!--end-nav部分结束-->
		
		<!--内部js开始-->
		
		<script src="jdchenying/js/swiper.min.js"></script>

		<!-- Initialize Swiper -->
		<script>
			var swiper = new Swiper('.jdcore1Rswiper', {
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				},
				autoplay: {
				    delay: 3000,
				    stopOnLastSlide: false,
				    disableOnInteraction: true,
				},
			});
			var jd1Rone = new Swiper('.swiper-jd1R-one', {
			    pagination: {
			        el: '.swiper-pagination',
			    },
			    autoplay: {
				    delay: 1000,
				    stopOnLastSlide: false,
				    disableOnInteraction: true,
				},
		    });
		    
		    var col2 = new Swiper('.col2Swiper', {
				effect: 'cube',
				grabCursor: true,
				cubeEffect: {
					shadow: true,
					slideShadows: true,
					shadowOffset: 20,
					shadowScale: 0.94,
				},
				pagination: {
					el: '.swiper-pagination',
				},
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
			    },
			    autoplay: {
				    delay: 2300,
				    stopOnLastSlide: false,
				    disableOnInteraction: true,
				},
			});
		</script>
		<!--内部js结束-->
	</body>

</html>
