<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- randomImageFunction.jsp -->
이미지 랜덤으로 출력<hr>
<img src="images/Desert.jpg" id="img1"/>
<script>
	//랜덤으로 이미지 이름을 리턴하는 함수 선언
	function    imageChange() {
		//1. 이미지 이름으로 스트링 배열을 선언
		var arrImage =  ["images/Chrysanthemum.jpg",
		                 "images/Desert.jpg",
		                 "images/Hydrangeas.jpg",
		                 "images/Jellyfish.jpg",
		                 "images/Koala.jpg",
		                 "images/Lighthouse.jpg",
		                 "images/Penguins.jpg", 
		                 "images/Tulips.jpg"];   
		//2.이미지 갯수 범위안의 난수 만들기 (0 ~ 7)
		var i = Math.floor(Math.random() * 8); 
		return arrImage[i];
	} 
	
	document.getElementById("img1").src =  imageChange();
</script>
</body>
</html>