<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<title>登陆</title>
<head>
<base href="<%=basePath%>">
	<link href="<%=basePath%>/login/style.css" rel="stylesheet"
		type="text/css">
		<script type="text/javascript" src="<%=basePath%>login/main.js"></script>
</head>

<body class="login" onload="login()">

	<div class="login_m">
		<div class="login_logo">
			<img src="<%=basePath%>/login/logo.png" width="196" height="46">
		</div>
		<div class="login_boder">
			<div class="login_padding">
				<h2>登陆邮箱</h2>
				<form action="user/loginAction" method="post">
					<label> <input type="text" id="mail" name="user.user_mail" name="manager.manager_id"
						class="txt_input txt_input2" placeholder="登陆邮箱/登陆账号"></label>
					<h2>密码</h2>
					<label> <input type="password" name="user.user_pwd" name="manager.manager_pwd"
						id="userpwd" class="txt_input" placeholder="密码"></label>

					<p class="forgot">
						<a href="javascript:void(0);">忘记密码?</a>
					</p>
					<p class="forgot">
						<a style="padding-left: 0" href="register/register.jsp">注册</a>
					</p>
					<div class="rem_sub">
						<label> <input type="submit" class="sub_button"
							name="button" id="button" value="登录" style="opacity: 0.7;"></label>
				</form>
			</div>
		</div>
	</div>
	<!--login_boder end-->
	</div>
	<!--login_m end-->

	<br> <br>
</body>
