<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>购物车页面</title>
<link href="cart/css/myCart.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="cart/js/myCart.js"></script>
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
	src="<%=basePath%>/center/index_files/jquery-1.9.1.min.js."></script>
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
	margin-left: 3px;
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
	<header class="ms-header ms-header-inner ms-head-position">
		<article class="ms-header-menu">
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
				<div class="ms-logo">
					<a class="ms-head-logo" name="Myyigou_index_none_daohangLogo"
						href="user/loginAction!gomain"><span
						style="font-size: 30px; color: #fff; font-weight: bold; line-height: 28px;">百货优选</span></a>

				</div>
			</div>

		</article>

		<article class="ms-useinfo">
			<div class="header-useinfo" id="">
				<div class="ms-avatar">
					<div class="useinfo-avatar">
						<img src="${pageContext.request.contextPath}/images/<s:property value='user.user_head'/>" onerror="this.src='<%=basePath %>/login/logo.png'">
						<div class="edit-avatar"></div>
					</div>
					<a><s:property value="user.user_name" /></a>
				</div>

				<div class="ms-name-info">
					 <span style="margin-left: 20px;">
							<a target="_blank">我的资料</a>
						</span>
					</div>
					<div class="info-safety">
						<a class="manage-addr" href="center/goaddress">地址管理</a>
					</div>
				</div>

		</article>
	</header>
	<div id="ms-center" class="personal-member">
		<div class="cont">
			<div class="cont-side">
				<div class="side-neck" style="margin-top: 20px;">
					<i></i>
				</div>
				<div class="ms-side" style="margin-top: 20px;">
					<article class="side-menu side-menu-off">
						<dl class="side-menu-tree" style="padding-left: 50px;">
							<dt>
								<img src="<%=basePath%>/center/index_files/cart.png"
									style="margin-right: 10px; margin-left: -20px;">我的购物车
							</dt>
							<dt>
								<img src="<%=basePath%>/center/index_files/file.png"
									style="margin-right: 10px; margin-left: -20px;">订单管理
							</dt>
							<dd>
								<a>我的订单</a>

							</dd>
							<dd>
								<a>我的收藏</a>

							</dd>
							<dd>
								<a>我的评价</a>

							</dd>
							<dd>
								<a>我的足迹</a>

							</dd>
							<dd>
								<a>我的拍卖</a>
							</dd>
							<dd>
								<a>我的优惠券</a>

							</dd>
							<dt>
								<img src="<%=basePath%>/center/index_files/mybuy.png"
									style="margin-right: 10px; margin-left: -20px;">我的购买
							</dt>
							<dd>
								<a>我的推荐</a>

							</dd>
							<dd>
								<a>我的钱包</a>

							</dd>
							<dd>
								<a>我要提现</a>

							</dd>
							<dd>
								<a>我的积分</a>

							</dd>
							<dd>
								<a>邀请管理</a>

							</dd>
							<dt>
								<img src="<%=basePath%>/center/index_files/v-card-3.png"
									style="margin-right: 10px; margin-left: -20px;">售后服务
							</dt>
							<dd>
								<a>退换货</a>

							</dd>
							<dd>
								<a>意见/投诉</a>

							</dd>
						</dl>

						<a ison="on" class="switch-side-menu icon-up-side"><i></i></a>
					</article>
				</div>
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
									style="width: 795px; padding: 10px; display: inline-block; float: left; margin-top: 20px; background-color: #fff;">
									<div id="nav">
										您的位置：<a href="user/loginAction">首页</a> > <a
											href="center/gocenter">我的主页</a> > 我的购物车
									</div>
									<div id="navlist">
										<ul>
											<li class="navlist_red_left"></li>
											<li class="navlist_red">1. 查看购物车</li>
											<li class="navlist_red_arrow"></li>
											<li class="navlist_gray">2. 确认订单信息</li>
											<li class="navlist_gray_arrow"></li>
											<li class="navlist_gray">3. 付款到支付宝</li>
											<li class="navlist_gray_arrow"></li>
											<li class="navlist_gray">4. 确认收货</li>
											<li class="navlist_gray_arrow"></li>
											<li class="navlist_gray">5. 评价</li>
											<li class="navlist_gray_right"></li>
										</ul>
									</div>

									<div id="content">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											id="shopping">
											<form action="" method="post" name="myform">
												<tr>
													<td class="title_1"><input id="allCheckBox"
														type="checkbox" value="" onclick="selectAll()" />全选</td>
													<td class="title_2" colspan="2">店铺宝贝</td>
													<td class="title_3">获积分</td>
													<td class="title_4">单价（元）</td>
													<td class="title_5">数量</td>
													<td class="title_6">小计（元）</td>
													<td class="title_7">操作</td>
												</tr>
												<tr>
													<td colspan="8" class="line"></td>
												</tr>

												<s:iterator value="scargoodslist" var="goods">
													<tr>
														<td colspan="8" class="shopInfo">店铺：<a href="#"><s:property
																	value='#goods.shop_id' /></a> <img
															src="cart/images/taobao_relation.jpg" alt="relation" /></td>
													</tr>
													<tr id="product2">
														<td class="cart_td_1"><input name="cartCheckBox"
															type="checkbox" value="product2" onclick="selectSingle()" /></td>
														<td class="cart_td_2"><img
															onerror="this.src='<%=basePath %>/login/logo.png'"
															style="height: 100px;"
															src="${pageContext.request.contextPath}/images/<s:property value='#goods.goods_picture'/>" /></td>
														<td class="cart_td_3"><a href="#"><s:property value='#goods.goods_name'/></a><br />
															保障：<img src="cart/images/taobao_icon_01.jpg" alt="icon" />
															<img src="cart/images/taobao_icon_02.jpg" alt="icon" /></td>
														<td class="cart_td_4"><s:property value='#goods.point'/></td>
														<td class="cart_td_5"><s:property value='#goods.goods_price'/></td>
														<td class="cart_td_6"><img
															src="cart/images/taobao_minus.jpg" alt="minus"
															onclick="changeNum('num_2','minus')" class="hand" /> <input
															id="num_<s:property value='#goods.goods_picture'/>" type="text" value="1" class="num_input"
															readonly="readonly" /> <img
															src="cart/images/taobao_adding.jpg" alt="add"
															onclick="changeNum('num_<s:property value='#goods.goods_picture'/>','add')" class="hand" /></td>
														<td class="cart_td_7"></td>
														<td class="cart_td_8"><a
															href="javascript:deleteRow('product2');">删除</a></td>
													</tr>
												</s:iterator>
											<tr>
												<td colspan="3"><a href="javascript:deleteSelectRow()"><img
														src="cart/images/taobao_del.jpg" alt="delete" /></a></td>
												<td colspan="5" class="shopend">商品总价（不含运费）：<label
													id="total" class="yellow"></label> 元<br /> 可获积分 <label
													class="yellow" id="integral"></label> 点<br /> <input
													name=" " type="image" src="cart/images/taobao_subtn.jpg" /></td>
											</tr>
											</form>
										</table>
										<div style="text-align: center;"></div>
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
			src="<%=basePath%>/center/index_files/ms_common.min.js."></script>


	</div>
</body>
</html>
