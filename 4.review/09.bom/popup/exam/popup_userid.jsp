<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>popup_userid.jsp</title>
<script>
function winClose() {
	//�θ�â�� �ؽ�Ʈ�ʵ忡 �� ����
	var userid = window.document.getElementById("userid").value;
	opener.document.getElementById("userid").value = userid;
	window.close();  	//�ڽ� â
}
</script>
</head>
<body>
<h3>�Ƶ��ߺ�üũ�˾�</h3>
<input type="text" name="userid" id="userid" autofocus="autofocus"/>
<input type="button" value="�˾�â�ݱ�" onclick="winClose();">
</body>
</html>