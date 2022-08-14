<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>timer_imageSliser.jsp</title>
<script>
var arrImage =  ["images/Chrysanthemum.jpg",     "images/Desert.jpg",
                 "images/Hydrangeas.jpg",        "images/Jellyfish.jpg",
                 "images/Koala.jpg",             "images/Lighthouse.jpg",
                 "images/Penguins.jpg",          "images/Tulips.jpg"]; 
                 
var pos = 0 ; // �̹��� ��ġ �ε���  
function init(){
	document.getElementById("slider").src= "./"+arrImage[0];
}
function moveNext(){
	//pos ����
	pos ++;
	// pos üũ  (�̹��� ũ�⺸�� ũ�ٸ� �ٽ� 0���� reset)
	if (pos >= arrImage.length )
		pos = arrImage.length-1;
	//�̹��� ����
	document.getElementById("slider").src= "../"+arrImage[pos];
}

function movePre(){
	//pos ����
	pos --;
	// pos üũ  (�̹��� ũ�⺸�� ũ�ٸ� �ٽ� 0���� reset)
	if (pos < 0 )
		pos = 0;
	//�̹��� ����
	document.getElementById("slider").src= "../"+arrImage[pos];
}
</script>
</head>
<body onload="init();">
<!-- imageSlider.jsp -->
�̹��� �����̴� <hr>
<img id="slider" src="" 
    style="width: 200px;height: 200px; position: relative; left: 100px;"><br>
<input type="button" value="��" onclick="moveNext()"/> 
<input type="button" value="��" onclick="movePre()"/>
</body>
</html>