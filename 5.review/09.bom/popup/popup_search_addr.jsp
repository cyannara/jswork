<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head><title>windowTest.jsp</title>
<script>
	var addr_win;
	function addr_open() {
		addr_win = window.open("addrSerarch.jsp","addr",
				  "width=300,height=400,left=200,top=100");
	}
	function addr_close(){
		addr_win.close();
		//addr_win.moveTo(500,300);  //  left, top
		//addr_win.resizeTo(200,300);  //  width, height
	}
</script>
</head>
<body>
<!-- window.document.frm.addr.value -->
<form name="frm">
	<input type="text" name="addr" id="addr">
	<input type="button" value="주소검색"
	 onclick="addr_open();">
	<input type="button" value="주소창닫기"
	 onclick="addr_close();"> 
</form>
</body>
</html>