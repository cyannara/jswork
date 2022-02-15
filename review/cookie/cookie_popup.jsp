<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>popup.jsp</title>
<script src="./cookie.js"></script>
<script>
function save_cookie(){
	setCookie("popupYn", "false", 1);
	window.close();
}

</script>
</head>
<body>
광고팝업<br>
<input type="checkbox" 
    onchange="save_cookie()"> 오늘은 이창 열지 않기
</body>
</html>