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
		alert("�̸� �Է�");
		return false;
	}
	//select (drop down list)
	var job = document.frm.job.selectedIndex;  //������ �ɼ� ��ȣ
	if(job < 1) {
		alert("���� ����");
		return false;
	}
	
	//checkbox(���� ����)  ��� �ϳ� �̻� ����
	var hobbys = document.getElementsByName("hobby");  //name �迭
	var cnt = 0 ;
	for(i=0; i< hobbys.length; i++) {
		if( hobbys[i].checked == true ) {
			cnt++;
		}
	}
	if( cnt < 1) {
		alert("��̴� �ϳ� �̻� ����");
		return false;
	}
	
	return true;
}
</script>
</head>
<body>
	<!-- form, input (id, pw, name)
       ����(select), ���Ե���(textarea), ���ϼ��ſ���(checkbox) ����(radio) ���(checkbox)-->
	<h2>HTML Forms</h2>

	<form name="frm" action="member_reg_action.jsp" onsubmit="return inputCheck()">
		id:<br> <input type="text" name="id" value="chichi" readonly="readonly">
	
		<br>pw:<br> <input type="text" name="pw" value="1234" disabled="disabled" >
		
		<br>name:<br> <input type="text" name="username" id="username"
		             tabindex="1" maxlength="5" autofocus="autofocus"> <br>
		����:<br> <select name="job" tabindex="3">
			<option value="" selected="selected">-����-</option>
			<option value="volvo">Volvo</option>
			<option value="saab">Saab</option>
			<option value="fiat">Fiat</option>
			<option value="audi">Audi</option>
		</select>
		<br>���Ե���:<br>
		<textarea name="message" rows="5" cols="30" tabindex="2"></textarea>
		<br>
		<br>�������� <input type="date" name="gdate"/><br>
		�̸���: <input type="email" name="email"/>
		<br>���ϼ��ſ���:  <input type="checkbox"/> <br><br>
		<br>����:<br> <input type="radio" name="gender" value="male"
			checked> Male<br> <input type="radio" name="gender"
			value="female"> Female<br> <br>
		<br>���� : <input type="range" min="20" max="40" name="age"/><br><br>
		
		��� : 	<input type="checkbox" name="hobby" value="ski" checked="checked"/>��Ű
				<input type="checkbox" name="hobby" value="game"/>����
				<input type="checkbox" name="hobby" value="read"/>���� <br>
			
		<button type="submit">ȸ������</button>
		<button type="reset">�ʱ�ȭ</button> 
	</form>
</body>
</html>