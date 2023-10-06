<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>타이머-반복실행</title>
<script>
	function timer_start() {
		var cur_time = new Date();
		document.getElementById("result").innerHTML = 
			cur_time.toLocaleTimeString();
	}
	var timer1 = setInterval(timer_start, 1000);
</script>
</head>
<body>
<!-- timer_interval.jsp -->
현재시간은 <span id="result"></span>
<button onclick="clearInterval(timer1)">중지</button>
</body>
</html>