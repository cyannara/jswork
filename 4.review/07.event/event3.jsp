<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>event.jsp</title>
</head>
<body>
<button type="button" id="btn1">이벤트처리</button><p id="info">상세소개</p>
<button type="button" id="btn2">이벤트처리2</button><p id="info2">상세소개2</p>
<button type="button">이벤트처리3</button><p id="info3">상세소개3</p>
<script>
	//이벤트 핸들러  
	document.body.addEventListener("click", btnHandler);
	
	function btnHandler(){ 
		event.target.nextSibling.style.display = "none";
	}
</script>
</body>
</html>