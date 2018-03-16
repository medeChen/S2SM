$(function() {
	if ($.cookie("captcha")) {
		var count = $.cookie("captcha");
		var btn = $('#mid');
		btn.val(count + '秒后可重试').attr('disabled', true).css('cursor',
				'not-allowed');
		var resend = setInterval(function() {
			count--;
			if (count > 0) {
				btn.val(count + '秒后可重试').attr('disabled', true).css('cursor',
						'not-allowed');
				$.cookie("captcha", count, {
					path : '/',
					expires : (1 / 86400) * count
				});
			} else {
				clearInterval(resend);
				btn.val("获取验证码").removeClass('disabled').removeAttr(
						'disabled style');
			}
		}, 1000);
	}
	$("#mid").click(function() {
		if ($("#mail").val() != "") {
			var param = {
				"mail" : $("#mail").val(),
			};
			var btn = $(this);
			var count = 60;
			var resend = setInterval(function() {
				count--;
				if (count > 0) {
					btn.val(count + "秒后可重试");
					$.cookie("captcha", count, {
						path : '/',
						expires : (1 / 86400) * count
					});
				} else {
					clearInterval(resend);
					btn.val("获取验证码").removeAttr('disabled style');
				}
			}, 1000);
			btn.attr('disabled', true).css('cursor', 'not-allowed');
			$.ajax({
				url : "user/getCodeAction",
				type : "POST",
				dataType : "json",
				data : param,
				success : function(data) {
					var as = JSON.parse(data);
					var json = eval("(" + data + ")");
					var str = "";
					$.each(json, function(index, item) {
						str += item.code;
					});
					if(str =="exist"){
						alert("邮箱已被注册");
					}
					$("#code").val(str);
				}

			});
		} else {
			alert("请输入邮箱")
		}
	});

});
function check() {
	var pwd = document.getElementById("pwd").value;
	var rpwd = document.getElementById("repwd").value;
	var name = document.getElementById("name").value;
	var mail = document.getElementById("mail").value;
	var gid = document.getElementById("gid").value;
	var code = document.getElementById("code").value;
	if (name == null || name == '') {
		alert("用户名不能为空");
		return false;
	}
	if (pwd == null || pwd == '') {
		alert("密码不能为空");
		return false;
	} else if (pwd != rpwd) {
		alert("两次密码不一样");
		return false;
	}
	if (mail == null || mail == '') {
		alert("邮箱不能为空");
		return false;
	}
	if (gid == null || gid == '') {
		alert("验证码不能为空");
		return false;
	}else if(gid!=code){
		alert("验证码错误");
		return false;
	}
	return true;
}
