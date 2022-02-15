<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>debugTest.jsp</title>
<script>
var yn = localStorage.getItem("popyn");
if(yn != 'no') {
	alert('popup');
}
function sum() {
	var a= 10;
	var b= 10;
	var c = subSum(a,b);
	console.log(c);
}
function subSum(x,y){
	return x+y;
}
function checkPopup(){
	localStorage.setItem("popyn","no");
}
</script>
</head>
<body>
디버그 테스트
<button type="button" onclick="sum()">합계</button>
<button type="button" onclick="checkPopup()">오늘은 이창열지않기</button>
</body>
</html>