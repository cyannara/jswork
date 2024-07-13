<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arraycopy.jsp</title>
<script>
	let arr = ["바나나","사과","포도","바나나"];
	let arr2 = [];
	//arr --> arr2  이동
	var length = arr.length;
	for(i=0; i<length; i++) {
		let temp = arr.shift();
		arr2[temp] = temp;  
	}
	
	document.write("arr: " + arr  +"<br>");
	for(i in arr2) {
		document.write(i + " : " + arr2[i] + "<br>");
	}
</script>
</head>
<body>

</body>
</html>