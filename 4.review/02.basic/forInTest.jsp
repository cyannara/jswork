<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>
<!-- forInTest.jsp -->
<script>
	var arr = ['good','morning','everybody'];
	for ( temp in arr   ) {
		document.write( temp +":" + arr[temp] +"<br>");
	}
	
	
	var obj = { firstName : '�浿', age:20, addr : '�뱸' }
	for ( temp in obj   ) {
		document.write( temp +":" + obj[temp] +"<br>");
	}	
	
</script>
</body>
</html>