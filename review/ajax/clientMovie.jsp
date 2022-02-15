<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>clientMovie.jsp</title>
</head>
<body>
날짜 <input id="searchDay">
<h3>xml 영화 순위</h3>
<button type="button" onclick="getMovieXML()">xml조회</button>
<table id=""></table>

<h3>json 영화 순위</h3>
<button type="button" onclick="getMovieJSON()">json조회</button>
<div></div>
</body>
</html>