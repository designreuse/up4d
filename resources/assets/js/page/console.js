$(function() {
	var loginForm = $("#loginForm");
	// Get Product Name
	var prodName = $("prodName").text();
	// Get Browser
	$("#userBrowser").text(checkBrowser());
	// Get Ip
	$("#clientIp").text(userip);
	
	// Get username
	$("#loginBtn").click(function(e) {
		var str = $("input[name='j_username']").val();
		var ip = $("#clientIp").text();
		var browser = $("#userBrowser").text();
		e.preventDefault();
		$.when(
			$.ajax({
			url :contextPath + '/json/user',
			type : 'GET',
			dataType : 'JSON',
			data : {
				j_username : str
			},
			success : function(response) {
				if(response != null){
					console.log("Check user successfully");
				}
			},
			error : function() {
			}
			})
		).then(
			$.ajax({
			url : contextPath + '/history/create',
			type : 'GET',
			dataType : 'JSON',
			data : {
				username : str,
				type : 'login',
				ip : ip,
				browser : browser
			},
			success : function(response) {
				if(response == true){
					loginForm.submit();
				}
			},
			error : function() {
			}
			})
		);
	});
});

function checkBrowser() {
	var isOpera = !!window.opera || navigator.userAgent.indexOf(' OPR/') >= 0;
	// Opera 8.0+ (UA detection to detect Blink/v8-powered Opera)
	var isFirefox = typeof InstallTrigger !== 'undefined'; // Firefox 1.0+
	var isSafari = Object.prototype.toString.call(window.HTMLElement).indexOf(
			'Constructor') > 0;
	// At least Safari 3+: "[object HTMLElementConstructor]"
	var isChrome = !!window.chrome && !isOpera; // Chrome 1+
	var isIE = /* @cc_on!@ */false || !!document.documentMode; // At least IE6

	//
	var browser;
	if (isOpera) {
		browser = "Opera";
	}
	if (isFirefox) {
		browser = "Firefox";
	}
	if (isSafari) {
		browser = "Safari";
	}

	if (isChrome) {
		browser = "Chrome";
	}

	if (isIE) {
		browser = "IE";
	}

	return browser;
}