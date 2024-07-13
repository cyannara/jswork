<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>jquery.jsp</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
<script>
$(function(){	
/* 	var $btn = $("#btn1");
	$("#btn1").on("click", function(){
		$("#result").html("jquery 변경")
	}); 
*/	 
	var btn = document.getElementById("btn1");
	btn.addEventListener("click", function(){
		var result = document.getElementById("result");
		result.innerHTML = "dom 변경됨!!!";
	})	
	
	//dom 객체
	var dom = document.getElementById("btn1");
	dom.style.backgroundColor = 'red'

	//jquery 객체
	var $btn = $("#btn1");
	$btn.css("backgroundColor","blue")

	//dom => jquery   : $()로 감쌈
	$(dom).css("backgroundColor","cyan")

	//jquery => dom   : get(0) 함수
	$btn.get(0).style.backgroundColor = 'yellow'
});



</script>
</head>
<body>
<button type="button" id="btn1">내용변경</button>
<div id="result"></div>

</body>
</html>