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
		const x=10;//�������, ����Ұ�
		x=5;
		{
		 var nane='��浿';
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
<h4>��������</h4>
</body>
</html>