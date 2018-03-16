function login() {
	key = "tag";
	var href = window.location.search;
	var match = href.match(new RegExp('[?&]' + key + '=([^&]*)'));
	var a= match && match[1] && decodeURIComponent(match[1]) || '';
	if(a==1){
		alert("账号密码错误");
	}
}
