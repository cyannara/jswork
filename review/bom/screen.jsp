<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>screen.jsp</title>

</head>
<body>
<h3>해상도와 브라우저 </h3>

<input type="button" value="이전페이지로" onclick="history.go(-1)"/>   
       
<script>
	// 모니터 해상도
	document.write("<br>");
	document.write("해상도: " + screen.width + " "
			                  + screen.height +"<br>") 
	// 창크기
	document.write("창크기: " + window.innerWidth + " "
			                  + window.innerHeight +"<br>")
			                  
	//location : url 주소 확인 또는 변경
	document.write("로케이션 href="     + window.location.href + "<br>" );
	document.write("로케이션 hostname=" + location.hostname + "<br>" );
	document.write("로케이션 pathname=" + location.pathname + "<br>" );  //    /javascript_review/bom/screen.jsp
	// lastindexof, substring 이용하여 페이지명만 추출하기   ---> 결과 : screen.jsp
	
	//브라우저 정보
	document.write("브라우저 appName= " + navigator.appName + "<br>" );
	document.write("브라우저 platform= " + navigator.platform + "<br>" );
	document.write("브라우저 appCodeName= " + navigator.appCodeName + "<br>" );
	document.write("브라우저 userAgent= " + navigator.userAgent + "<br>" );
</script> 
     
</body>
</html>




