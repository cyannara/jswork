<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>timer.jsp</title>
<head>
<script>
	//전역변수
	var t ; // 시계 타이머	
	window.onload = function(){
		timerOn();
	}	
	//시간표시함수 (반복실행)
	function disp_time(){
		var today = new Date();
		document.getElementById("spanTime").innerHTML = today.getHours() +":" +
														today.getMinutes() +":" +
														today.getSeconds() +":" +
														today.getMilliseconds()
	}	
	function timerOff() {  //타이머 멈춤
		clearInterval(t);
		t = null;
	}
	function timerOn(){
		if(!t) {
			t = window.setInterval(disp_time, 1000);
		} else {
			alert("타이머 가동중입니다.");
		}
	}
</script>
</head>
</head>
<body>
	<input type="button" value="시작" onclick="timerOn()"/>
	<input type="button" value="멈춤" onclick="timerOff()"/>
	현재시간은 <span id="spanTime"></span>
</body>
</html>





