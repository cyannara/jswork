<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>timer_clock._settimeout.jsp</title>
<script>
var timer1;
function dispClock(){
	var curTime = new Date();
	var str = 	curTime.getHours() +":" + 
				curTime.getMinutes() + ":" +
				curTime.getSeconds() ;
	document.getElementById("demo").innerHTML = str;
	timer1 = window.setTimeout(dispClock, 1000);
}

function stopClock() {
	clearTimeout(timer1);
}
</script>
</head>
<body onload="dispClock();">
<h3>������ �ð� </h3>
<input type="button" value="����" onclick="stopClock();"/>
<input type="button" value="����" onclick="startClock();"/>
<div id="demo"></div>
</body>
</html>