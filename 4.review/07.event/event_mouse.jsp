<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {width: 200px;}
</style>
<script>
	function mouseOutHandler(){
		document.getElementById('img1').src="./Images/Chrysanthemum.jpg";
	}
	function mouseOverHandler(){
		document.getElementById('img1').src="./Images/Desert.jpg";
	}
</script>
</head>
<body>
<img id="img1" src="./Images/Chrysanthemum.jpg" 
	onmouseover="mouseOverHandler();"
	onmouseout="mouseOutHandler();"
	>
</body>
</html>