<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title></title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="<%=basePath%>/center/index_files/css.css">
<link rel="stylesheet"
	href="<%=basePath%>/center/index_files/common.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/center/index_files/ms-style.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/center/index_files/personal_member.min.css">
<link rel="stylesheet"
	href="<%=basePath%>/center/index_files/Snaddress.min.css">
<link rel="stylesheet" href="<%=basePath%>/center/index_files/sui.css">
<script type="text/javascript"
	src="<%=basePath%>/center/index_files/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/center/index_files/sui.js."></script>
<style>
body {
	background: #f5f5f5;
}

.sui-table th {
	padding: 16px 8px;
	line-height: 18px;
	text-align: center;
	vertical-align: middle;
	border-top: 1px solid #e6e6e6;
	font-weight: normal;
	font-size: 14px;
	color: #333333;
}

.sui-table td {
	padding: 16px 8px;
	line-height: 18px;
	text-align: center;
	vertical-align: middle;
	border-top: 1px solid #e6e6e6;
	font-weight: normal;
	font-size: 12px;
	color: #333333;
}

img {
	max-width: 100%;
	height: auto;
	/*vertical-align: bottom;*/
	border: 0;
	-ms-interpolation-mode: bicubic;
	margin-left: -10px;
}

a {
	color: #000000;
}
</style>
</head>

<body class="ms-body">
	<div id="" class="ng-top-banner"></div>
	<div class="ng-toolbar">
		<div class="ng-toolbar-con wrapper">
			<div class="ng-toolbar-left"></div>
			<div class="ng-toolbar-right">

				<div class="ng-bar-node-box myorder-handle">
					<a class="ng-bar-node ng-bar-node-fix touch-href ng-bar-node-pr5"><span>我的购买</span></a>
				</div>
				<a class="ng-bar-node ng-bar-node-mini-cart" rel="nofollow"
					href="center/gocart"> <span><img
						src="<%=basePath%>/center/index_files/cart.png">&nbsp;购物车栏</span> <span
					class="total-num-bg-box"> <i></i>
				</span>

				</a> <a class="ng-bar-node ng-bar-node-pr5"><span>卖家中心</span></a> <a
					href="back/goback" class="ng-bar-node ng-bar-node-pr5"><span>卖家中心</span></a>
				<div class="ng-bar-node-box service-handle">
					<a
						class="ng-bar-node ng-bar-node-service ng-bar-node-fix touch-href ng-bar-node-pr5"
						rel="nofollow"><span>联系我们</span> </a>
					<div class="ng-down-box ng-d-box service-center-child ng-ser-list"
						style="display: none;"></div>
				</div>
			</div>
			<div id="ng-minicart-slide-box"></div>
		</div>
	</div>
	<header class="ms-header ms-header-inner ms-head-position"> <article
		class="ms-header-menu">
	<style type="text/css">
.nav-manage .list-nav-manage {
	position: absolute;
	padding: 15px 4px 10px 15px;
	left: 0;
	top: -15px;
	width: 90px;
	background: #FFF;
	box-shadow: 1px 1px 2px #e3e3e3, -1px 1px 2px #e3e3e3;
	z-index: 10;
}

.ms-nav li {
	float: left;
	position: relative;
	padding: 0 20px;
	height: 44px;
	font: 14px/26px "Microsoft YaHei";
	color: #FFF;
	cursor: pointer;
	z-index: 10;
}

.personal-member .main-wrap {
	width: 1068px;
	margin: 15px 0 30px 180px;
	padding: 0 0 39px 0;
	border: 1px solid #ddd;
	background: none;
}
</style>

	<div class="header-menu">
		<img onerror="this.src='<%=basePath %>/login/logo.png'"
			src="${pageContext.request.contextPath}/images/<s:property value='shop.shop_log'/>"
			style="height: 50px; margin-left: -160px;">
		<div class="ms-logo">
			<a class="ms-head-logo" name="Myyigou_index_none_daohangLogo"
				href="user/loginAction!gomain"><span
				style="font-size: 30px; color: #fff; font-weight: bold; line-height: 28px;">
					<s:property value="shop.shop_name" />
			</span></a>

		</div>
	</div>

	</article> <article class="ms-useinfo"> </article> </header>
	<div id="ms-center" class="personal-member">
		<div class="cont">
			<div class="cont-side">

				<div class="ms-side" style="margin-top: 20px;"></div>
			</div>
			<div class="cont-main">
				<div class="main-wrap mt15" style="border: 0px;">
					<!--<h3>
	                        <strong>我的会员等级</strong>
	                    </h3>-->
					<div class="server-wrapper">
						<div class="server-tab" style="margin-top: 26px;">
							<div
								style="float: left; vertical-align: bottom; text-align: center;">



								<!--
                                	作者：右侧
                                	时间：2016-05-24
                                	描述：
                                -->


								<!--右侧---end------->

								<div
									style="width: 680px; padding: 10px; display: inline-block; float: left; margin-top: 20px; background-color: #fff;">
									<div style="border-bottom: 1px #ccc solid;">
										<p style="font-size: 20px; text-align: left;">商品详情</p>
									</div>
									<div
										style="padding: 20px 20px; border-bottom: 1px #F5F5F5 solid; height: 450px;">
										<div id="left" style="float: left; width: 50%; height: 100%;">
											<img src="<%=basePath%>/login/logo.png">
										</div>
										<div id="right"
											style="float: left; width: 50%; height: 100%; font-size: 20px">
											<p style="margin-top: 20px; text-align: left">
												商品名称:
												<s:property value='goods.goods_name' />
											</p>
											<p style="margin-top: 40px; text-align: left">
												商品价格:
												<s:property value='goods.goods_price' />
											</p>
											<p style="margin-top: 40px; text-align: left">
												商品数量 :<a style="margin-left: 20px" id="down">-</a><input
													id="num" name="num"
													style="font-size: 12px; margin: 0; margin-left: 20px; height: 26px; border: 1px solid #a7a6ac; width: 36px; background-position: -406px -41px; color: #666;"
													value="1" /><a id="up" style="margin-left: 20px">+</a>
											</p>
											<script>
												$(function() {
													$("#down")
															.click(
																	function() {
																		if ($(
																				"#num")
																				.val() <= 1) {
																			$(
																					"#num")
																					.val(
																							1)
																		} else {
																			$(
																					"#num")
																					.val(
																							$(
																									"#num")
																									.val() - 1);
																		}

																	});
													$("#up")
															.click(
																	function() {
																		if ($(
																				"#num")
																				.val() < 1) {
																			$(
																					"#num")
																					.val(
																							1);
																		} else {
																			$(
																					"#num")
																					.val(
																							parseInt($(
																									"#num")
																									.val()) + 1);
																		}
																	});
												});
												function addtocart() {
													window.location.href='center/addtocart?num='+document.getElementById('num').value
												}
											</script>
											<p style="margin-top: 176px">
												<input
													style="margin-right: 0; float: left; overflow: hidden; position: relative; width: 108px; background-color: #ffeded; border: 1px solid #FF0036; color: #FF0036; font-family: 'Microsoft Yahei';"
													type="button" value="立即购买" /><input
													style="margin-left: 100px; background-color: #ff0036; margin-right: 0; float: left; overflow: hidden; position: relative; width: 108px; border: 1px solid #FF0036; font-family: 'Microsoft Yahei';"
													type="button" value="加入购物车"
													onclick="addtocart()" />
											</p>
										</div>
									</div>

								</div>

								<div
									style="width: 680px; padding: 10px; display: inline-block; margin-top: 20px; background-color: #fff; float: left; border-bottom: 1px #ccc solid; padding-bottom: 20px;">
									<span style="text-align: left; line-height: 20px;">买家评论</span>
								</div>
								<div
									style="width: 680px; padding: 10px; display: inline-block; margin-top: 0px; background-color: #fff; float: left;">
									<div style="padding: 10px; text-align: center; float: left;">
										<p>1</p>
										<p>2</p>


									</div>


								</div>


							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="clear "></div>
		<style type="text/css ">
			
		</style>
		<div class="ng-footer ">

			<textarea class="footer-dom " id="footer-dom-02 ">			</textarea>
			<div class="ng-fix-bar "></div>
		</div>

		<script type="text/javascript "
			src="http://localhost:8085/S2SM//center/index_files/ms_common.min.js."></script>


	</div>
</body>
</html>