<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Ÿ�̸�-�ݺ�����</title>
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
����ð��� <span id="result"></span>
<button onclick="clearInterval(timer1)">����</button>
</body>
</html>