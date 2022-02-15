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
		 document.getElementById('desc').innerHTML='내용이 변경됨'; 
		 document.getElementById('desc').style.color='red';
		 document.getElementById('desc').style.fontSize='30px';
	}
</script>
</head>
<body>
<input type="button" value="숨기기"
       onclick=" document.getElementById('img1').style.display='none'; " />       
<input type="button" value="보이기"
       onclick=" document.getElementById('img1').style.display='block'; " />    
<input type="button" value="그림바꾸기"  
	   onclick=" document.getElementById('img1').src='../images/Penguins.jpg';  " />  
<input type="button" value="그림이동"  
	   onclick=" document.getElementById('img1').style.left='300px'; " /> 
<input type="button" value="설명삭제" 
       onclick=" document.getElementById('desc').remove(); "  />
<input type="button" value="내용변경" 
       onclick=" changeText();  " /> <br/>
            
<p id="desc">그림설명...</p>	  

<img id="img1" src="../images/Koala.jpg" 
	width="200" height="200" />

</body>
</html>