<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>date.jsp</title>
</head>
<body>
<h4>��¥ ���</h4>
<script>
	var today=new Date();
	document.write(today+"<br>");
	document.write(today.getFullYear()+"�� <br>");
	//��, �� , ���Ϲ�ȣ ���
	document.write(today.getMonth()+1+"�� <br>");
	document.write(today.getDate()+"�� <br>");
	document.write(today.getDay()+"���� <br>");
</script>
</body>
</html>