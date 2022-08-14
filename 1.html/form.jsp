<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	label {display: inline-block; width: 100px;}
	body { font-size: 10px;	}
	input, select, textarea, label { font-size: 2em; }
	input:hover {  background-color: yellowgreen;   }
	input[name='pw'] {  background-color: red;    }
</style>
<script>
function inputCheck(){
	//document.getElementById("id")
	//document.forms["frm"]
	//id, pw 필수입력 체크
	if(frm.id.value == "") {
		window.alert("id 입력");
		frm.id.focus();
		return;
	}
	if(frm.pw.value == "") {
		alert("pw 입력");
		frm.pw.focus();
		return;
	}	
	//job(select 태그) 선택되었는지 확인
	if(frm.job.selectedIndex > 0) {
		alert("job 선택");
		frm.job.focus();
		return;
	}	
	//radio, checkbox
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
	<form method="post" name="frm" id="frm">
		<div>
			<label for="id">id</label><input name="id" id="id">
		</div>
		<div>
			<label for="pw">pw</label><input id="pw" name="pw">
		</div>
		<div>
			<label for="role">role</label> <input type="radio" name="role">Admin
			<input type="radio" name="role">User
		</div>
		<div>
			<label for="id">id</label> <select name="job" id="job">
				<option value="">선택</option>
				<option value="program">프로그래머</option>
				<option value="degin">디자이너</option>
			</select>
		</div>
		<div>
			<label for="reason">reason</label>
			<textarea id="reason" name="reason"></textarea>
		</div>
		<div>
			<label for="hobby">hobby</label> <input type="checkbox" name="hobby">등산
			<input type="checkbox" name="hobby">수영 <input type="checkbox"
				name="hobby">게임
		</div>
		<div>
			<label for="addr">addr</label> <input name="addr" id="addr">
			<button type="button">검색</button>
		</div>
		<div>
			<button type="reset">초기화</button>
			<button type="button" onclick="inputCheck()">등록</button>
		</div>
	</form>

</body>
</html>