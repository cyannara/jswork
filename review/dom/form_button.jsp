<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>form_button.jsp</title>
<script>
	function inputCheck(){
		var userid = document.frm1.userid.value;
		
		if(userid == "") {
			alert("이름 입력!!");
			return;
		}
		
		if( confirm("제출할까요?"))
			document.frm1.submit();   //폼 전송(제출)
	}
</script>
</head>
<body>
<form id="frm1" name="frm1" action="form_action.jsp">
		userid: <input type="text" name="userid"><br>
	  	username: <input type="text" name="username"><br>
  <input type="button"   value="등록"  onclick="inputCheck()">
</form>
</body>
</html>