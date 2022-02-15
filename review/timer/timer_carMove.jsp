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
	//�������� ����
	var posLeft = 0;
	var posTop = 0;
	var direction = "right"; // ��:up ��:down ��:left ��:right
	function carMove(d) {
		//������ �����Ǹ� ������ȯ
		if( d != undefined) {
			direction = d;
		}
		// ���⿡ ���� ��ǥ���
		//up: top -,  down:top ,  left: left - ,  right: left +
		if(direction == "left")		   	posLeft -= 1;
		else if(direction == "right") 	posLeft += 1;
		else if(direction == "top")		posTop -= 1;
		else if(direction == "down")	posTop += 1;
		//�ڵ��� �̵�
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
<!--  carMove.jsp -->�ڵ��� �����̱� <hr>
<img id="car" src="../images/Sportscar-car-icon-150x150.png">
<input type="button" value="��" onclick="carMove('left')"/>
<input type="button" value="��" onclick="carMove('right')"/>
</body>
</html>