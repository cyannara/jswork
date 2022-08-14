<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>함수선언과호출</title>
</head>
<body>
<!--  function.jsp  -->
<script>
	//두수의 합을 계산
	function sum(a, b) {
		return a+b;
	}
	document.write ( "결과: " + sum(10,20) );
	document.write ( "결과: " + sum(10) );
	document.write ( "결과: " + sum(10,20,30) );
</script>
</body>
</html>