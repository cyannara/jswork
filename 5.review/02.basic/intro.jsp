<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>javascript_intro</title>
<style>
	img { width: 200px; height: 200px; }
</style>
<script>
function div_change(){
	document.getElementById('div1').style.border='1px solid blue';  //��Ÿ�Ϻ��� 
	document.getElementById('div1').   = "���� �Ϸ絵 ��̰�!!!";       //���뺯��
}

</script>
</head>
<body>
1.�Ӽ����� <br>
<img src="./images/Chrysanthemum.jpg" id="img1" 
  onmouseover="document.getElementById('img1').src='./images/Desert.jpg'"
  onmouseout="document.getElementById('img1').src='./images/Chrysanthemum.jpg'">

<br>2.style ���� <br>
<div id="div1" onclick="div_change()">���뺯����</div>
</body>
</html>