<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>�˾�â���� �θ�â�� ����</title>
<script>
function sendEmail() {
	opener.document.getElementById("result").innerHTML = 
		   document.getElementById("useremail").value;
}
</script>
</head>
<body>
<!-- popup.jsp -->
<input type="text" id="useremail" onkeypress="sendEmail()"/>
</body>
</html>