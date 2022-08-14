<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--  var.jsp  -->
변수선언 테스트 <hr>
<div id="demo"></div>
<script>
	var x, y, z;
	x = 5;
	y = 6;
	z = x + y;
	document.getElementById("demo").innerHTML = z;

</script>
</body>
</html>