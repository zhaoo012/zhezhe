<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>欢迎访问高校校医院健康体检管理系统</title>
  		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public.css">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
  </head>
    
</head>
<body>
	
	<!--
    	作者：1027788634@qq.com
    	时间：2019-12-29
    	描述：导航栏
    -->
	<div class="layui-row " >
			<div class="layui-col-md12 ">
					<ul class="layui-nav ">
						<li class="layui-nav-item ">
					     	<i class="layui-icon layui-icon-face-smile "></i><!--笑脸图标-->
					     	欢迎访问校医院健康体检管理系统
					    </li>
					    
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_index">首页</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_appointment">预约体检</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_result">查看体检结果</a>
						</li>
						<li class="layui-nav-item ">
								<a href="${pageContext.request.contextPath}/student/stu_getAward_show">往届风采</a>
						</li>
						<li class="layui-nav-item layui-col-md-offset4 ">
						    <a href=" ">test<span class="layui-badge ">9</span></a>
						</li>
						<li class="layui-nav-item ">
						    <a href="${pageContext.request.contextPath}/student/stu_selfinfo"><i class="layui-icon layui-icon-username "></i> 个人中心<span class="layui-badge-dot "></span></a>
						</li>
						<li class="layui-nav-item ">
						  	  <img src="${pageContext.request.contextPath}/images/touxiang.jpg " class="layui-nav-img ">
	     <!--username--> 	   ${realname}同学你好<span class="layui-badge-dot "></span>
						</li>
						<li class="layui-nav-item ">
						     <a href="${pageContext.request.contextPath}/logout">退出登录</a>
						</li>
					</ul>
			</div><!--导航栏の列 layui-row end-->
	</div><!--导航栏 layui-row end-->
		
			<!--轮播图-->
	  <div class="layui-carousel" id="lunbo" lay-filter="lunbo">
		  <div carousel-item="">
		    <div><img src="${pageContext.request.contextPath}/images/heal_banner.png"/></div>
		    <div><img src="${pageContext.request.contextPath}/images/heal_banner2.png"/></div>
		    <div><img src="${pageContext.request.contextPath}/images/heal_banner.png"/></div>
		    <div><img src="${pageContext.request.contextPath}/images/heal_banner2.png"/></div>
		  </div>
		</div> 
			
			
		
		
	     <!--
	     	作者：1027788634@qq.com
	     	时间：2019-12-29
	     	描述：主题内容
	     -->
	  <div class="kh-bg-white">
					<div class="layui-row">
							<div class="layui-col-md4 layui-col-lg-offset1">
								<fieldset class="layui-elem-field layui-field-title">
								  <legend>专家风采</legend>
								</fieldset>
								<span><img  src="${pageContext.request.contextPath}/images/people1.jpg" class="wechat-img"></span>
								<a href="${pageContext.request.contextPath}/public/fengcai">张三教授团队自主研发的世界首款软式内镜…………</a>
							</div><!-- col end -->
							<div class="layui-col-md4 layui-col-lg-offset1  ">
								<fieldset class="layui-elem-field layui-field-title">
								  <legend>专家风采</legend>
								</fieldset>
								<span><img  src="${pageContext.request.contextPath}/images/people1.jpg" class="wechat-img"></span>
								<a href="${pageContext.request.contextPath}/public/fengcai">李四科研团队斩获XX奖…………</a>
							</div><!-- col end -->
							<div class="layui-col-md4 layui-col-lg-offset1  ">
								<fieldset class="layui-elem-field layui-field-title">
								  <legend>科研风采</legend>
								</fieldset>
								<span><img  src="${pageContext.request.contextPath}/images/people1.jpg" class="wechat-img"></span>
								<a href="${pageContext.request.contextPath}/public/fengcai">张三教授团队自主研发的世界首款软式内镜…………</a>
							</div><!-- col end -->
							<div class="layui-col-md4 layui-col-lg-offset1  ">
								<fieldset class="layui-elem-field layui-field-title">
								  <legend>科研风采</legend>
								</fieldset>
								<span><img src="${pageContext.request.contextPath}/images/people1.jpg" class="wechat-img"></span>
								<a href="${pageContext.request.contextPath}/public/fengcai">张三教授团队自主研发的世界首款软式内镜…………</a>
							</div><!-- col end -->
					</div><!--layui row end-->
					
					<div class="layui-row  height300	">
						<div class="layui-col-md4 layui-col-lg-offset1">
							<fieldset class="layui-elem-field layui-field-title">
								  <legend>新闻通知</legend>
							</fieldset>
							<div class="layui-row">
								<div class="layui-col-md">
									  <div><a href="${pageContext.request.contextPath}/public/public_new1"><h3>致全国大学生的一封信</h3></a></div>
									  <hr class="layui-bg-orange"/>
									  <div><a href="${pageContext.request.contextPath}/public/public_new2"><h3>齐心协力 攻克时艰 ─信息工程学院疫情防控在行动</h3></a></div>
									  <hr class="layui-bg-orange"/>
									  <div><a href="${pageContext.request.contextPath}/public/public_new3"><h3>西安文理学院关于招募疫情防控工作志愿者的倡议</h3></a></div>
									  <hr class="layui-bg-orange"/>
									  <div><a href="${pageContext.request.contextPath}/public/public_new2"><h3>齐心协力 攻克时艰 ─信息工程学院疫情防控在行动</h3></a></div>
									  <hr class="layui-bg-orange"/>
								</div><!--layui col end-->
							</div><!--layui row end-->
						</div>
					</div>
					
		</div><!--marin-logo end-->
		
		<!--
	    	作者：1027788634@qq.com
	    	时间：2019-12-29
	    	描述：底部
	    -->
		<div class="layui-row layui-bg-black height300" >
			<div class="layui-col-md3 layui-col-md-offset3 margin-top30">
					<img src="${pageContext.request.contextPath}/images/WeChat.png" class="wechat-img"/>
			</div>
			<div class="layui-col-md3	margin-top30">
					<br><br><br><br>
					<table>
						<tr>
							  <th><h2>版权所有</h2></th>
								<th><h2>:张哲哲毕业设计作品</h2></th>
						</tr>
						<tr>
							  <th><h2>联系方式 </h2></th>
								<th><h2>:xxxxxxxxx(WeChat)</h2></th>
						</tr>
					</table>
			</div>
	</div>
	
 <!--My Html Code End -->
<script type="text/javascript">
layui.use('carousel', function(){//轮播图控制代码
	  var carousel = layui.carousel;
	  //常规轮播
	  carousel.render({
	    elem: '#lunbo'
	    ,arrow: 'always'
	    ,width:'100%'	
	    ,height:'500'
	    ,indicator:'none'
	  });
	 
	});

</script>
</body>
</html>
      