<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function moveBack(){
	//history.back();  //이전페이지로 이동
	history.go(-1);  //이전페이지로 이동
}
</script>
</head>
<body>
<!--  move.jsp -->
이전페이지로 이동
<input type="button" value="뒤로" onclick="moveBack();"/>
</body>
</html>