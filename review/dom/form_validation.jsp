<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form.html</title>
<script>
function inputCheck(){
	//var username = document.frm.username.value;
	//var username = document.getElementById("username").value;
	var username = document.forms[0].username.value;
	if(username == "") {
		alert("이름 입력");
		return false;
	}
	//select (drop down list)
	var job = document.frm.job.selectedIndex;  //선택한 옵션 번호
	if(job < 1) {
		alert("직업 선택");
		return false;
	}
	
	//checkbox(선택 갯수)  적어도 하나 이상 선택
	var hobbys = document.getElementsByName("hobby");  //name 배열
	var cnt = 0 ;
	for(i=0; i< hobbys.length; i++) {
		if( hobbys[i].checked == true ) {
			cnt++;
		}
	}
	if( cnt < 1) {
		alert("취미는 하나 이상 선택");
		return false;
	}
	
	return true;
}
</script>
</head>
<body>
	<!-- form, input (id, pw, name)
       직업(select), 가입동기(textarea), 메일수신여부(checkbox) 성별(radio) 취미(checkbox)-->
	<h2>HTML Forms</h2>

	<form name="frm" action="member_reg_action.jsp" onsubmit="return inputCheck()">
		id:<br> <input type="text" name="id" value="chichi" readonly="readonly">
	
		<br>pw:<br> <input type="text" name="pw" value="1234" disabled="disabled" >
		
		<br>name:<br> <input type="text" name="username" id="username"
		             tabindex="1" maxlength="5" autofocus="autofocus"> <br>
		직업:<br> <select name="job" tabindex="3">
			<option value="" selected="selected">-선택-</option>
			<option value="volvo">Volvo</option>
			<option value="saab">Saab</option>
			<option value="fiat">Fiat</option>
			<option value="audi">Audi</option>
		</select>
		<br>가입동기:<br>
		<textarea name="message" rows="5" cols="30" tabindex="2"></textarea>
		<br>
		<br>졸업일자 <input type="date" name="gdate"/><br>
		이메일: <input type="email" name="email"/>
		<br>메일수신여부:  <input type="checkbox"/> <br><br>
		<br>성별:<br> <input type="radio" name="gender" value="male"
			checked> Male<br> <input type="radio" name="gender"
			value="female"> Female<br> <br>
		<br>나이 : <input type="range" min="20" max="40" name="age"/><br><br>
		
		취미 : 	<input type="checkbox" name="hobby" value="ski" checked="checked"/>스키
				<input type="checkbox" name="hobby" value="game"/>게임
				<input type="checkbox" name="hobby" value="read"/>독서 <br>
			
		<button type="submit">회원가입</button>
		<button type="reset">초기화</button> 
	</form>
</body>
</html>