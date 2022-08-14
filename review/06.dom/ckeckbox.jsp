<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>ckeckbox.jsp</title>
<script>
	function regCheck() {
		//체크박스 체크된 갯수 확인
		var cnt = 0;
		var checkbox = document.getElementsByName("hobby");
		for(i=0; i<checkbox.length;i++) {
			if (checkbox[i].checked == true) {
				cnt ++;
			}
		}
		if(cnt == 0) {
			alert("적어도 하나는 선택");
			return false;
		} else {
			return true;
		}
	}
</script>
</head>
<body>
<form onsubmit="return regCheck();">
	<input type="checkbox" name="hobby">스키
	<input type="checkbox" name="hobby">독서
	<input type="checkbox" name="hobby">영화
	<input type="checkbox" name="hobby">게임
	<button>등록</button>
</form>
</body>
</html>