<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">
<head>
<base href="<%=basePath%>" />
<title>人员信息</title>
<link rel="stylesheet" href="<%=basePath%>/check/css/person_info.css">
<script src="<%=basePath%>/check/js/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="left">
			<p>后台审核系统</p>
			<p class="choose active shenhe">图片审核</p>
			<p class="choose handle">申诉处理</p>
			<p>审核人员信息</p>
			<div class="info_1">
				审核员id： <a><s:property value="#session.managerid" /></a>
			</div>
		</div>
		<div class="right right_1">
			<div class="p">
				<span>审核信息</span>
				<p class="info_1 info_2">
					<label>id：<s:property value="check.check_id" /></label> <br>
					<label>申请人id：<s:property value="check.user_id" /></label>
				</p>
			</div>
			<img
				src="${pageContext.request.contextPath}/images/<s:property value='check.check_pic1'/>">
			<img
				src="${pageContext.request.contextPath}/images/<s:property value='check.check_pic2'/>">
			<form id="select" action="back/check!unpass" method="post">
				<div class="reason">
					<p class="re_content">
						<input name="check.check_msg" type="text"
							style="width: 96%; height: 90%" placeholder="备注/理由">
					</p>
				</div>
				<input
					style="width: 100%; height: 54px; color: #fff; background: #e22; border: 0; font-size: 16px; font-family:"
					Microsoft YaHei", "Hiragino Sans GB";" type="submit" value="不通过" />
				<input style="width: 100%; height: 54px; color: #fff; background: #8080ff; border: 0; font-size: 16px; font-family:"
					Microsoft YaHei", "Hiragino Sans GB";" type="button" value="通过" onclick="pass();">
			</form>
			<script type="text/javascript">
				function pass() {
					document.forms.select.action = "back/check!pass";
					document.forms.select.submit();
				}
			</script>
		</div>
		<div class="right right_2">
			<div class="p">
				<span>申诉处理</span>
				<div class="info_1 info_2">
					<div>
						投诉人
						<p>XXX</p>
					</div>
					<div>
						被投诉人
						<p>XXX</p>
					</div>
				</div>
			</div>
			<div class="ss">
				<span>申诉内容:</span>
				<textarea name="" id="ss_content" cols="50" rows="7"></textarea>
			</div>
			<div class="ss ss_2">
				<span>申诉图片:</span> <img src="<%=basePath%>/check/images/tt.jpg"
					alt="">
			</div>
			<div class="ss ss_3">
				<span>申诉结果:</span>
				<textarea name="" id="ss_result" cols="30" rows="3"></textarea>
			</div>
			<button>下一条</button>
		</div>
	</div>

	<script>
		$(function() {
			$(".choose").click(
					function() {
						$(this).addClass("active").siblings(".choose")
								.removeClass("active");
					});
			$(".handle").click(function() {
				$(".right_1").hide();
				$(".right_2").show();
			});
			$(".shenhe").click(function() {
				$(".right_2").hide();
				$(".right_1").show();
			})
		})
	</script>
</body>
</html>
