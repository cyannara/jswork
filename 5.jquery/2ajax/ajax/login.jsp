<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<title>load</title>
<script src="../scripts/jquery-3.1.1.min.js"></script>
<script>
$(function(){
	$("input[name=userid]").change(function(){
		//var param = "userid=" +  $("#userid").val() //$("input[name=userid]").val()
		var param = { userid : $("#userid").val() };
		$("#result").load("./server/idCheck.jsp", param , function(data, st, xhr){
			alert("완료" + data + "\n" + st + "\n" + xhr.status);
		});	
	});
	//focus   span 태그 내용 삭제
	
	
	//폼 submit 이벤트 추가
	$("#frm").submit(function(e){
		e.preventDefault();
		//var param = { userid: $("#userid").val() , userpw : $("#userpw").val() }
		var param = $("#frm").serialize();
		console.log(param);
		$.get( "./server/loginCheck.jsp" , param, function(data){ 
			//var result = $.parseJSON(data);
			alert(data.code);
		} , 'json' );
	});
});	
</script></head>
<body>
	<form name="frm" id="frm" >
		<input type="text" name="userid" id="userid">
		    <span id="result"></span><br/>
		<input type="text" name="userpw" id="userpw">
		<button id="btnLogin">로그인</button>
	</form>
</body>
</html>