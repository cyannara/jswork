<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>form_submit.jsp</title>
<script>
	//�Է°� üũ
	function inputCheck(){
		//userid �ʼ� �Է� üũ
		var userid = document.frm1.userid.value;
		if(userid == "" ) {
			alert("�Ƶ��� �Է�!");
			return false;
		}
		
		if( confirm("�����ұ��?"))
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
	  <input type="submit" value="���">
	</form>
</body>
</html>