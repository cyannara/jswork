<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<style>
	img { position: relative;
		  left : 0px;
		  top : 0px;
		 }
</style>
<script>
	//전역변수 선언
	var posLeft = 0;
	var posTop = 0;
	var direction = "right"; // 상:up 하:down 좌:left 우:right
	function carMove(d) {
		//방향이 지정되면 방향전환
		if( d != undefined) {
			direction = d;
		}
		// 방향에 따라서 좌표계산
		//up: top -,  down:top ,  left: left - ,  right: left +
		if(direction == "left")		   	posLeft -= 1;
		else if(direction == "right") 	posLeft += 1;
		else if(direction == "top")		posTop -= 1;
		else if(direction == "down")	posTop += 1;
		//자동차 이동
		document.getElementById("car").style.left = posLeft + "px";
		document.getElementById("car").style.top = posTop + "px";
	}	
	function init() {
		window.setInterval(carMove, 100);
	}
	function directionChange(e){
		console.log(e.keyCode);
	}
</script></head>
<body onload="init();" onkeydown="directionChange();">
<!--  carMove.jsp -->자동차 움직이기 <hr>
<img id="car" src="../images/Sportscar-car-icon-150x150.png">
<input type="button" value="◀" onclick="carMove('left')"/>
<input type="button" value="▶" onclick="carMove('right')"/>
</body>
</html>