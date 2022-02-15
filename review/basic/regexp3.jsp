<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>정규표현식</title>

<script>
//1. string 의 match 함수
a = "111-22a-3333";
console.log("match"+ a.match(/(\d{3}).*(\d{3}).*(\d{4})/) );  // null

//2. pattern의 test 함수 (많이 사용)
var patt = /(\d{3}).*(\d{3}).*(\d{4})/;
console.log(patt.test(a));    //true / false
if ( patt.test(a) )
	console.log("형식이 맞음");
else 
	console.log("전화번호 형식이 아닙니다.");

//날짜 체크
patt = /^\d{2,4}\-\d{1,2}\-\d{1,2}$/   // 날짜패턴
var today = "2016-10-12";
if ( patt.test(today) )
	console.log("날짜 형식이 맞음");
else 
	console.log("날짜 형식이 아닙니다.");
</script>
</head>
<body>

</body>
</html>