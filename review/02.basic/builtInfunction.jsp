<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>builtInfunction.jsp</title>
<script>
	//1.String  객체
	var a="사과,바나나,키위";
	
	//  String -> Array  (split)
	var arr = a.split(",");
	document.write("내가좋아하는 과일은 "+arr[1]);
	
	// array -> String  (join)
	a = arr.join("-");
	document.write("<hr/>"+a);
</script>

</head>
<body>

</body>
</html>