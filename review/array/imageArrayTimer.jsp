<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html><html><head>
<title>imageArray.jsp</title>
<style>
	img { width: 300px; height: 300px;}
</style>
<script>
//������������
var timer1;   // imageTimer     //�Լ��ۿ������ϸ� ����Լ��������� ����
var timer2;   // �ؽ�Ʈ�ð� Ÿ�̸�

window.onload = function() {
	timer1 = window.setInterval(imageChange, 2000);
	timer2 = window.setInterval(timeChange, 1000);
}

//�ð���� �Լ�
function stopTimer() {
	window.clearInterval(timer2);
}
	
function imageChange() {
	var images = ["../images/Desert.jpg",
				  "../images/Hydrangeas.jpg",
				  "../images/Jellyfish.jpg",
				  "../images/Koala.jpg",
				  "../images/Lighthouse.jpg"
				  ];
	//�̹��� �������� ���
	//Random ��ü �̿��Ͽ� 0~4 ������ ������ ���� ����
	var num = Math.floor(Math.random() * 5);  
	//�̹��� �ҽ� �Ӽ� ����
	document.getElementById("img1").src  = images[num];
}
</script>	
</head>
<body>
<p id="demo"></p>  
<input type="button" value="�ð�����" onclick="stopTimer()"/><br/>
<img src="../images/Desert.jpg" id="img1"/>
</body>
</html>