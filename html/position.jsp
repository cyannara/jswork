<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>position.jsp</title>
<style>
	div{ /* display: inline-block;  */
		 border: 1px solid blue;
		 width: 200px;
		 height: 200px;
		 margin-right: 20px;}
	#divb { background-color: yellowgreen; 
			position : fixed;
			bottom : 0px;
			right: 0px;}
	#divc { background-color: cyan; 
			position : absolute;
/* 			margin: auto; */
	 		left : 100px; 
			top: 100px;}				 
</style>
</head>
<body>
<div>a</div>
<div id="divb">b</div>
<div id="divc">c</div>
<div>d</div>
</body>
</html>