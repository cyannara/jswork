<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>innerHTMLTest.jsp</title>
<style>
	div{
		border: 1px blue solid;
		height: 50px;
	}
</style>
<script>
	var cnt=0;
	var correct=0;
	var wrong=0;
	//틀린횟수, 맞는횟수 
	function sum(){
		cnt++;
		num1=document.getElementById("num1").value;
		num2=document.getElementById("num2").value;
		result=document.getElementById("result").value;//Math.floor(Math.random() * 20);
		//num1+num2와 result가 같으면 "맞다" 출력아니면 "틀리다" 출력
		
				
		//div태그에 결과 출력
		if((parseInt(num1)+parseInt(num2))==parseInt(result)){
		document.getElementById("demo").innerHTML="맞다 총횟수:"+cnt;
		correct++;
		}
		else{
			document.getElementById("demo").innerHTML="틀리다 총횟수: "+cnt;
		wrong++;		
		}
		//숫자 랜덤 
		document.getElementById("num1").value=Math.floor(Math.random() * 10);
		document.getElementById("num2").value=Math.floor(Math.random() * 10);
		document.getElementById("result").value="";
		
		//cnt가 10회 이상이면 틀린수, 맞은 갯수를 출력하고 버튼을 비활성화
		if(cnt>=10){
		document.getElementById("demo").innerHTML="맞는 횟수 : "+correct+" 틀린 횟수: "+wrong+"<br> 게임 Over ";
		document.getElementById("btn").disabled="disabled";
		}	
	}	
	function gamestart(){
		//변수초기화(cnt, 틀린수, 맞는수)
		//div 태그 내용 삭제
		//num1 num2 난수
		cnt=0;
		correct=0;
		wrong=0;
		document.getElementById("num1").value=Math.floor(Math.random() * 10);
		document.getElementById("num2").value=Math.floor(Math.random() * 10);
		document.getElementById("demo").innerHTML="";
		document.getElementById("btn").disabled="";
	}
</script>
</head>
<body>
<input id="num1" value="10" />+<input id="num2" value="20" />=
<input id="result" value=""/>
<button type="button" onclick="sum()" id="btn" >결과 확인</button>
<button type="button" onclick="gamestart()" id="btn" >게임시작</button>
<div id="demo" ></div>

</body>
</html>