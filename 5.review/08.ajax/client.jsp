<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>client.jsp</title>
<script>
function dupCheck() {
	//1. xhr 객체 생성
	  var xhttp = new XMLHttpRequest();
	//2. 콜백 함수 
	  xhttp.onreadystatechange = function() {
		console.log(this.readyState);
	    if (this.readyState == 4) {  //요청완료
	    	if(this.status == 200) { //실행 OK
		      console.log("ajax 요청 완료");   //1
		      document.getElementById("result").innerHTML = this.responseText;
	    	} else {
	    	  document.getElementById("result").innerHTML = this.status;
	    	}
	    } else {
	      document.getElementById("result").innerHTML = "로딩중";
	    }
	  };
	 //3. 요청 준비 
	 var param = "id=" + document.getElementById("id").value
	  xhttp.open("POST", "../server/idCheck1.jsp?");
	 //4. 요청시작
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send(param);  // 동기식이면 send함수가 실행완료되면 다음 명령 실행
	  console.log("ajax 요청 처리");  //2
}
</script>
</head>
<body>
<form>
	id<input id="id" name="id" onchange="dupCheck()">
	  <span id="result"></span><br>
	pw<input id="id" name="pw">
	
</form>

</body>
</html>