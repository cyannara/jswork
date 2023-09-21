<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>cookieRead.jsp</title>
<script src="cookie.js"></script>
<script>
	window.onload = function() {
		 document.getElementById("userName").value = getCookie("username")
	}
</script>
</head>
<body>
<input type="text" id="userName" name="userName"/>
</body>
</html>