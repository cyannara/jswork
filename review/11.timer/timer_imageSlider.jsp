<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
var arrImage =  ["images/Chrysanthemum.jpg",     "images/Desert.jpg",
                 "images/Hydrangeas.jpg",        "images/Jellyfish.jpg",
                 "images/Koala.jpg",             "images/Lighthouse.jpg",
                 "images/Penguins.jpg",          "images/Tulips.jpg"]; 

var pos = 0 ; // �̹��� ��ġ �ε���  

var img_timer;

function init() {
	document.getElementById("slider").src= "../"+arrImage[pos];
	// ü���� �Լ� Ÿ�̸� ����
	img_timer = window.setInterval(imgChange, 2000);
}

// pos �����ؼ� �̹����� ü�����ϴ� �Լ�
function imgChange() {
	//�̹��� ���ʴ�� ���(pos ����)
	pos = (pos+1) % arrImage.length;  	//Ÿ�̸� ���ට���� �ε��� ����

	//�̹��� �������� ���
	//var pos = Math.floor(Math.random() * arrImage.length);  
	
	//�̹��� ����
	document.getElementById("slider").src= "../"+arrImage[pos];
}

function stop_timer(){
	window.clearInterval(img_timer);  // Ÿ�̸� ����
}
</script>
</head>
<body onload="init();">
<!-- imageSlider.jsp -->
<h3>�̹��� �����̴� </h3>
<img id="slider" src="" style="width: 200px;height: 200px; position: relative; left: 100px;"><br>
<input type="button" value="��" /> 
<input type="button" value="��" />
<input type="button" value="stop" onclick="stop_timer()"><br>
</body>
</html>