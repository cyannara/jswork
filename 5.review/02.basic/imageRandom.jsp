<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>이미지 슬라이더</title>
<script>
window.onload =  function () {
					var imgs = ['Chrysanthemum.jpg',
					            'Desert.jpg',
					            'Hydrangeas.jpg',
					            'Jellyfish.jpg',
					            'Koala.jpg'] 
					var i = Math.floor(Math.random() * 5);
					document.getElementById("mainImg").src = "../images/"+ imgs[i];
				}

function info() {
	var name = document.getElementById("mainImg").src;
	//경로제외하고 파일명만 추출  , lastIndexOf, substr
	name = name.substring(name.lastIndexOf("/")+1);
	window.alert(name) ;
}
</script>
</head>
<body>
<!--  image.jsp -->
<button onclick="info()">이미지정보조회</button>
<img src="../images/Chrysanthemum.jpg" 
     style="width:300px;height: 300px;"
     id="mainImg" 
     />
</body>
</html>