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
<h3>주소검색팝업</h3>

<ul>
	<li><a href="#" onclick="chooseAddr('대구')">대구</a>
	<li><a href="#" onclick="chooseAddr('서울')">서울</a>
	<li><a href="#" onclick="chooseAddr('부산')">부산</a>
</ul>

</body>
</html>