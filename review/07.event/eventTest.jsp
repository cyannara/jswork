<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>eventTest.jsp</title>
<script>
	function chg_handler(){
		console.log("name1:" + event.target.value);   //event.target : 이벤트가 발생한 대상(태그)
		                                              //value 속성  : 텍스트 필드의 입력값
	}
	
	function focus_handler(){    //커서가 들어가면 : onfocus   커서가 빠져나오면 onblur
		event.target.select();
	}
	
	function check_handler(){
		if(frm.name2.value == "") {  //입력여부를 체크
			alert("name2는 필수입력입니다.");
			frm.name2.focus();   //커서를 이동
			return false;      // 폼 제출(전송) 안함
		}
		return true;    // 폼 제출함
	}
</script>
</head>
<body>
<form name="frm" onsubmit="return check_handler()">
	<input type="text" name="name1" 
	       onchange="chg_handler()"
	       onfocus="focus_handler()"/><br>
	<input type="text" name="name2"/><br>
	<input type="text" name="name3"/><br>
	<input type="text" name="name4"/><br>
	<input type="submit" value="등록"/><br>
</form>
</body>
</html>