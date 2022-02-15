<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>datatype.jsp</title>
<script>
	//문자열 자르기
	var url = "http://localhost/js/dom/search.jsp"
	var pageName = url.substring(url.lastIndexOf("/")+1); //lastIndexOf, substring함수 이용
	console.log(pageName)  //search.jsp  출력되도록

	var id = "801201-1234567";
	var sex = ____________; //substr
	console.log( sex );
	console.log( sex == '1' ? '남' : '여' );
	//월만 추출
	console.log( "출생월:" +  _______________ );
	
	//replace
	
</script>
</head>
<body>
<h3>자바스크립 데이타타입 연습</h3>
</body>
</html>