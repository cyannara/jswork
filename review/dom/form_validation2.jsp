<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>폼필드 속성(체크,select..)</title>
<script>

</script>
<script>
function inputCheck() {
	//
	var userid = document.forms[0].userid.value;
	if(userid == "") {
		alert("아디 입력");
		return false;
	}
	
	var hobby = document.getElementsByName("hobby");
	var cnt = 0;
	
	for( i=0; i<hobby.length; i++) {	
		//갯수 카운터
		if( hobby[i].checked == true ) {
			cnt++;
		}
	}
	
	var hobbyChkLen = document.querySelectorAll("[name='hobby']:checked")
	                 .length;
	if(hobbyChkLen == 0) {
		alert("hobby 적어도 하나는 선택");
		return false;
	} 
}
</script>
</head>
<body>
<h3>회원가입(입력값체크)</h3>
<form action="form_action.jsp" onsubmit="return inputCheck()">
	userid: 
		<input type="text" name="userid"><br>
	관심항목:
		<input type="checkbox" name="hobby" value="jsp"> JSP
		<input type="checkbox" name="hobby" value="java" checked="checked"> JAVA
		<input type="checkbox" name="hobby" value="jquery"> JQUERY <br/>	
	성별:
		<input type="radio" name="sex" value="M" checked="checked"> 남자	
		<input type="radio" name="sex" value="F"> 여자   <br/>

	결혼여부:
		<input type="radio" name="wed" value="1" checked="checked"> 미혼	
		<input type="radio" name="wed" value="2"> 기혼   <br/>
		
		<input type="submit" value="등록">
		<input type="reset" value="초기화">
</form>
</body>
</html>