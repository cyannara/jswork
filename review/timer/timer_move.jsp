<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>timer_move.jsp</title>
<script>
	function init(){
		setInterval(img_move, 1000);
	}
	
	function img_move(){
		var left = document.getElementById("img1").style.left;  // 현재 left 확인 
		document.getElementById("img1").style.left = (parseInt(left) + 50) +"px" ;
	}

</script>
</head>
<body onload="init()">
<img id="img1" src="../images/Koala.jpg" style="left:0px; width:50px; position:relative;"/>
</body>
</html>







