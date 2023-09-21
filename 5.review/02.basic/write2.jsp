<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
write test
<hr>
<script type="text/javascript">
document.write("출력테스트");
for(i=0;  i<10; i++  ) {
	document.write(i + "<br>") ;
}
</script>

<table border="1">

		<script>
		for(i=0;  i<10; i++  ) {
			//tr
			for(i=0;  i<10; i++  ) {
				document.write("<td>" + i + "</td>") ;
			}
		}
		</script>

</table>


</body>
</html>