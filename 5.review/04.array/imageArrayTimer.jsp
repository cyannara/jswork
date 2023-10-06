<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html><head>
<title>imageArray.jsp</title>
<style>
	img { width: 300px; height: 300px;}
</style>
<script>
//전역변수선언
var timer1;   // imageTimer     //함수밖에선언하면 어느함수에서던지 접근
var timer2;   // 텍스트시계 타이머

window.onload = function() {
	timer1 = window.setInterval(imageChange, 2000);
	timer2 = window.setInterval(timeChange, 1000);
}

//시간출력 함수
function stopTimer() {
	window.clearInterval(timer2);
}
	
function imageChange() {
	var images = ["../images/Desert.jpg",
				  "../images/Hydrangeas.jpg",
				  "../images/Jellyfish.jpg",
				  "../images/Koala.jpg",
				  "../images/Lighthouse.jpg"
				  ];
	//이미지 랜덤으로 출력
	//Random 객체 이용하여 0~4 사이의 임의의 수를 생성
	var num = Math.floor(Math.random() * 5);  
	//이미지 소스 속성 변경
	document.getElementById("img1").src  = images[num];
}
</script>	
</head>
<body>
<p id="demo"></p>  
<input type="button" value="시간멈춤" onclick="stopTimer()"/><br/>
<img src="../images/Desert.jpg" id="img1"/>
</body>
</html>