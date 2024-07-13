<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function winClose() {
	//부모창의 텍스트필드에 값 전달
	var txtChild = window.document.getElementById("txtChild").value;
	opener.document.getElementById("txtParent").value = txtChild;
	window.close();  	//자신 창
}
function winModify(){
	opener.document.write("");      //팝업창을 오픈한 부모창   
	//parent
}
</script>
</head>
<body>
<input type="text" id="txtChild" />
<input type="button" value="팝업창닫기" onclick="winClose();" autofocus="autofocus">
<input type="button" value="부모창내용변경" onclick="winModify();">
</body>
</html>