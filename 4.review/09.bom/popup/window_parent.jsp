<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
	var w;
	function winOpen(){
		w = window.open("popup.jsp","addrSearch", 
				    "width=200px,height=100px")
	}
	function winClose() {
		w.close();
	}
</script>
</head>
<body>
	<input type="button" value="새창열기" onclick="winOpen();">	
	<input type="button" value="창닫기" onclick="winClose();">
</body>
</html>