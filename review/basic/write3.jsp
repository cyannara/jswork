<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>writeÇÔ¼ö</title>
<script>
	for(i=1; i<=10; i++) {
		document.write(i+"<br/>");
	}	
</script>
</head>
<body>
<!-- write.jsp -->
<script>
	document.write("<table border='1'>");
	for(i=1; i<=10; i++) {
		document.write("<tr><td>"+i+"</td></tr>");
	}
	document.write("</table>");
</script>	
</body>
</html>