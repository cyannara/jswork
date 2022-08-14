<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>javascript_function.jsp</title>
</head>
<body>
	<h3> 합계 계산 </h3>
	<input type="text" name="num1" id="num1" onchange="chageHandler()"/>
	<div id="result"></div>
	
<script>
function chageHandler(){
	//num1  입력값으로 합계계산
	var num1 = document.getElementById("num1").value;
	var result = total(num1);
	
	//결과 출력
	document.getElementById("result").innerHTML = result;
}

function total(num1){
	//인수 값이 1보다 작다면 alert창  
	if(num1<1) {
		alert("1보다 크게");
		return "입력오류: 1보다 크게";
	}
	//인수값 까지의 합의 계산
	var result = 0;
	for(i=0; i<=num1; i++){
		result += i;
	}
	//결과 리턴
	return result;	
}

</script>
</body>
</html>