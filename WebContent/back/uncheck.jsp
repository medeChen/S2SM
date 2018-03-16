<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html class="no-js">
<head>
<meta charset="utf-8">
<base href="<%=basePath %>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<%=basePath %>/back/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=basePath %>/back/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="<%=basePath %>/back/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="<%=basePath %>/back/assets/css/admin.css">
<script src="<%=basePath %>/back/assets/js/jquery.min.js"></script>
<script src="<%=basePath %>/back/assets/js/app.js"></script>
</head>
<body>
</head>

<body>
	<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<img src="<%=basePath %>/back/assets/i/logo.png">
	</div>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">


			<li class="kuanjie">  <a href="center/gocenter">个人信息</a> </li>





			<li class="am-hide-sm-only" style="float: right;"><a
				href="javascript:;" id="admin-fullscreen"><span
					class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
		</ul>
	</div>
	</header>

	<div class="am-cf admin-main">

		<div class="nav-navicon admin-main admin-sidebar">


			<div class="sideMenu am-icon-dashboard"
				style="color: #aeb2b7; margin: 10px 0 0 0;">欢迎 <s:property
									value="user.user_name" /></div>
			<!-- sideMenu End -->

			<script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script>
		</div>

		<div class=" admin-content">

			<div class="daohang">




			</div>




			<div class="admin">





				<div class="admin-index">
				</div>
				<div class="admin-biaoge" style="text-align:center">
					<div class="xinxitj">申请入驻</div>
					<a style="line-height: 200px">正在等待审核</a>
					
				</div>
					<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>








				</div>








			</div>

		</div>




	</div>


	<script src="<%=basePath %>/back/assets/js/amazeui.min.js"></script>



</body>
</html>