<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
</head>

<body class="login">

	<div class="login_m">
		<div class="login_logo">
			<img src="../logo.png" width="196" height="46">
		</div>
		<div class="login_boder">
			<div class="login_padding">
				<h2>用户名</h2>
				<label> <input type="text" id="username"
					class="txt_input txt_input2"
					onfocus="if (value =='Your name'){value =''}"
					onblur="if (value ==''){value='Your name'}" value="Your name">
				</label>
				<h2>密码</h2>
				<label> <input type="password" name="textfield2"
					id="userpwd" class="txt_input"
					onfocus="if (value =='******'){value =''}"
					onblur="if (value ==''){value='******'}" value="******">
				</label>
				<p class="forgot">
					<a href="javascript:void(0);">忘记密码?</a>
				</p>
				<div class="rem_sub">
					<div class="rem_sub_l">
						<input type="checkbox" name="checkbox" id="save_me"> <label
							for="checkbox">记住</label>
					</div>
					<label> <input type="submit" class="sub_button"
						name="button" id="button" value="登录" style="opacity: 0.7;">
					</label>
					<form action="user/pic" enctype="multipart/form-data" method="post">
						<span style="white-space: pre"> </span>上传文件：<input type="file"
							name="image"><br /> <span style="white-space: pre">
						</span><input type="submit" value="提交" />
					</form>
					<s:if test="imageFileName!=null">
						<img
							src="${pageContext.request.contextPath}/images/<s:property value='imageFileName'/>" />
					</s:if>
					<h3>修改表单中提交按钮显示的文字</h3>
					<form id="frmTest" action="index.jsp">
						<input type="button" name="" id="Text1" value="Input Button" /><br />
						<input type="submit" name="" id="Text2" value="Input Button" /><br />
						<button>Button</button>
					</form>
</body>
<script src="<%=basePath %>/back/assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$("$frmTest input:submit").attr("value", "点我就提交了");
</script>

</div>
</div>
</div>
<!--login_boder end-->
</div>
<!--login_m end-->

<br>
<br>

</body>
</html>
