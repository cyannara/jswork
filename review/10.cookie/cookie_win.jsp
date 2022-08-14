<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>js_cookie.jsp</title>
<script src="./cookie.js"></script>
<script>
	function init() {
		var popupYn = getCookie("popupYn");
		
		if( ! popupYn ) {
			console.log("====");
			window.open("cookie_popup.jsp","popup",
				"width=200,height=200");
		}
	}		
</script>
</head>
<body onload="init()">
<h1>자바스크립 쿠키연습</h1>
</body>
</html>