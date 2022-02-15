<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>

	<h3>날짜 계산</h3>
	<input type="text" id="anniversary_day"/>
	<input type="button" value="남은일수계산" onclick="calc_day()"/>

<script>
	var today = new Date();   // 70년 1월 1일 기준으로 누적시간
	document.write(d.get);
	
	//요일 출력
	var weekName = ['일','월','화','수','목','금','토'];
	document.write("오늘은" +  weekName[ d.getDay() ] + "요일<hr>")
	
	//살아온 일수
	var birth = new Date(2018,0,1);
	document.write("살아온 일수: " + Math.round((today - birth)/1000/60/60/24) +"<br>");
	
	//기념일까지 남은 일수 계산  --> 과제
	
</script>
</body>
</html>