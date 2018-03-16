<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><head><base href="<%=basePath %>" /><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title></title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link rel="stylesheet" href="<%=basePath %>/center/index_files/css.css">
		<link rel="stylesheet" href="<%=basePath %>/center/index_files/common.min.css">
		<link rel="stylesheet" href="<%=basePath %>/center/index_files/ms-style.min.css">
		<link rel="stylesheet" href="<%=basePath %>/center/index_files/personal_member.min.css">
		<link rel="stylesheet" href="<%=basePath %>/center/index_files/Snaddress.min.css">
		<link rel="stylesheet" href="<%=basePath %>/center/index_files/sui.css">
		<script type="text/javascript" src="<%=basePath %>/center/index_files/jquery-1.9.1.min.js."></script>
		<script type="text/javascript" src="<%=basePath %>/center/index_files/sui.js."></script>
		<style>
		body {
		    background: #f5f5f5;
		}
			.sui-table th{
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
a{
	color: #000000;
}
		</style>
	</head>

	<body class="ms-body">
		<div id="" class="ng-top-banner"></div>
		<div class="ng-toolbar">
			<div class="ng-toolbar-con wrapper">
				<div class="ng-toolbar-left">
				
				</div>
				<div class="ng-toolbar-right">

					<div class="ng-bar-node-box myorder-handle">
						<a class="ng-bar-node ng-bar-node-fix touch-href ng-bar-node-pr5"><span>我的购买</span></a>
					</div>
					<a class="ng-bar-node ng-bar-node-mini-cart" rel="nofollow"  href="center/gocart">
						<span ><img src="<%=basePath %>/center/index_files/cart.png">&nbsp;购物车栏</span>
						<span class="total-num-bg-box">
						
						<i></i>
					</span>
						
					</a>
					<a  class="ng-bar-node ng-bar-node-pr5" ><span>卖家中心</span></a>
					<a  href="back/goback" class="ng-bar-node ng-bar-node-pr5" ><span>卖家中心</span></a>
					<div class="ng-bar-node-box service-handle">
						<a   class="ng-bar-node ng-bar-node-service ng-bar-node-fix touch-href ng-bar-node-pr5" rel="nofollow"><span>联系我们</span>
				    </a>
						<div class="ng-down-box ng-d-box service-center-child ng-ser-list" style="display:none;">
						</div>
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
						<a class="ms-head-logo" name="Myyigou_index_none_daohangLogo" href="user/loginAction!gomain"><span style="font-size: 30px;color: #fff;font-weight: bold;    line-height: 28px;;">百货优选</span></a>

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
						<div class="info-member">
							<span style="margin-left: 20px;">
        				 <a href="center/gouserinfo">我的资料</a></span>
						</div>
						<div class="info-safety">
							<a class="manage-addr" href="center/goaddress">地址管理</a>
						</div>
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
								<dt><img src="<%=basePath %>/center/index_files/cart.png" style="margin-right: 10px;margin-left: -20px;">我的购物车</dt>
								<dt><img src="<%=basePath %>/center/index_files/file.png" style="margin-right: 10px;margin-left: -20px;">订单管理</dt>
								<dd>
									<a  >我的订单</a>

								</dd>
								<dd>
									<a  >我的收藏</a>

								</dd>
								<dd>
									<a  >我的评价</a>

								</dd>
								<dd>
									<a  >我的足迹</a>

								</dd>
								<dd>
									<a  >我的拍卖</a>
								</dd>
								<dd>
									<a  >我的优惠券</a>

								</dd>
								<dt><img src="<%=basePath %>/center/index_files/mybuy.png" style="margin-right: 10px;margin-left: -20px;">我的购买</dt>
								<dd>
									<a  >我的推荐</a>

								</dd>
								<dd>
									<a  >我的钱包</a>

								</dd>
								<dd>
									<a  >我要提现</a>

								</dd>
								<dd>
									<a  >我的积分</a>

								</dd>
								<dd>
									<a  >邀请管理</a>

								</dd>
								<dt><img src="<%=basePath %>/center/index_files/v-card-3.png" style="margin-right: 10px;margin-left: -20px;">售后服务</dt>
								<dd>
									<a  >退换货</a>

								</dd>
								<dd>
									<a  >意见/投诉</a>

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
								<div style=" float: left;vertical-align: bottom;text-align: center;">
								<div style="width: 680px;padding: 10px;float: left;background-color: #fff;height: 250px;">
								<div style="float: left;width:200px ;height: 152px;border: 1px #ccc solid;box-shadow: 1px 1px 1px #F5F5F5;padding: 5px;">
									<div style="width: 100%;height: 100%;border: 1px #F2873B dashed;">
										<span style="font-size: 18px;color: #686868;font-weight: bold;display: block;    display: block; width: 100px; margin-left: 50px;    margin-top:20px;">2016年4月</span>
										<span style="font-size: 36px;color: #F88600;display: block;    display: block; width: 100px; margin-left: 50px;margin-top: 28px;">12</span>
									     <input type="button" value="签到领买豆" style="background-color: #f56a48;border-radius: 5px;color: #fff; font-size:14px;border: 0px;width: 107px;height: 26px;margin-top: 30px;">
									</div>
								</div>
								
								<div style="float: left;width:200px ;height: 152px;;margin-left: 20px;border: 1px #ccc solid;box-shadow: 1px 1px 1px #F5F5F5;padding: 5px;">
									<div style="width: 100%;height: 100%;border: 1px #F2873B dashed;">
										<span style="font-size: 18px;color: #686868;font-weight: bold;display: block;    display: block; width: 100px; margin-left: 50px; margin-bottom: 20px;   margin-top: 20px;">我的资产</span>
									    <span style="width: 87px;height: 20px;background-color: #fee3dc;padding: 5px;border: 1px #C62B26 dashed;border-radius: 5px;">显示今日收益</span>
										<img src="<%=basePath %>/center/index_files/money.png" style="position: absolute; margin-top: 30px;  margin-left: -80px;;">	
									</div>
								</div>
								
								<div style="float: left;width:200px ;height: 152px;margin-left: 20px;border: 1px #ccc solid;box-shadow: 1px 1px 1px #F5F5F5;padding: 5px;">
									<div style="width: 100%;height: 100%;border: 1px #F2873B dashed;">
										<span style="font-size: 18px;color: #686868;font-weight: bold;display: block;    display: block; width: 100px; margin-left: 50px;    margin-top: 20px; margin-bottom: 20px;">我的买豆</span>
										<span style="width: 87px;height: 20px;background-color: #fee3dc;padding: 5px;border: 1px #C62B26 dashed;border-radius: 5px;">显示今日收益</span>
									    <img src="<%=basePath %>/center/index_files/vpoint.png" style="position: absolute; margin-top: 13px;  margin-left: -80px;;">									</div>
								</div>
								
								<div style="border-top:1px #ccc solid;width: 650px;position: absolute;margin-top: 200px;margin-left: 20px;float: left;"></div>
								<div style="position: absolute;margin-top: 230px;font-size: 14px;color: #686868;float: left;">
									<span style="margin-left: 20px;">待付款</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>待发货</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>待收货</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>待评价</span>
									<font style="color: #CF2D27;">0</font>
									<span style="margin-left: 40px;margin-right: 40px;">|</span>
									<span>退款</span>
									
								</div>
								</div>	
								
								
								<!--
                                	作者：右侧
                                	时间：2016-05-24
                                	描述：
                                -->
								<div style="float: left;width:250px ;height: 152px;margin-left: 20px;">
								 <p style="font-size: 14px;color: #686868;text-align:center;background-color: #fff;padding: 10px;color: #F88600;font-size: 14px;">百货优选</p>
								 <div style="background-color: #fff;margin-top: 10px;height: 300px;padding: 10px;">
								 	<p style="font-size: 16px;text-align: left;">我的优惠券</p>
								 	<img src="<%=basePath %>/center/index_files/etc.png">
								 	<img src="<%=basePath %>/center/index_files/etc.png" style="margin-top: 20px;">
								 	<p style="margin-top: 30px;font-size: 14px;color: #686868;">全部优惠券(<font color="red">96</font>)</p>
								 </div>
								
								<div style="background-color: #fff;margin-top: 10px;height: 200px;padding: 10px;">
								 	<p style="font-size: 20px;text-align: left;">收藏的商品</p>
								 	<img src="<%=basePath %>/center/index_files/fav.png" style="margin-top: 20px;">
								 	<p style="margin-top: 30px;font-size: 14px;color: #686868;">您的收藏空空的，赶紧<br>
								 	去首页看看购物吧</p>
								 </div>
								
								<div style="background-color: #fff;margin-top: 10px;height: 300px;padding: 10px;">
								 	<p style="font-size: 16px;text-align: left;">购物车</p>
								 	<div style="float:left ;">
								 	<img src="<%=basePath %>/center/index_files/etc.png" style="margin-top: 10px;height: 100px;width: 100px;float: left;">	
								 	<br>
								 	<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	<del style="float: left;margin-left: 20px;">¥189</del>
								 	<p style="width: 100px;font-size: 12px;color: #686868">化妆水化妆水化妆水化妆水化妆水化妆水</p>
								 	</div>
								 	 <div style="float:left ;">
								 	 	 <img src="<%=basePath %>/center/index_files/etc.png" style="margin-top: 10px;height: 100px;width: 100px;float: left;margin-left: 20px;">
								 	 	<br>
								 	<span style="display: block;float: left;margin-left: 40px;color: #f78642;font-size: 16px;">¥156</span>
								 	<del style="float: left;margin-left: 20px;">¥189</del>
								 		<p style="width: 100px;margin-left: 20px;font-size: 12px;color: #686868;">化妆水化妆水化妆水化妆水化妆水化妆水</p>
								 	 </div>
								 	
								   <p style="margin-top: 30px;font-size: 14px;color: #686868;">查看购物车(<font color="red">96</font>)</p>
								   
								</div>
								
								
								<div style="background-color: #fff;margin-top: 10px;height: 200px;padding: 10px;">
								 	<p style="font-size: 16px;text-align: left;">我的足迹</p>
								 	<img src="<%=basePath %>/center/index_files/money.png" style="margin-top: 20px;">
								 	<p style="margin-top: 30px;font-size: 14px;color: #686868;">您还没有留下任何足迹呢！</p>
								 </div>
								
								
								</div>
								
								<!--右侧---end------->
								
								<div style="width: 680px;padding:10px;display: inline-block; float: left;margin-top: 20px;background-color: #fff;">
									<div style="border-bottom: 1px #ccc solid;">
										<p style="font-size: 20px;text-align: left;">我的物流</p>
									</div>
									<div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="<%=basePath %>/center/index_files/etc.png">
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>在浙江临安市公司市区北方扫描，快件已被签收</p>
											<p>2016-04-10 12:20:30  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									<div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="<%=basePath %>/center/index_files/etc.png">
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>在浙江临安市公司市区北方扫描，快件已被签收</p>
											<p>2016-04-10 12:20:30  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									<div style="padding: 20px 20px;border-bottom: 1px #F5F5F5 solid;height: 150px;">
										<div style="float: left;margin-top: 10px;">
											<img src="<%=basePath %>/center/index_files/etc.png">
										</div>
										<div style="float: left;margin-top: 20px;">
											<p>在浙江临安市公司市区北方扫描，快件已被签收</p>
											<p>2016-04-10 12:20:30  <strong>查看物流信息</strong> </p>
										</div>
										<div style="float: right;margin-right: 20px;margin-top: 50px;">
											<button style="border: 1px #ccc solid;padding: 5px;background-color: #fff;">确认收货</button>
										</div>
										
									</div>
									<p style="text-align: center;margin-top: 30px;">展开全部信息</p>
									 <!--<div style="float:left;display: inline;border: 1px #ccc solid;display: inline-block;background-color: #f5f5f5;height: 25px;width: 150px;"> 
                                        <input type="text" placeholder="搜索会员编号"  style="padding-left:5px;width:130px;border: 0px;background-color: #fff;line-height: 25px;border-right: 0px #ccc solid;" />
									    <img src="img/search.png"  style="height: 10px;width: 10px;  margin-left: 2px; margin-bottom: 5px;" />
                                        </div> -->
								</div>
								
								<div style="width: 680px;padding:10px;display: inline-block; margin-top: 20px;background-color: #fff;float: left;border-bottom: 1px #ccc solid;padding-bottom: 20px;">
									<span style="text-align: left;line-height: 20px;">根据浏览 猜你喜欢</span>
								</div>
								<div style="width: 680px;padding:10px;display: inline-block; margin-top:0px;background-color: #fff;float: left;">
									<div style="padding:10px ;text-align: center;float: left;">
										<div style="float: left;margin-left: 30px">
											<img src="<%=basePath %>/center/index_files/wdxx_01.png">
											<p style="width: 180px;">乐扣乐扣彼得兔水杯系列700ml便携式茶杯</p>
											<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	     <del style="margin-left: 0px;margin-top: 10px;">¥189</del>
								 	     <dl style="    float: left; margin-top: 30px; margin-left: -50px;">好评：90%</dl>
								 	     <dl style="float: right;margin-top: 30px;">月销量：56</dl>
										</div>
										
										<div style="float: left;margin-left: 30px">
											<img src="<%=basePath %>/center/index_files/wdxx_01.png">
											<p style="width: 180px;">乐扣乐扣彼得兔水杯系列700ml便携式茶杯</p>
											<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	     <del style="margin-left: 0px;margin-top: 10px;">¥189</del>
								 	     <dl style="    float: left; margin-top: 30px; margin-left: -50px;">好评：90%</dl>
								 	     <dl style="float: right;margin-top: 30px;">月销量：56</dl>
										</div>
										
										<div style="float: left;margin-left: 30px;">
											<img src="<%=basePath %>/center/index_files/wdxx_01.png">
											<p style="width: 180px;">乐扣乐扣彼得兔水杯系列700ml便携式茶杯</p>
											<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	     <del style="margin-left: 0px;margin-top: 10px;">¥189</del>
								 	     <dl style="    float: left; margin-top: 30px; margin-left: -50px;">好评：90%</dl>
								 	     <dl style="float: right;margin-top: 30px;">月销量：56</dl>
										</div>
										
									</div>
									
									<div style="padding:10px ;text-align: center;float: left;">
										<div style="float: left;margin-left: 30px">
											<img src="<%=basePath %>/center/index_files/wdxx_01.png">
											<p style="width: 180px;">乐扣乐扣彼得兔水杯系列700ml便携式茶杯</p>
											<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	     <del style="margin-left: 0px;margin-top: 10px;">¥189</del>
								 	     <dl style="    float: left; margin-top: 30px; margin-left: -50px;">好评：90%</dl>
								 	     <dl style="float: right;margin-top: 30px;">月销量：56</dl>
										</div>
										
										<div style="float: left;margin-left: 30px">
											<img src="<%=basePath %>/center/index_files/wdxx_01.png">
											<p style="width: 180px;">乐扣乐扣彼得兔水杯系列700ml便携式茶杯</p>
											<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	     <del style="margin-left: 0px;margin-top: 10px;">¥189</del>
								 	     <dl style="    float: left; margin-top: 30px; margin-left: -50px;">好评：90%</dl>
								 	     <dl style="float: right;margin-top: 30px;">月销量：56</dl>
										</div>
										
										<div style="float: left;margin-left: 30px;">
											<img src="<%=basePath %>/center/index_files/wdxx_01.png">
											<p style="width: 180px;">乐扣乐扣彼得兔水杯系列700ml便携式茶杯</p>
											<span style="display: block;float: left;margin-left: 10px;color: #f78642;font-size: 16px;">¥156</span>
								 	     <del style="margin-left: 0px;margin-top: 10px;">¥189</del>
								 	     <dl style="    float: left; margin-top: 30px; margin-left: -50px;">好评：90%</dl>
								 	     <dl style="float: right;margin-top: 30px;">月销量：56</dl>
										</div>
										
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
		
		<script type="text/javascript " src="<%=basePath %>/center/index_files/ms_common.min.js."></script>
	

</div></body></html>