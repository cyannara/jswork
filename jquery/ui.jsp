<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>jqueryUI.jsp</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function(){
		$("#acor").accordion( {    
			active: 2,
			animate: 200,
			collapsible: true,
			activate: function( event, ui ) {
				//console.log(ui.oldHeader.html());
				//console.log(ui.newHeader.html());
			}			
		} );		
		//$( "#acor" ).accordion( "refresh" );
		
		//datepicker
		$("#datepicker").datepicker({
			dateFormat: "yy-mm-dd",
			maxDate: "+7d",
			dayNamesMin : [ "일", "월", "화", "Mer", "Jeu", "Ven", "Sam" ],
			onSelect : function(dateText, dateObj ){
				console.log(dateObj);
				console.log(dateText);
			}
		});
		
		//dialog
		$( "#modal" ).dialog( {
			autoOpen: false,
			modal : true,
			buttons : { "수정" : function(){ alert("수정"); },
				        "저장" : function(){ alert("저장"); },
				        "닫기" : function(){ $( "#modal" ).dialog("close"); }
				      }
		});
		
		//버튼 클릭 이벤트
		$("#btnOpenModal").bind("click", function(){
			$( "#modal" ).dialog("open");
		});
		
	});  //end of ready event
</script>
</head>
<body>
<%=request.getServletContext().getRealPath("/") %>
<div id="modal" title="상세보기">
	광고 문구
</div>
<div id="acor">
	<h3>첫번째</h3>
	<div> 첫번째 글 </div>
	<h3>두번째</h3>
	<div> 두번째 글 </div>
	<h3>세번째</h3>
	<div> 세번째 글
		<button type="button" id="btnOpenModal">상세보기</button>
		<p>Date: <input type="text" id="datepicker"></p>
	 </div>	
</div>
</body>
</html>