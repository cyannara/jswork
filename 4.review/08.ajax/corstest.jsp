<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>jquery.jsp</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script>
$(function(){	
	$.get("http://localhost:5000",function(data){
		alert(data);
	})
});



</script>
</head>
<body>
<button type="button" id="btn1">내용변경</button>
<div id="result"></div>

</body>
</html>