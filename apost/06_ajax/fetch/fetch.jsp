<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>fetch</h3>
<pre>
프로미스 기반의 ajax 기술을 더 간편하게 사용할 수 있도록 구현한 기술
- 프로미스 래퍼(재포장)
- fetch 메서드는 프로미스 인스턴스를 반환
  xhr 사용과정은 동일하고 응답에 대한 처리과정을 프로미스가 담당
- 프로미스와 마찬가지로 IE에서 지원안됨
   if(window.fetch) {
   }
</pre>  
<div id="result"></div>
<script src="fetch.js"></script>
 
</body>
</html>