<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head><title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$( function(){  
	$("#btn").click(function(){   		
		$("img").width("200");	
	});
});


	
</script>
</head>
<body>
<button id="btn">그림크기변경</button><br>
<img src="../img/Chrysanthemum.jpg">
<img src="../img/Hydrangeas.jpg">
<img src="../img/Jellyfish.jpg">

</body>
</html>