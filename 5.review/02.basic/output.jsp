<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h4>자바스크립트 출력문</h4>
<p id="demo"></p>
<script>
	document.getElementById("demo").innerHTML='태그 내용 변경';
	document.write("<p>write로 출력</p>"); //== out.print();
	window.alert("알림 메시지 출력");
	console.log("콘솔 출력"); //System.out.print();
</script>
</body>
</html>