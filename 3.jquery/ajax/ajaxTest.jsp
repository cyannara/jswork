<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>ajaxTest.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	//버튼 이벤트
	$(function(){
		$("#btnSearch").bind("click", searchEmp);
		
	});
	function searchEmp(){
		//사번으로 사원정보 검색
		$.ajax({ url : "../server/findName.jsp", 
			     data: { id : $("#empNo").val() },
			     dataType : "json",
			     async : false,
			     method : get  //post
			  })
		 .done(function(datas){
			 	//var JSON.parse(datas)
			 	$("#result").html(datas.first_name +" " + datas.last_name);
		      })
		 .fail(function(xhr,status){
				$("#result").html(status);
				console.dir(xhr);
		      })
		 .always(function(){
			 	console.dir("처리완료");
		      });
	}
</script>
</head>
<body>
<input id="empNo"><button type="button" id="btnSearch">검색</button>
<div id="result"></div>
</body>
</html>