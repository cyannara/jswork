<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>dept.jsp</title>
<script src="../scripts/jquery-3.2.1.min.js"></script>
<script>
$(function(){
	var page = 0;	
	
	function loadDept() {	
		var param = {page : ++page };
		$.get("../DeptListJsonServ.do", param, function(data,status){
			if(status =="success" ) {
				var datas = data.rows;
				for(i=0; i<datas.length; i++) {
					var div = "<div id='"+datas[i].departmentId+"'>" + 
						      "<span>" +datas[i].departmentId +"</span>" +
						      "<span>" +datas[i].departmentName +"</span>" +
						      "<button type='button' class='delbtn'>삭제</button>" +
						      "</div>"
					$(div).appendTo("#result");	      
				}
			} else {
				alert(status);
			}
		},'json')	 
	}		
	//삭제 버튼 
	$("#result").on('click','',function(){
		var param = { "oper": "del", "departament_id" : ______  };  //부모태그의 id속성
		$.get("../DeptDMLServ.do", param, function(data,status){
			if(status =="success" ) {
				if( data.length == 1) {   
					//해당 id의 div 삭제 (remove)
				}
			} else {
				alert(status);
			}
		},'json')	
	});
	
	//페이지 로딩후에 목록 조회
	loadDept();	
	//more 버튼
	$("#more").click(function(){
		loadDept();
	})
	//등록버튼
	$("#btnIns").click(function(){
		// 파라미터 -> 쿼리문자열 만들기
		var params = $("#insFrm").serialize();  //폼 필드 값들을 쿼리문자열로 변경
		console.log(params);
		// 등록 ajax 요청
		$.get("../DeptInsertServ.do", params, function(data,status){
			var jData = eval("(" + data +")");  //json으로 변환
			if(status == "success") {
				if( jData.length == 1) {
					alert("등록완료");
					var div =  "<div id='"+jData[0].departmentId+"'>" + 
				      "<span>" +jData[0].departmentId +"</span>" +
				      "<span>" + jData[0].departmentName +"</span>" +
				      "</div>"
					$(div).prependTo("#deptList");
				} else {
					alert("등록에러");
				}
			} 
		});
		return false;    //event.preventDefault()
	});
});
</script>
</head>
<body>
<form id="insFrm" name="insFrm">
	<input type="hidden" name="oper" value="add"/>
	부서명<input type="text" name="departmentName"/><br/>
	지역코드<input type="text" name="locationId"/><br/>
	메니저<input type="text" name="managerId"/><br/>
	<input type="button" id="btnIns" value="등록"/>
</form>

<div id="result"></div>
<button type="button" id="more">more</button>
</body>
</html>