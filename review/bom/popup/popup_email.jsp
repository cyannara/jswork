<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function winClose() {
	//�θ�â�� �ؽ�Ʈ�ʵ忡 �� ����
	var txtChild = window.document.getElementById("txtChild").value;
	opener.document.getElementById("txtParent").value = txtChild;
	window.close();  	//�ڽ� â
}
function winModify(){
	opener.document.write("");      //�˾�â�� ������ �θ�â   
	//parent
}
</script>
</head>
<body>
<input type="text" id="txtChild" />
<input type="button" value="�˾�â�ݱ�" onclick="winClose();" autofocus="autofocus">
<input type="button" value="�θ�â���뺯��" onclick="winModify();">
</body>
</html>