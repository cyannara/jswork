<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
<div>a</div>
<div>b</div>
<div>c</div>
<script>
	var div = document.getElementsByTagName("div");
	//div[0].style.color = "red";
	//$(div[0]).css("color", "red"); // dom -> jquery  : $(dom객체)
	var $div = $("div")
	$div[1].style.color = "blue";// jquery -> dom 객체 : get(), item(), []
</script>
</body>
</html>