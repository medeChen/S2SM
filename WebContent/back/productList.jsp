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
<script src="<%=basePath%>/back/js/productList.js"></script>

</head>
<body>
	<!--[if lte IE 9]><p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p><![endif]-->
</head>

<body>
	<!-- 弹出操作框 -->
	<div class="am-popup am-popup-inner" id="my-popups"
		style="height: 360px">
		<div class="am-popup-hd">
			<h4 class="am-popup-title">确认操作</h4>
			<span data-am-modal-close class="am-close">&times;</span>
		</div>
		<div class="am-popup-bd" align="center">
			<span class="you" id="mesfield"></span>
			<form id="select" name="sure" class="am-form tjlanmu"
				action="back/updateproduct">
				<input type="hidden" id="forId" name="goods.goods_id"> <input
					type="hidden" id="forState" name="goods.goods_state"> <input
					id="mesbtn1" type="submit" class="am-btn am-btn-success am-radius"
					value="确定" /> <input id="mesbtn0" onclick="pass()" type="button"
					class="am-btn am-btn-success am-radius" value="取消" />
			</form>
			<script type="text/javascript">
				function pass() {
					document.forms.select.action = "back/goback";
					document.forms.select.submit();
				}
			</script>
		</div>
	</div>
	<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<img src="<%=basePath%>/back/assets/i/logo.png">
	</div>

	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">


			<li class="kuanjie"><a href="#">订单管理</a> <a href="center/gomyshop">进入我的店铺</a> <a
				href="center/gocenter">个人信息</a></li>

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

			<div class="daohang"></div>

			<div class="admin-biaogelist">

				<div class="listbiaoti am-cf">
					<ul class="am-icon-flag on">栏目名称
					</ul>

					<dl class="am-icon-home" style="float: right;">
						当前位置： 首页 >
						<a href="#">商品列表</a>
					</dl>

					<dl>
						<button type="button"
							class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus">
							添加产品</button>
					</dl>


				</div>

				<form name="seoFRM" action="ProductServlet?method=seo_pro"
					method="post">
					<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
						<ul>
							<li>
								<div class="am-btn-group am-btn-group-xs"></div>
							</li>
							<li><input type="text" name="seoName"
								class="am-form-field am-input-sm am-input-xm"
								placeholder="关键词搜索" /></li>
							<li>
								<button type="submit"
									class="am-btn am-radius am-btn-xs am-btn-success"
									style="margin-top: -1px;">搜索</button>
							</li>
						</ul>
					</div>
				</form>

				<form class="am-form am-g">
					<table width="100%"
						class="am-table am-table-bordered am-table-radius am-table-striped">
						<thead>
							<tr class="am-success">
								<th class="table-check"><input type="checkbox" /></th>
								<th class="table-id">序号</th>
								<th class="table-title">商品名称</th>
								<th class="table-type">商品数量</th>
								<th class="table-author am-hide-sm-only">上架<i
									class="am-icon-check am-text-warning"></i>/下架 <i
									class="am-icon-close am-text-primary"></i></th>
								<th class="table-date am-hide-sm-only">图片描述</th>
								<th class="table-id">单价</th>
								<th width="163px" class="table-set">操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="goodslist" var="goods">
								<tr class="am-success">
									<td class="table-check"><input type="checkbox" /></td>
									<td class="table-id"><s:property value="#goods.goods_id" /></td>
									<td class="table-title"><s:property
											value="#goods.goods_name" /></td>
									<td class="table-type"><s:property
											value="#goods.goods_margin" /></td>
									<td class="table-autdor am-hide-sm-only"><s:if
											test='#goods.goods_state==0'>
											<i class="am-icon-check am-text-warning"></i>
										</s:if> <s:else>
											<i class="am-icon-close am-text-primary"></i>
										</s:else></td>
									<td class="table-date am-hide-sm-only"><img
										src="${pageContext.request.contextPath}/images/<s:property value='#goods.goods_picture'/>"
										width="100px" height="40px"
										onerror="this.src='<%=basePath %>/login/logo.png'" /></td>
									<td class="table-id"><s:property
											value="#goods.goods_price" /></td>
									<td width="200px" class="table-set">
										<button
											class="am-btn am-btn-default am-btn-xs am-text-success am-round">
											<span class="am-icon-search"></span>
										</button> <a
										href="javascript:editState('<s:property value='#goods.goods_id'/>','<s:property value='#goods.goods_state'/>')"
										data-am-modal="{target: '#my-popups'}"
										class="am-btn am-btn-default am-btn-xs"><span
											class="am-icon-pencil-square-o"></span></a>
										<button
											class="am-btn am-btn-default am-btn-xs am-text-warning  am-round">
											<span class="am-icon-copy"></span>
										</button>
										<button
											class="am-btn am-btn-default am-btn-xs am-text-danger am-round">
											<span class="am-icon-trash-o"></span>
										</button>
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>

					<div class="am-btn-group am-btn-group-xs">
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-plus"></span> 删除
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-save"></span> 上架
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-save"></span> 下架
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-save"></span> 移动
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-plus"></span> 新增
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-save"></span> 保存
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-archive"></span> 移动
						</button>
						<button type="button" class="am-btn am-btn-default">
							<span class="am-icon-trash-o"></span> 删除
						</button>
					</div>

					<ul class="am-pagination am-fr">
						<a href="back/golist!gopre">上一页</a>
						<a style="margin-left: 240px">当前第<s:property
								value="currentpage" />页
						</a>
						<a style="margin-left: 240px" href="back/golist!gonext">下一页</a>
					</ul>

					<hr />
					<p>注：.....</p>
				</form>





			</div>

		</div>

	</div>


	<script src="<%=basePath%>/back/assets/js/amazeui.min.js"></script>



</body>
</html>