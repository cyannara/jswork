<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>changeStyle.jsp</title>
<style>
	img { position: relative;}
</style>
<script>
	function changeText() {
		 document.getElementById('desc').innerHTML='������ �����'; 
		 document.getElementById('desc').style.color='red';
		 document.getElementById('desc').style.fontSize='30px';
	}
</script>
</head>
<body>
<input type="button" value="�����"
       onclick=" document.getElementById('img1').style.display='none'; " />       
<input type="button" value="���̱�"
       onclick=" document.getElementById('img1').style.display='block'; " />    
<input type="button" value="�׸��ٲٱ�"  
	   onclick=" document.getElementById('img1').src='../images/Penguins.jpg';  " />  
<input type="button" value="�׸��̵�"  
	   onclick=" document.getElementById('img1').style.left='300px'; " /> 
<input type="button" value="�������" 
       onclick=" document.getElementById('desc').remove(); "  />
<input type="button" value="���뺯��" 
       onclick=" changeText();  " /> <br/>
            
<p id="desc">�׸�����...</p>	  

<img id="img1" src="../images/Koala.jpg" 
	width="200" height="200" />

</body>
</html>