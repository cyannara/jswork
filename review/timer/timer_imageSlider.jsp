<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
var arrImage =  ["images/Chrysanthemum.jpg",     "images/Desert.jpg",
                 "images/Hydrangeas.jpg",        "images/Jellyfish.jpg",
                 "images/Koala.jpg",             "images/Lighthouse.jpg",
                 "images/Penguins.jpg",          "images/Tulips.jpg"]; 

var pos = 0 ; // 이미지 위치 인덱스  

var img_timer;

function init() {
	document.getElementById("slider").src= "../"+arrImage[pos];
	// 체인지 함수 타이머 지정
	img_timer = window.setInterval(imgChange, 2000);
}

// pos 증가해서 이미지를 체인지하는 함수
function imgChange() {
	//이미지 차례대로 출력(pos 증가)
	pos = (pos+1) % arrImage.length;  	//타이머 실행때마다 인덱스 증가

	//이미지 랜덤으로 출력
	//var pos = Math.floor(Math.random() * arrImage.length);  
	
	//이미지 변경
	document.getElementById("slider").src= "../"+arrImage[pos];
}

function stop_timer(){
	window.clearInterval(img_timer);  // 타이머 중지
}
</script>
</head>
<body onload="init();">
<!-- imageSlider.jsp -->
<h3>이미지 슬라이더 </h3>
<img id="slider" src="" style="width: 200px;height: 200px; position: relative; left: 100px;"><br>
<input type="button" value="◀" /> 
<input type="button" value="▶" />
<input type="button" value="stop" onclick="stop_timer()"><br>
</body>
</html>