<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
<script>
function blurHandler(){
	document.getElementById("username").style.backgroundColor = "gray";
}
function focusHandler(){
	document.getElementById("username").style.backgroundColor = "white";
	document.getElementById("username").select();
}
function changeHandler(){
	var text = document.getElementById("addr").value;
	alert(text);
}
function selectHandler(){
	var text = document.getElementById("addr").value;
	console.log("select:" + text);
}
function init(){
	document.getElementById("username").focus();
}
function submitHandler(){
	//입력값 체크
	var username = document.getElementById("username").value;
	if( username == "") {
		alert("이름을 입력");
		document.getElementById("username").focus();
		return false;
	}
	var res = confirm("제출할까요?");
	if ( res ==  true ) {
		return true;
	} else {
		return false;
	}
}
</script></head>
<body onload="init();">
<!-- formEvent.jsp -->
폼이벤트 테스트 <hr>
<form onsubmit="return submitHandler();" action="event.jsp">
	이름:<input type="text" id="username" name="username"
	      onblur="blurHandler()"   onfocus="focusHandler()" tabindex="1"
	      /><br>
	주소:<input type="text" id="addr" name="addr" 
	      onchange="changeHandler()"  onselect="selectHandler()"
	      tabindex="2" />
	     <input type="button" value="주소검색" tabindex="4"/><br>
	     <input type="submit" value="가입" tabindex="3"/>      
</form>
</body>
</html>