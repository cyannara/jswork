<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
var timer1;
function dispClock(){
	var curTime = new Date();
	var str = 	curTime.getHours() +":" + 
				curTime.getMinutes() + ":" +
				curTime.getSeconds() ;
	document.getElementById("demo").innerHTML = str;
}
function stopClock() {
	clearInterval(timer1);
}
function init(){
	timer1 = window.setInterval(dispClock, 1000);
}
</script>
</head>
<body onload="init();">
<!-- clockInterval.jsp -->
������ �ð� <hr>
<input type="button" value="����" onclick="stopClock();"/>
<input type="button" value="����" onclick="startClock();"/>
<div id="demo"></div>
</body>
</html>