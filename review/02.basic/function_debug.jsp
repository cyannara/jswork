<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>javascript_function.jsp</title>
</head>
<body>
	<h3> �հ� ��� </h3>
	<input type="text" name="num1" id="num1" onchange="chageHandler()"/>
	<div id="result"></div>
	
<script>
function chageHandler(){
	//num1  �Է°����� �հ���
	var num1 = document.getElementById("num1").value;
	var result = total(num1);
	
	//��� ���
	document.getElementById("result").innerHTML = result;
}

function total(num1){
	//�μ� ���� 1���� �۴ٸ� alertâ  
	if(num1<1) {
		alert("1���� ũ��");
		return "�Է¿���: 1���� ũ��";
	}
	//�μ��� ������ ���� ���
	var result = 0;
	for(i=0; i<=num1; i++){
		result += i;
	}
	//��� ����
	return result;	
}

</script>
</body>
</html>