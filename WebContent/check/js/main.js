$(function() {
	$(".choose").click(function() {
		$(this).addClass("active").siblings(".choose").removeClass("active");
	});

	$(".shenhe").click(function() {
		$(".right_2").hide();
		$(".right_1").show();
	});
	$(".handle").click(function() {
		window.location.href = "/S2SM/back/getlist!getlist";
	});
	//
	$("#add").click(
			function() {
				if ($("#id").val() != "" && $("#pwd").val() != ""
						&& $("#repwd").val() == $("#pwd").val()) {
					var param = {
						"manager.manager_id" : $("#id").val(),
						"manager.manager_pwd" : $("#pwd").val(),
					};
					$.ajax({
						url : "back/addManager",
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
							if (str == "fail") {
								alert("该工号已被添加");
							} else if (str == "success") {
								$("#id").val("");
								$("#pwd").val("");
								$("#repwd").val("");
								alert("添加成功");
							}
						}

					});
				} else {
					alert("请输入完整信息")
				}
			});
	//
	$(document).ready(function() {
		if($("#isshow").val()=="show"){
			$("#list").addClass("active").siblings(".choose").removeClass("active");
			$(".right_1").hide();
			$(".right_2").show();
		}
		
	});
});
