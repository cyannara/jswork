<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function moveBack(){
	//history.back();  //������������ �̵�
	history.go(-1);  //������������ �̵�
}
</script>
</head>
<body>
<!--  move.jsp -->
������������ �̵�
<input type="button" value="�ڷ�" onclick="moveBack();"/>
</body>
</html>