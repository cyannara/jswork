<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>keyEvent.jsp</title>
<script>
window.onload = function(){
  //document.getElementById("userid").addEventListener("keydown", keydownHandler);
	window.addEventListener("keydown", keydownHandler);
}
function keydownHandler(){
/* 	console.log( event.keyCode );
	console.log( event.ctrlKey );
	console.log( event.altKey );
	console.log( event ); */

	var img  = document.getElementsByTagName("img")[0];
	if (event.keyCode  == 37 ) {  //왼쪽
		img.style.left = (parseInt(img.style.left)-50)+"px"
	} else if (event.keyCode  == 38 ) {  //위
			
	}
}
</script>
</head>
<body>
<h3>키보드 이벤트</h3>
<input name="userid" id="userid"/>
<img src="../images/Chrysanthemum.jpg" 
     style="width: 50px;position: absolute; left:400px;top:0px;"/>
</body>
</html>

