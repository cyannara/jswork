<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>jstest/functiontest.jsp</title>
<script>
	function img_chg() {
		var img1 = document.getElementById('img1');
		//img1.src='../images/Koala.jpg';
		//left 속성을 읽어서 100을 증가
		
		img1.style.left="100px";
		
	}
	
	function calcSum( num ) {
		
		return sum;
	}
</script>
</head>
<body>
<button onclick="document.getElementById('result').innerHTML = calcSum(5)">계산</button><br>
<div id="result">   </div>
<button type="button" 
        onclick="img_chg()">이미지변경</button>
<img id="img1" src="../images/Desert.jpg" 
     style="width: 200px; position: relative;"
     onmouseover="img_chg()"/>
</body>
</html>