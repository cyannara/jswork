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
			alert("�̸� �Է�!!");
			return;
		}
		
		if( confirm("�����ұ��?"))
			document.frm1.submit();   //�� ����(����)
	}
</script>
</head>
<body>
<form id="frm1" name="frm1" action="form_action.jsp">
		userid: <input type="text" name="userid"><br>
	  	username: <input type="text" name="username"><br>
  <input type="button"   value="���"  onclick="inputCheck()">
</form>
</body>
</html>