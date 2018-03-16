<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<base href="<%=basePath%>">
	<meta charset="utf-8" />
	<title></title>
	<link rel="stylesheet" type="text/css"
		href="<%=basePath%>register/css/index.css" />
	<script src="<%=basePath%>register/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>register/js/main.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>register/js/jquery.cookie.js"></script>
</head>
<body>
	<section>
	<form action="user/registerAction" method="post" onsubmit="return check()">
		<div class="register-box">
			<label for="username" class="username_label"><span>用 户 名 </span><input id="name" name="user.user_name" 
				maxlength="20" type="text" placeholder="您的用户名" />
			</label>
			<div class="tips"></div>
		</div>
		<div class="register-box">
			<label for="username" class="other_label"><span>设 置 密 码</span> <input id="pwd" name="user.user_pwd"
				maxlength="20" type="password" placeholder="建议至少使用两种字符组合" />
			</label>
			<div class="tips"></div>
		</div>
		<div class="register-box">
			<label for="username" class="other_label"><span>确 认 密 码</span> <input id="repwd"
				maxlength="20" type="password" placeholder="请再次输入密码" />
			</label> 
		</div>
		<div class="register-box">
			<label for="username" class="other_label"> <span>登 陆 邮 箱</span>
				<input class="phone" maxlength="20" type="text" id="mail" name="user.user_mail"
				placeholder="建议使用常用邮箱" />
			</label>
		</div>

		<div class="register-box">
			<label for="username" class="other_label"><span>验 证 码 </span><input id="gid"
				maxlength="20" type="text" placeholder="请输入验证码" /> <input id="mid"
				type="button" value="获取验证码" />
			</label>
		</div>

		<div class="submit_btn">
			<button type="submit" id="submit_btn">立 即 注 册</button>
		</div>
	<form>
	</section>
	<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
	<input type="hidden" id="code" />
</body>
</html>