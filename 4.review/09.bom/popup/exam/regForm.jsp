<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>windowTest.jsp</title>
<script>
	
	function addr_open() {
		window.open("popup_addr.jsp","addr", "width=300,height=400,left=200,top=100");
	}

	function userid_open(){
		window.open("popup_userid.jsp","idCheck", "width=200,height=200,left=200,top=100");
	}
	
</script>
</head>
<body>
<form name="frm">

	아디:<input type="text" name="addr" id="addr">
	<input type="button" value="아디중복체크"	 onclick="userid_open();">


	주소:<input type="text" name="userid" id="userid">
	<input type="button" value="주소검색"	 onclick="addr_open();">

</form>
</body>
</html>