<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>
<!-- input.jsp -->
text object 속성 <hr>
<form name="regForm" action="">
    <input type="hidden" name="usergbn" value="admin"/>
	이름<input type="text" name="username" 
		autofocus="autofocus"
		readonly="readonly"
		value="홍길동"><br>
	아디<input type="text" name="userid"><br>
	<input type="text" name="addr" placeholder="주소입력"/>     
	 <input type="submit" />      
</form>
<script>
		//window.documnet.regForm.userid.disabled = true;
		document.regForm.userid.value = "gildong";
		document.forms[0].userid.maxLength = 5;
		document.forms[0]["userid"].size = 40;
		//document.forms["regForm"]["userid"].size = 40;
</script>
<form name="updForm" action="">

</form>
</body>
</html>