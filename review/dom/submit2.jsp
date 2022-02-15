<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script>
function myFunction() {
	if( confirm("제출할까요?"))
		return true;
	else
		return false;
}
</script>
</head>
<body>
<!--  submit2.jsp -->
<form id="frm1" name="frm1" action="form_action.jsp" onsubmit="return myFunction()">
  First name: <input type="text" name="fname"><br>
  Last name: <input type="text" name="lname"><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>