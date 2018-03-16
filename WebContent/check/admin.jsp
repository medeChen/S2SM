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
<meta charset="UTF-8">
<base href="<%=basePath%>" />
<title>人员信息</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>check/css/index.css" />
<link rel="stylesheet" href="<%=basePath%>/check/css/person_info.css">
<script src="<%=basePath%>/check/js/jquery.min.js"></script>
<script src="<%=basePath%>/check/js/main.js"></script>
</head>
<body>
	<input type="hidden" id="isshow" value='<s:property value="isshow"/>'>
	<div class="container">
		<div class="left">
			<p>后台控制系统</p>
			<p class="choose active shenhe">添加管理人员</p>
			<p id="list" class="choose handle">管理人员列表</p>
		</div>
		<div class="right right_1" style="">
			<form onsubmit="return false">
				<div class="register-box">
					<label for="username" class="username_label"><span>审核员工号</span><input
						id="id" maxlength="20" type="text" /> </label>
					<div class="tips"></div>
				</div>
				<div class="register-box">
					<label for="username" class="other_label"><span>设 置
							密 码</span> <input id="pwd" maxlength="20" type="password" /> </label>
					<div class="tips"></div>
				</div>
				<div class="register-box">
					<label for="username" class="other_label"><span>确 认
							密 码</span> <input id="repwd" maxlength="20" type="password" />
					</label>
				</div>

				<div class="submit_btn">
					<button id="add">添加人员</button>
				</div>
				<form>
		</div>
		<div class="right right_2">
			<table style="margin: auto; width: 80%;">
				<thead>
					<tr>
						<th>审核员账号</th>
						<th>审核员密码</th>
					</tr>
				</thead>
				<tbody id="mytbody">
					<s:iterator value="managerlist" var="manager">
						<tr >
							<td style="border-bottom:1px solid #BBB;"><s:property value="#manager.manager_id" /></td>
							<td style="border-bottom:1px solid #BBB;"><s:property value="#manager.manager_pwd" /></td>
						</tr>
					</s:iterator>

				</tbody>
			</table>
			<a href="back/getlist!getlist_pre">上一页</a><a style="margin-left: 240px" >当前第<s:property value="currentpage" />页</a><a
				style="margin-left: 240px" href="back/getlist!getlist_next">下一页</a>
		</div>
</body>
</html>
