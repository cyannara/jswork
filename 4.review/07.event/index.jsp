<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
//�̹��� ũ�⺯��
function sizeChange(){
	document.getElementById("img1").style.width = "500px";
	document.getElementById("img1").style.height = "500px";
	document.getElementById("img1").style.border = "5px dotted red";
}
</script>
</head>
<body>
<div id="content">���̳� Ȩ������...</div>
<input type="button" value="���뺯��" 
 onclick='document.getElementById("content").innerHTML = "Hello JavaScript";' />
<img id="img1" src="images/Chrysanthemum.jpg" 
     style="width:200px;height:200px; display:  " >
<input type="button" value="ũ�⺯��"  onclick='sizeChange()' />

<input type="button" value="�����" 
 onclick='document.getElementById("img1").style.display = "none";' />
<input type="button" value="���̱�" 
 onclick='document.getElementById("img1").style.display = "";' />

</body>
</html>





