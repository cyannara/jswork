<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>regexp.jsp</title>
<script>
	function check() {
		var str = "";
		var pattern =  /^[0-9]{3}-[0-9]{3}$/g;      //  우편번호
		//str = pattern.test( document.getElementById("txt1").value );  //true or false
		//document.getElementById("result").innerHTML = str;
		
		//문자열 함수 match
		var txt1 = document.getElementById("txt1").value;
		str = txt1.match(pattern);
		document.getElementById("result").innerHTML 
		                               = (str == null) ? false :true ;
	}
</script>
</head>
<body>
정규표현식
<input type="text" id="txt1" onchange="check();" />
<div id="result"></div>

</body>
</html>