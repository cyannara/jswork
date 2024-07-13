<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>popup_userid.jsp</title>
<script>
function winClose() {
	//부모창의 텍스트필드에 값 전달
	var userid = window.document.getElementById("userid").value;
	opener.document.getElementById("userid").value = userid;
	window.close();  	//자신 창
}
</script>
</head>
<body>
<h3>아디중복체크팝업</h3>
<input type="text" name="userid" id="userid" autofocus="autofocus"/>
<input type="button" value="팝업창닫기" onclick="winClose();">
</body>
</html>