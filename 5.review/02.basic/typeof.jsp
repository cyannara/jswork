<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>typeof.jsp</title>
</head>
<body>
<h4>typeof �ǽ�</h4>
<script>
	var a; //undefined
	console.log(a);
	a ="ȫ�浿";
	console.log(typeof a);//string int a=10; a.____
	a=10.12345;
	console.log(a.toPrecision(3));
	console.log(typeof a); //number

</script>
</body>
</html>