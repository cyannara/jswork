<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imgSize.jsp</title>
<style>
  #goodsImg {  width: 200px; }
</style>
<script>
	window.onload = function(){
		goodsImg.style.width ="100px";
	}
	function imgSize(){
		//이미지 크기를 400px 변경
		
	}
	function imgChange(){
		//이미지 src 속성 변경
	}	
	function imgSizeUp(){
		var w = goodsImg.style.width;   
		//100증가 
		goodsImg.style.width = ( parseInt(w) + 100) + "px";
	}
	
	window.setInterval(imgSizeUp, 3000);
</script>
</head>
<body>
<button onclick="imgSizeUp()">점점크게</button>
<button onclick="imgChange()">그림변경</button>
<button onclick="imgSize()">크기변경</button>
<img src="../images/Chrysanthemum.jpg" id="goodsImg">
</body>
</html>