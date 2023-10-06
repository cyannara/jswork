<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>write.jsp</title>
<script>
	document.write("스크립트로 추가한 문장<br/>");
	function divPrint() {
		// 텍스트필드의 값을  div 태그에 출력 (innerHTML,  value)
		document.getElementById("div1").innerHTML = 
			       document.getElementById("userName").value;
	}
</script>
</head>
<body>
메인페이지입니다.
<input type="button" value="확인" onclick="divPrint()"/>
<input type="text" id="userName" value="choi"/>
<div id="div1">    </div> 
<script>
	//console.log( document.getElementById("userName").value ) ;
</script>
</body>
</html>