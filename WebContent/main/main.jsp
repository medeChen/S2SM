<!DOCTYPE html>

<html class="settings-main_background">
<!--<![endif]-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><head>
<link rel="stylesheet" href="<%=basePath%>/main/source/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="dns-prefetch">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<title>百货优选</title>
<meta name="keywords" content="">
<meta name="description" content="百货优选">
<meta name="viewport"
	content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
<link href="<%=basePath%>/main/source/base-160225.min.css"
	media="screen" rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/yhsd-iconfont-151010.css"
	media="screen" rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/yhsd-desktop-170719.min.css"
	media="screen" rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/youpage.min.css" media="screen"
	rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/main.css" media="screen"
	rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/iconfont.css" media="screen"
	rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/iconfont-1.css" media="screen"
	rel="stylesheet" type="text/css">
<link href="<%=basePath%>/main/source/user.css" media="screen"
	rel="stylesheet" type="text/css">
<script src="<%=basePath%>/main/source/tracker-0.0.2.min.js"></script>
<script src="<%=basePath%>/main/source/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="<%=basePath%>/main/source/jssdk-0.0.18.min.js"
	type="text/javascript"></script>
<script src="<%=basePath%>/main/source/lazyload.min.js"
	type="text/javascript"></script>

<!-- 社交分享信息 -->



<meta property="og:title" content="百货优选">
<meta property="og:description" content="百货优选">

<script src="<%=basePath%>/main/source/jquery.qrcode.min.js"></script>
<script>
	$(function() {
		$('#preQrcode').qrcode({
			width : 108,
			height : 108,
			text : window.location.href
		})
		$(document).on('scroll', function() {
			$('#preQrcode').removeClass('hover');

		})

	});
</script>
<script>
	window.productImage = '53f649ffe2931e0b91000007/noimage.png';
	window.vendorImage = '578fc93402282e4f18000003/noimage.png';
	window.iconImage = '57acb51702282e3f00000003/noimage.ico';
	window.shareImage = '57acb53a02282e3f00000007/noimage.png';
	window.assetPath = '//asset.ibanquan.com/image/';
	window.postImage = '581a3b0402282e2bcc000003/s.png';
	window.captchaPath = '//captcha.ibanquan.com';
	window.ajaxToken = '9dd5934c294149a8aaba5a3540d7f709';
</script>
<script>
	(function() {
		var yt = document.createElement('script');
		yt.src = '//asset.ibanquan.com/common/js/tracker-0.0.2.min.js?v=163';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(yt, s);
	})();
</script>
<style type="text/css">
[responsive-image]>img, [data-responsive-image] {
	overflow: hidden;
	padding: 0;
}

[responsive-image]>img, [data-responsive-image]>img {
	width: 100%;
}
</style>
<style>
.lazyload_scope img {
	transition: opacity 0.618s ease;
	-moz-transform-style: preserve-3d;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
}

.lazyload_scope img.lazyload, .lazyload_scope img.loading {
	min-width: 20px;
	min-height: 20px;
	opacity: 0.5;
	background-repeat: no-repeat;
	background-position: center center;
	background-image: none;
	background-image:
		url("data:image/gif;base64,R0lGODlhEAALAPQAAP///5mZmfDw8Ozs7Pf395ycnJmZmaysrM3NzcDAwOTk5Kenp7e3t9DQ0MHBweXl5ampqZubm7i4uPX19e/v7/v7+7CwsPHx8fr6+uLi4tnZ2erq6vj4+JmZmZmZmZmZmSH5BAkLAAAAIf4aQ3JlYXRlZCB3aXRoIGFqYXhsb2FkLmluZm8AIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAALAAAFLSAgjmRpnqSgCuLKAq5AEIM4zDVw03ve27ifDgfkEYe04kDIDC5zrtYKRa2WQgAh+QQJCwAAACwAAAAAEAALAAAFJGBhGAVgnqhpHIeRvsDawqns0qeN5+y967tYLyicBYE7EYkYAgAh+QQJCwAAACwAAAAAEAALAAAFNiAgjothLOOIJAkiGgxjpGKiKMkbz7SN6zIawJcDwIK9W/HISxGBzdHTuBNOmcJVCyoUlk7CEAAh+QQJCwAAACwAAAAAEAALAAAFNSAgjqQIRRFUAo3jNGIkSdHqPI8Tz3V55zuaDacDyIQ+YrBH+hWPzJFzOQQaeavWi7oqnVIhACH5BAkLAAAALAAAAAAQAAsAAAUyICCOZGme1rJY5kRRk7hI0mJSVUXJtF3iOl7tltsBZsNfUegjAY3I5sgFY55KqdX1GgIAIfkECQsAAAAsAAAAABAACwAABTcgII5kaZ4kcV2EqLJipmnZhWGXaOOitm2aXQ4g7P2Ct2ER4AMul00kj5g0Al8tADY2y6C+4FIIACH5BAkLAAAALAAAAAAQAAsAAAUvICCOZGme5ERRk6iy7qpyHCVStA3gNa/7txxwlwv2isSacYUc+l4tADQGQ1mvpBAAIfkECQsAAAAsAAAAABAACwAABS8gII5kaZ7kRFGTqLLuqnIcJVK0DeA1r/u3HHCXC/aKxJpxhRz6Xi0ANAZDWa+kEAA7"),
		none;
}
</style>
<style>
#img_zoom-box, .img_zoom--inner {
	text-align: center;
	white-space: nowrap
}

#img_zoom {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	background-color: #7d7d7d;
	background-color: rgba(0, 0, 0, .618);
	cursor: zoom-out;
	z-index: 1000
}

#img_zoom.active {
	display: block;
	-moz-animation: .5s opacity_in_out forwards;
	-webkit-animation: .5s opacity_in_out forwards;
	-ms-animation: .5s opacity_in_out forwards;
	animation: .5s opacity_in_out forwards
}

#img_zoom-box-img, #img_zoom-box.loading #img_zoom-box-loading {
	-moz-animation: .8s opacity_in_out forwards;
	-webkit-animation: .8s opacity_in_out forwards;
	-ms-animation: .8s opacity_in_out forwards
}

#img_zoom-box {
	display: inline;
	vertical-align: baseline
}

#img_zoom-box.loading #img_zoom-box-loading {
	display: inline-block;
	animation: .8s opacity_in_out forwards
}

#img_zoom-box-loading, #img_zoom-box.loading #img_zoom-box-img,
	#img_zoom-box.loading #img_zoom-box-src {
	opacity: 0;
	display: none
}

#img_zoom-box-loading {
	padding: 12px 10px;
	border-radius: 5px;
	background-color: #232323;
	background-color: rgba(0, 0, 0, .618);
	vertical-align: middle
}

#img_zoom-box-img {
	display: inline-block;
	max-width: 100%;
	max-height: 100%;
	animation: .8s opacity_in_out forwards;
	border-radius: 4px;
	vertical-align: middle
}

#img_zoom-box-src {
	display: block;
	-moz-animation: .8s opacity_in_out forwards;
	-webkit-animation: .8s opacity_in_out forwards;
	-ms-animation: .8s opacity_in_out forwards;
	animation: .8s opacity_in_out forwards;
	position: absolute;
	right: 20px;
	top: 20px;
	outline: 0;
	-webkit-tap-highlight-color: transparent;
	background-color: #ddd;
	background-color: rgba(0, 0, 0, .22);
	border-radius: 4px;
	padding: 9px 11px 6px 9px;
	line-height: 1em;
	font-size: 13px;
	color: #7d7d7d;
	text-decoration: none
}

#img_zoom-box-src img {
	width: 24px;
	height: 24px;
	border: 0
}

.img_zoom--inner {
	display: inline-block;
	position: relative;
	padding: 30px 20px;
	width: 100%;
	height: 100%;
	box-sizing: border-box
}

.img_zoom--inner:before {
	content: "";
	display: inline-block;
	height: 50%;
	width: 1px;
	margin-right: -1px
}

.img_zoom_scope img {
	cursor: zoom-in
}

.img_zoom_scope a img {
	cursor: auto
}

.ie9 #img_zoom-box-img, .ie9 #img_zoom-box-src, .ie9 #img_zoom-box.loading .ie9 #img_zoom-box-loading,
	.ie9 #img_zoom.active {
	opacity: 1
}

@
-moz-keyframes opacity_in_out {
	from {opacity: 0
}

to {
	opacity: 1
}

}
@
-webkit-keyframes opacity_in_out {
	from {opacity: 0
}

to {
	opacity: 1
}

}
@
-o-keyframes opacity_in_out {
	from {opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes opacity_in_out {
	from {opacity: 0
}

to {
	opacity: 1
}
}
</style>
</head>
<body class=" ">
	<!-- 社交分享图 (300x300) -->
	<img class="you_share_img" src="<%=basePath%>/main/source/s.png" onerror="this.src='<%=basePath %>/login/logo.png'"
		alt="百货优选">
	<!-- End 社交分享图 -->
	<div class="page settings-body_background yhsd_free_scope" id="top"
		style="height: auto; overflow: auto;">
		<div class="wrapper wrapper-header settings-head_background"
			id="wrapper_header">
			<div class="cont settings-head_background">
				<strong class="mod logo settings-text_color"> <a
					class="logo-link settings-h1_color"> <img onerror="this.src='<%=basePath %>/login/logo.png'"
						src="<%=basePath%>/main/source/logo.png" alt="百货优选">

				</a>
				</strong> <a id="nav_mobile" class="nav-link-mobile"
					href="javascript:void(0);"> <span></span><span></span><span></span>
				</a>
				<div class="mod header">
					<div class="nav-inner-right">
						<a id="customer-item1" class="header-link settings-top_color"
							href="../center/gocenter"> <s:if
								test='user.user_name!=null'>欢迎<s:property
									value="user.user_name" />
									
							</s:if>
							</a>
							<s:else><a>登录</a> <span class="header-link settings-top_color">|</span>
						<a id="customer-item2" class="header-link settings-top_color">注册</a>
						</s:else>
					</div>
					<a href="../center/gocart"><div id="yhsd_topCart_show" class="header-cart">
						<span class="main-ico main-ico-cart iconfont settings-top_color"></span><span
							class="topCart-quantity settings-top_color"
							id="yhsd_topCart_quantityTitle">0</span>
					</div>
					</a>
				</div>
				<!-- .顶部购物车 -->
				<div class="topCart settings-body_background settings-main_border"
					id="yhsd_topCart">
					<ul id="yhsd_topCart_list"></ul>
					<div class="topCart-summary">
						<p class="topCart-total settings-text_color">
							<span id="yhsd_topCart_quantity">0</span>件商品 总计:<span
								class="settings-price_color">￥<span
								id="yhsd_topCart_totalPrice">0</span></span>
						</p>
						<a
							class="topCart-submit settings-buyBtn_color settings-buyBtn_background">去结算</a>
					</div>
				</div>
			</div>
		</div>
		<div class="wrapper wrapper-nav settings-nav_background"
			id="wrapper_nav">
			<div
				class="nav-sublink has-ad settings-navSub_background settings-nav_sublink_border settings-main_border ">
				<div class="nav-fix-width">




					<div class="wrapper wrapper-proList">
						<div class="cont">
							<div class="mod proList">
								<div class="proList-inner">

									<ul class="proList-ul clearfix proList-count-4 lazyload_scope">




									</ul>

								</div>
							</div>
						</div>
					</div>




				</div>
			</div>
			<div class="cont">
				<div class="mod nav">
					<div class="nav-inner">
						<!-- 一级菜单 -->
						<ul id="top-nav-link" class="nav-link clearfix">
							<li class="settings-navLink_hover_background"><a
								class="txt-overflow settings-navLink_color settings-nav_border "
								id="navlink_908895">首页</a> <!-- 二级菜单 --></li>
							<li class="settings-navLink_hover_background"><a
								class="txt-overflow settings-navLink_color settings-nav_border "
								id="navlink_908896">所有产品</a> <!-- 二级菜单 --></li>
							<li class="settings-navLink_hover_background"><a
								class="txt-overflow settings-navLink_color settings-nav_border "
								id="navlink_908897" href="javascript:void(0);">商品类别<i class="iconfont hovershow"></i></a>
								<!-- 二级菜单 --></li>
						</ul>
					</div>
					<a id="yhsd-header-search" href="javascript:void(0);"
						class="header-search-ico"> <span
						class="main-ico main-ico-search iconfont settings-top_color"></span>
					</a>
					<div id="yhsd-header-search-ipt" class="header-search">
						<input class="search-ipt settings-ipt_border" type="text"
							placeholder="搜索你喜欢的宝贝">
					</div>
				</div>
			</div>

		</div>

		<div class="cont">
			<div class="banner" id="b04">
				<ul>
					<li class="slider-item"><a href="#"><img
							src="<%=basePath%>/login/logo.png"
							alt="宣传页1"
							width="940" height="480"><span class="slider-title"><em>宣传页1</em></span></a></li>
					<li class="slider-item"><a href="#"><img
							src="<%=basePath%>/login/logo.png"
							alt="宣传页2" width="940" height="480"><span
							class="slider-title"><em>宣传页2</em></span></a></li>
					<li class="slider-item"><a href="#"><img
							src="<%=basePath%>/login/logo.png" alt="宣传页3"
							width="940" height="480"><span class="slider-title"><em>宣传页3</em></span></a></li>
					<li class="slider-item"><a href="#"><img
							src="<%=basePath%>/login/logo.png" alt="宣传页4"
							width="940" height="480"><span class="slider-title"><em>宣传页4</em></span></a></li>
					<li class="slider-item"><a href="#"><img
							src="<%=basePath%>/login/logo.png" alt="宣传页5"
							width="940" height="480"><span class="slider-title"><em>宣传页5</em></span></a></li>
				</ul>
				<div class="progress"></div>
				<a href="javascript:void(0);" class="unslider-arrow04 prev"><img
					class="arrow" id="al"
					src="<%=basePath%>/main/source/img/arrowl.png" alt="prev"
					width="20" height="35"></a> <a href="javascript:void(0);"
					class="unslider-arrow04 next"><img class="arrow" id="ar"
					src="<%=basePath%>/main/source/img/arrowr.png" alt="next"
					width="20" height="37"></a>
			</div>
		</div>

		<script src="<%=basePath%>/main/source/js/unslider.min.js"></script>
		<script>
			$(document).ready(function(e) {
				var progress = $(".progress"), li_width = $("#b04 li").length;
				var unslider04 = $('#b04').unslider({
					dots : true,
					complete : function(index) {
						progress.animate({
							"width" : (100 / li_width) * (index + 1) + "%"
						});
					}
				}),

				data04 = unslider04.data('unslider');
				$('.unslider-arrow04').click(function() {
					var fn = this.className.split(' ')[1];
					data04[fn]();
				});
			});
		</script>

		<div class="index-content-background">

			<!-- 商品分类1 -->
			<div class="wrapper wrapper-products">
				<div class="cont clearfix oversea-cont">
					<h2>商品分类</h2>
					<s:iterator value="goodstag" var="tag">
						<div class="wrapper-products-dir">
							<img onerror="this.src='<%=basePath %>/login/logo.png'" src="<%=basePath%><s:property value='#tag.tag_log'/>"
								alt="1">
						</div>
					</s:iterator>
				</div>
			</div>
			<div class="index-border"></div>
			<!-- 新品上市 -->

			<div class="wrapper wrapper-oversea2">
				<div class="wrapper wrapper-customPage">


					<div class="cont">
						<h2>新品上市</h2>
						<div class="cont">
							<div class="mod proList">
								<div class="proList-inner">
									<ul class="proList-ul clearfix proList-count-4 lazyload_scope">
										<s:iterator value="goodslist" var="goods">
											<li><a class="proList-img settings-proPic_border"
												target="_blank" title="<s:property value='#goods.goods_name'/>"> <img class=" " onerror="this.src='<%=basePath %>/login/logo.png'"
													src="<%=basePath%><s:property value='#goods.goods_picture'/>"
													alt="<s:property value='#goods.goods_name'/>">
											</a> <a class="proList-name settings-proTitle_color txt-overflow"
												title="<s:property value='#goods.goods_name'/>" target="_blank"><s:property value='#goods.goods_name'/></a>
												<div class="proList-desc">
													<span class="proList-price">￥<s:property value='#goods.goods_price'/></span>

												</div></li>
										</s:iterator>





									</ul>

								</div>
							</div>
						</div>
						<div class="index-border"></div>






						<!-- 两组图片 -->
						<div class="wrapper ">
							<div class="cont clearfix oversea-cont">
								<h2>每日推荐</h2>
								<ul class="proList-ul clearfix proList-count-4 lazyload_scope">
										<s:iterator value="reclist" var="goods">
											<li><a class="proList-img settings-proPic_border"
												target="_blank" title="<s:property value='#goods.goods_name'/>"> <img class=" " onerror="this.src='<%=basePath %>/login/logo.png'"
													src="<%=basePath%><s:property value='#goods.goods_picture'/>"
													alt="<s:property value='#goods.goods_name'/>">
											</a> <a class="proList-name settings-proTitle_color txt-overflow"
												title="<s:property value='#goods.goods_name'/>" target="_blank"><s:property value='#goods.goods_name'/></a>
												<div class="proList-desc">
													<span class="proList-price">￥<s:property value='#goods.goods_price'/></span>

												</div></li>
										</s:iterator>
									</ul>
							</div>
						</div>
						<div class="index-border"></div>
						<div class="wrapper ">
							<div class="cont clearfix oversea-cont">
								<h2>当前热卖</h2>
								<ul class="proList-ul clearfix proList-count-4 lazyload_scope">
										<s:iterator value="hotlist" var="goods">
											<li><a class="proList-img settings-proPic_border"
												target="_blank" title="<s:property value='#goods.goods_name'/>"> <img class=" " onerror="this.src='<%=basePath %>/login/logo.png'"
													src="<%=basePath%><s:property value='#goods.goods_picture'/>"
													alt="<s:property value='#goods.goods_name'/>">
											</a> <a class="proList-name settings-proTitle_color txt-overflow"
												title="<s:property value='#goods.goods_name'/>" target="_blank"><s:property value='#goods.goods_name'/></a>
												<div class="proList-desc">
													<span class="proList-price">￥<s:property value='#goods.goods_price'/></span>

												</div></li>
										</s:iterator>
									</ul>
							</div>
						</div>
						<div class="index-border"></div>

						<div class="wrapper wrapper-oversea3">
							<div class="cont clearfix oversea-cont">
								<h2>商家推荐</h2>
								<s:iterator value="shoplist" var="shop">
									<div class=" wrapper-pic1">
										<img class="wrapper-pic1_1" onerror="this.src='<%=basePath %>/login/logo.png'"
											src="<%=basePath%><s:property value='#shop.shop_log'/>"
											alt="1">
										<div class="wrapper-oversea3-title2"><s:property value='#shop.shop_name'/></div>
									</div>
								</s:iterator>
							</div>
						</div>


						<script src="<%=basePath%>/main/source/jquery.slides.min.js"
							type="text/javascript"></script>
						<script>
							$(function() {
								$('#slides_prev').hide();
								$('#slides_next').hide();

								$("#slides").slidesjs({
									width : "1208",
									height : "580",
									play : {
										active : true,
										// [boolean] Generate the play and stop buttons.
										// You cannot use your own buttons. Sorry.
										effect : "fade",
										// [string] Can be either "slide" or "fade".
										interval : 5000,
										// [number] Time spent on each slide in milliseconds.
										auto : true,
										// [boolean] Start playing the slideshow on load.
										swap : false,
										// [boolean] show/hide stop and play buttons
										pauseOnHover : true,
										// [boolean] pause a playing slideshow on hover
										restartDelay : 2500
									// [number] restart delay on inactive slideshow
									},
									navigation : {
										active : false,
										effect : "fade"
									},
									pagination : {
										active : true,
										effect : "fade"
									}
								});

							});
						</script>
						<div id="tracecode"></div>

						<div style="width: 100%">
							<div style="margin: 0 auto; text-align: center">

								<a class="footer-link settings-footer_text_color">关于我们</a> <span
									class="footer-split settings-footer_text_color">|</span> <a
									class="footer-link settings-footer_text_color">友情链接</a> <span
									class="footer-split settings-footer_text_color">|</span> <a
									class="footer-link settings-footer_text_color">联系我们</a>


								<div>粤ICP备12043194号 © 2017 youhaosuda.com</div>
							</div>
						</div>



						<div class="wrapper wrapper-popup" id="yhsd-popup-wrap">
							<div class="cont">
								<div class="mod popup settings-body_background" id="yhsd-popup">
									<div class="popup-cont" id="yhsd-popup-cont"></div>
									<div class="popup-btn" id="yhsd-popup-btn"></div>
									<a class="popup-close" id="yhsd-popupClose"
										href="javascript:void(0)"><span class="aIco aIco-close"></span></a>
								</div>
								<div class="mask"></div>
							</div>
						</div>


					</div>

					<div id="go_top" class="clearfix go_top go_top-style-1">


						<a id="go_top-go"
							class="go_top-btn go_top-go iconfont icon-shangjiantou"
							href="javascript:void(0);" style="display: none;"></a>
					</div>
					<style>
@media screen and (min-width:768px) {
	.go_top a:hover span {
		display: inline-block;
		font-size: 12px;
		width: 28px;
		line-height: 16px;
		margin-top: 8px;
	}
	.go_top a:hover i {
		display: none;
	}
}
</style>
					<script>
						(function() {

							// 滚动监听
							var _elem = $(document); // 滚动条所在元素
							var elem = _elem[0]
							var _eTop = $('#go_top-go'); // Top 元素
							var _bodyOrHtml = $('html, body');
							var _weixinSercice = $('.weixin_sercice');

							// 兼容性
							if (navigator.userAgent.indexOf('Trident') > -1
									|| navigator.userAgent.indexOf('Firefox') > -1) {
								_elem = $(window)
								elem = _elem[0]
								_bodyOrHtml = $('html')
							}

							// 显示处理
							var eventFn = function(e) {
								if (_elem.scrollTop() >= 1) {
									_eTop.fadeIn();
								} else {
									_eTop.fadeOut();
								}
							};
							// 微信二维码悬浮
							if ($(window).width() > 768) {
								$('.go_top-service-weixin')
										.hover(
												function() {
													_weixinSercice
															.addClass('weixin_sercice_hover');
												},
												function() {
													_weixinSercice
															.removeClass('weixin_sercice_hover');
												});
							} else {
								$('.go_top-service-weixin')
										.click(
												function() {
													_weixinSercice
															.toggleClass('weixin_sercice_hover')
												})
							}

							// 显示处理
							var eventFn = function(e) {
								if (_elem.scrollTop() >= 1) {
									_weixinSercice
											.addClass('weixin_sercice_position');
									_eTop.fadeIn();
								} else {
									_weixinSercice
											.removeClass('weixin_sercice_position');
									_eTop.fadeOut();
								}
								;
							};

							// 绑定滚动事件
							_elem.scroll(eventFn);

							// 判断页面
							var isIndex = false;
							if ($('.index').size() > 0) {
								isIndex = true;
							}
							;
							var isMobile = $('body').hasClass('is_mobile')

							// Top 按钮 绑定
							$('#go_top-go').click(function(e) {

								e.preventDefault();
								if (isIndex && !isMobile) {
									wheel.set(1);
								} else {
									_bodyOrHtml.animate({
										scrollTop : 0
									}, 618);
								}
							});
						})();
					</script>


					<script src="<%=basePath%>/main/source/yhsd-desktop-170719.min.js"
						type="text/javascript"></script>
					<script src="<%=basePath%>/main/source/youpage.min.js"
						type="text/javascript"></script>
					<script src="<%=basePath%>/main/source/main.js"
						type="text/javascript"></script>
					<script src="<%=basePath%>/main/source/user.js"
						type="text/javascript"></script>
					<script src="<%=basePath%>/main/source/img_zoom.min.js"
						type="text/javascript"></script>


				</div>
			</div>
		</div>
</body>
</html>