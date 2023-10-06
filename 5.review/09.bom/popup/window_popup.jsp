<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function winClose() {
	window.close();  	//ÀÚ½Å Ã¢
}
function winModify(){
	opener.document.write("");      //ÆË¾÷Ã¢À» ¿ÀÇÂÇÑ ºÎ¸ðÃ¢   
	//parent
}
</script>
</head>
<body>
<input type="button" value="ÆË¾÷Ã¢´Ý±â" onclick="winClose();" autofocus="autofocus">
<input type="button" value="ºÎ¸ðÃ¢³»¿ëº¯°æ" onclick="winModify();">
</body>
</html>