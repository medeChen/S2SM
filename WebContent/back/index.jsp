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


			<li class="kuanjie"> <a
				href="#">订单管理</a> <a href="center/gomyshop">进入我的店铺</a><a href="center/gocenter">个人信息</a> </li>

			<li class="soso">

				<p>

					<select
						data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
						<option value="o">产品</option>

					</select>

				</p>

				<p class="ycfg">
					<input type="text" class="am-form-field am-input-sm"
						placeholder="搜索内容" />
				</p>
				<p>
					<button class="am-btn am-btn-xs am-btn-default am-xiao">
						<i class="am-icon-search"></i>
					</button>
				</p>
			</li>




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
				<div><a href="LoginServlet?method=logout">安全退出</a></div>
			<div class="sideMenu">
				<h3 class="am-icon-flag">
					<em></em> <a href="#">商品管理</a>
				</h3>
				<ul>
					<li><a href="back/golist">商品列表</a></li>
					<li class="func" dataType='html' dataLink='msn.htm'
						iconImg='images/msn.gif'><a href="back/goadd">添加新商品</a></li>
					<li><a href="">商品分类</a></li>
					<li><a href="">用户评论</a></li>
					<li><a href="back/goshopmanager">店铺管理</a></li>
					<li><a href="">库存管理</a></li>
				</ul>
				<h3 class="am-icon-cart-plus">
					<em></em> <a href="#"> 订单管理</a>
				</h3>
				<ul>
					<li><a href="">订单列表</a></li>
					<li>合并订单</li>
					<li>订单打印</li>
					<li>添加订单</li>
					<li>发货单列表</li>
					<li>换货单列表</li>
				</ul>
				<h3 class="am-icon-volume-up">
					<em></em> <a href="">信息通知</a>
				</h3>
				<ul>
					<li>站内消息 /留言</li>
					<li>客服</li>
				</ul>
			</div>
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
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 300}">
						<dt class="cs">
							<i class="am-icon-area-chart"></i>
						</dt>
						<dd>455</dd>
						<dd class="f12">今日收入</dd>
					</dl>
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 600}">
						<dt class="hs">
							<i class="am-icon-shopping-cart"></i>
						</dt>
						<dd>455</dd>
						<dd class="f12">商品数量</dd>
					</dl>
					<dl data-am-scrollspy="{animation: 'slide-right', delay: 900}">
						<dt class="ls">
							<i class="am-icon-cny"></i>
						</dt>
						<dd>455</dd>
						<dd class="f12">全部收入</dd>
					</dl>
				</div>
				<div class="admin-biaoge">
					<div class="xinxitj">信息概况</div>
					<table class="am-table">
						<thead>
							<tr>
								<th>团队统计</th>
								<th>全部会员</th>
								<th>全部未激活</th>
								<th>今日新增</th>
								<th>今日未激活</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>普卡</td>
								<td>普卡</td>
								<td><a href="#">4534</a></td>
								<td>+20</td>
								<td>4534</td>
							</tr>
							<tr>
								<td>银卡</td>
								<td>银卡</td>
								<td>4534</td>
								<td>+2</td>
								<td>4534</td>
							</tr>
							<tr>
								<td>金卡</td>
								<td>金卡</td>
								<td>4534</td>
								<td>+10</td>
								<td>4534</td>
							</tr>
							<tr>
								<td>钻卡</td>
								<td>钻卡</td>
								<td>4534</td>
								<td>+50</td>
								<td>4534</td>
							</tr>
							<tr>
								<td>合计</td>
								<td>合计</td>
								<td>4534</td>
								<td>+50</td>
								<td>4534</td>
							</tr>
						</tbody>
					</table>
				</div>
					<script type="text/javascript">jQuery(".slideTxtBox").slide();</script>








				</div>








			</div>

		</div>




	</div>


	<script src="<%=basePath %>/back/assets/js/amazeui.min.js"></script>



</body>
</html>