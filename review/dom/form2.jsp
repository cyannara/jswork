<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>dom</title>
<script>
//document.forms[0].id.value
//document.frm1.id.value
window.onload = function() {
	for (i=0; i< document.images.length; i++ ) {
		document.images[i].style.width = '100px';
		document.images[i].style.height = '100px';
	}
}
</script>
</head>
<body>
<!--  form.jsp -->
<form name="frm1">
	<input type="text" name="id" 
		onchange="document.getElementById('btn1').disabled='';">
</form> 
<form name="frm2">
	<input type="text" name="id">
</form>
<img src="../images/Chrysanthemum.jpg">
<img src="../images/Desert.jpg">
<button disabled="disabled" id="btn1">���</button>
</body>
</html>

