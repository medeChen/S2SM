<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html class="no-js">
<head>
<meta charset="utf-8">
<base href="<%=basePath%>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="<%=basePath%>/back/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=basePath%>/back/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet"
	href="<%=basePath%>/back/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="<%=basePath%>/back/assets/css/admin.css">
<script src="<%=basePath%>/back/assets/js/jquery.min.js"></script>
<script src="<%=basePath%>/back/assets/js/app.js"></script>
<script src="js/addProduct.js"></script>
</head>
<body>
	<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->
</head>

<body>
	<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<img src="<%=basePath%>/back/assets/i/logo.png">
	</div>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">


			<li class="kuanjie"><a href="#">订单管理</a> <a href="center/gomyshop">进入我的店铺</a> <a
				href="center/gocenter">个人信息</a> </li>

			<li class="soso">

				<p>

					<select
						data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
						<option value="o">会员</option>

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
				style="color: #aeb2b7; margin: 10px 0 0 0;">
				欢迎
				<s:property value="user.user_name" />
			</div>
			<div>
				<a href="LoginServlet?method=logout">安全退出</a>
			</div>
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
					titCell : "h3", //鼠标触发对象
					targetCell : "ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
					effect : "slideDown", //targetCell下拉效果
					delayTime : 300, //效果时间
					triggerTime : 150, //鼠标延迟触发时间（默认150）
					defaultPlay : true,//默认是否执行效果（默认true）
					returnDefault : true
				//鼠标从.sideMen移走后返回默认状态（默认false）
				});
			</script>

		</div>

		<div class=" admin-content">

			<div class="daohang">




			</div>




			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">栏目名称
					</ul>

					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 >
						<a href="#">添加商品</a>
					</dl>



				</div>

				<div class="fbneirong">
					<form class="am-form" action="back/addproduct"
						method="post" enctype="multipart/form-data"
						onsubmit="return addCheck()">
						<div class="am-form-group am-cf">
							<div class="zuo">商品名称：</div>
							<div class="you">
								<input type="hidden" > <input
									type="hidden" name="method" value="addProduct"> <input
									type="text" class="am-input-sm" id="pro_name" name="goods.goods_name"
									onblur="addCheckProName()" onfocus="addCheckSpanProName()"
									placeholder="请输入商品名称"> <span id="pro_nameSpan"></span>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">商品单价：</div>
							<div class="you">
								<input type="text" class="am-input-sm" name="goods.goods_price"
									 onblur="addCheckProPrice()"
									onfocus="addCheckSpanProPrice()" placeholder="请输入商品单价">
								<span id="pro_priceSpan"></span>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">数量：</div>
							<div class="you">
								<input type="text" class="am-input-sm" name="goods.goods_margin"
									 onblur="addCheckProMount()"
									onfocus="addCheckSpanProMount()" placeholder="请输入数量"> <span
									id="pro_mountSpan"></span>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">简介：</div>
							<div class="you">
								<input type="text" class="am-input-sm" name="goods.goods_desc"
									 onblur="addCheckProMount()"
									onfocus="addCheckSpanProMount()" placeholder="请输入简介"> <span
									id="pro_mountSpan"></span>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">商品类别：</div>
							<div class="you">
								<select name="tag" onblur="addCheckCateId()"
									onfocus="addCheckSpanCateId()">
									<option value="0">请你选择</option>
									<option value="1">水果</option>
									<option value="2">蛋类</option>
									<option value="3">蔬菜</option>
									<option value="4">零食</option>
									<option value="5">日用</option>
									<option value="6">酒水</option>
								</select> <span id="cate_idSpan"></span>
							</div>
						</div>
						<div class="am-form-group am-cf">
							<div class="zuo">商品图片：</div>
							<div class="you">
								<input type="file" class="am-btn am-btn-secondary am-radius"
									name="shoplogo" onblur="addCheckProPicture()"
									onfocus="addCheckSpanProPicture()" placeholder="添加商品图片">
								<span id="pro_pictureSpan"></span>
							</div>
						</div>

						<div class="am-form-group am-cf">
							<div class="you" style="margin-left: 11%;">
								<button type="submit" class="am-btn am-btn-secondary am-radius">发布并继续发布</button>
							</div>
						</div>
					</form>
				</div>






			</div>

		</div>




	</div>


	<script src="<%=basePath%>/back/assets/js/amazeui.min.js"></script>



</body>
</html>