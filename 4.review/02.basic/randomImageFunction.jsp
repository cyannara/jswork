<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- randomImageFunction.jsp -->
�̹��� �������� ���<hr>
<img src="images/Desert.jpg" id="img1"/>
<script>
	//�������� �̹��� �̸��� �����ϴ� �Լ� ����
	function    imageChange() {
		//1. �̹��� �̸����� ��Ʈ�� �迭�� ����
		var arrImage =  ["images/Chrysanthemum.jpg",
		                 "images/Desert.jpg",
		                 "images/Hydrangeas.jpg",
		                 "images/Jellyfish.jpg",
		                 "images/Koala.jpg",
		                 "images/Lighthouse.jpg",
		                 "images/Penguins.jpg", 
		                 "images/Tulips.jpg"];   
		//2.�̹��� ���� �������� ���� ����� (0 ~ 7)
		var i = Math.floor(Math.random() * 8); 
		return arrImage[i];
	} 
	
	document.getElementById("img1").src =  imageChange();
</script>
</body>
</html>