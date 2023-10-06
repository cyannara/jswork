<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Insert title here</title></head>
<body>
<!-- number.jsp -->
number 객체 <hr>
<script>
	var num1 = "100";
	var num2 = "200";
	document.write( window.parseInt(num1) + window.parseInt(num2));
	document.write("<br>");
	
	var fl1 = "101.5";
	var fl2 = "0.45";
	document.write(Number(fl1) + Number(fl2));
	
	var pre1 = 123.456789;
	//1. 소수점 2자리까지만..
	
	//2. 원단위 절삭해서 10원단위 출력  ==>  120원     * -> precision -> /
	document.write("<br>");
	document.write( (pre1/10).toFixed(0)*10 );
	Math.ro
</script>
</body>
</html>