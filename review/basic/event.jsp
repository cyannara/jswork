<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<style>
	div { border : 1px solid blue;
		}
	.mouseOverFont {
		color: red;
	}
	.mouseOutFont {
		color: red;
	}		
</style>
<script>
function init() {
	document.getElementById("demo").innerHTML = "hello";
}
function fontBold(){
	// �۲��� bold
/* 	document.getElementById("demo").style.fontWeight = "bold";
	document.getElementById("demo").style.fontSize = "20px"; */
	document.getElementById("demo").className = "mouseOverFont";
}
function fontStand(){
	
}
</script>
</head>
<body onload="init();">
<!-- event.jsp -->
�̺�Ʈ �׽�Ʈ <hr>
<div id="demo" onmouseenter="fontBold()" onmouseleave="fontStand()" ></div>
</body>
</html>