<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function winClose() {
	window.close();  	//�ڽ� â
}
function winModify(){
	opener.document.write("");      //�˾�â�� ������ �θ�â   
	//parent
}
</script>
</head>
<body>
<input type="button" value="�˾�â�ݱ�" onclick="winClose();" autofocus="autofocus">
<input type="button" value="�θ�â���뺯��" onclick="winModify();">
</body>
</html>