<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>javascript_intro</title>
<style>
	img { width: 200px; height: 200px; }
</style>
<script>
function div_change(){
	document.getElementById('div1').style.border='1px solid blue';  //스타일변경 
	document.getElementById('div1').   = "오늘 하루도 즐겁게!!!";       //내용변경
}

</script>
</head>
<body>
1.속성변경 <br>
<img src="./images/Chrysanthemum.jpg" id="img1" 
  onmouseover="document.getElementById('img1').src='./images/Desert.jpg'"
  onmouseout="document.getElementById('img1').src='./images/Chrysanthemum.jpg'">

<br>2.style 변경 <br>
<div id="div1" onclick="div_change()">내용변경전</div>
</body>
</html>