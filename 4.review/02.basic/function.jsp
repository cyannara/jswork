<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Լ������ȣ��</title>
</head>
<body>
<!--  function.jsp  -->
<script>
	//�μ��� ���� ���
	function sum(a, b) {
		return a+b;
	}
	document.write ( "���: " + sum(10,20) );
	document.write ( "���: " + sum(10) );
	document.write ( "���: " + sum(10,20,30) );
</script>
</body>
</html>