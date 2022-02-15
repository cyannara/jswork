<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
function addOption(){
	$("#searchresults").append("<option>test</option>")
}
</script>
</head>
<body>
<button type="button" onclick="addOption()">추가</button>

	<input type="text" name="search" id="search" placeholder="Type Something" 
	       list="searchresults" autocomplete="off">
	<datalist id="searchresults">
	</datalist>
</body>
</html>