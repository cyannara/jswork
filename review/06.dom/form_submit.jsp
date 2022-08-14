<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>form_submit.jsp</title>
<script>
	//입력값 체크
	function inputCheck(){
		//userid 필수 입력 체크
		var userid = document.frm1.userid.value;
		if(userid == "" ) {
			alert("아디을 입력!");
			return false;
		}
		
		if( confirm("제출할까요?"))
			return true;
		else
			return false;
	}
</script>
</head>
<body>
	<form id="frm1" name="frm1" action="form_action.jsp" onsubmit="return inputCheck()">
		userid: <input type="text" name="userid"><br>
	  	username: <input type="text" name="username"><br>
	  <input type="submit" value="등록">
	</form>
</body>
</html>