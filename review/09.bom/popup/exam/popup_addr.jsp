<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>popup_addr.jsp</title>
<script>
function chooseAddr(addr){
	opener.document.getElementById("addr").value = addr;
	window.close();
}
</script>
</head>
<body>
<h3>�ּҰ˻��˾�</h3>

<ul>
	<li><a href="#" onclick="chooseAddr('�뱸')">�뱸</a>
	<li><a href="#" onclick="chooseAddr('����')">����</a>
	<li><a href="#" onclick="chooseAddr('�λ�')">�λ�</a>
</ul>

</body>
</html>