<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>variable.jsp</title>
</head>
<body>
<script>

	function getName(){
		const x=10;//상수선언, 변경불가
		x=5;
		{
		 var nane='김길동';
		 let x = 2;
		}
		console.log(x);
	}
	function getName2(){
		console.log(nane);
	}
	getName();
	getName2();
	
</script>
<h4>변수선언</h4>
</body>
</html>