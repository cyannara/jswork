<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="resources/json.min.js"></script>
<title>userList.jsp</title>
<script>
$(function(){
	userList();     //페이지로 로드 후에 목록 조회
	userSelect();   //조회버튼 이벤트 지정
	userDelete();   //삭제버튼 이벤트 지정
	userInsert();   //등록버튼 이벤트 지정
});	

//등록버튼 이벤트 지정
function userInsert(){
	$("#btnInsert").on("click", function(){
		$.ajax({
			url : "users",
			method : "post",
			data : JSON.stringify( $("#form1").serializeObject() ),   //JSON.stringify( {id: id, name:name, password : password, role :role} ),  //"id=aaaa&password=111&"
			contentType : "application/json",
			dataType : "json",
			success :function(data){
				userList();
			}
		});
	});
}

//사용자 삭제 요청
function userDelete() {
	//삭제 버튼 클릭
	$('body').on('click','#btnDelete',function(){
		var userId = $(this).closest('tr').find('#hidden_userId').val();
		var result = confirm(userId +" 사용자를 정말로 삭제하시겠습니까?");
		if(result) {
			$.ajax({
				url:'users/'+userId,  
				type:'DELETE',
				contentType:'application/json;charset=utf-8',
				dataType:'json',
				error:function(xhr,status,msg){
					console.log("상태값 :" + status + " Http에러메시지 :"+msg);
				}, success:function(xhr) {
					console.log(xhr.result);
					userList();
				}
			});      }//if
	}); //삭제 버튼 클릭
}//userDelete


//사용자 조회 요청
function userSelect() {
	$(".container").on("click","#btnSelect",function(){
		var id = $(this).closest("tr").find("#hidden_userId").val();
		$.ajax({
			url :  "${pageContext.request.contextPath}/users/" + id ,
			dataType : 	"json",
			success : userSelectResult
		});
	})
}

//사용자 조회 응답
function userSelectResult(user) {
	$('input:text[name="id"]').val(user.id);
	$('input:text[name="name"]').val(user.name);
	$('input:text[name="password"]').val(user.password);
	$('select[name="role"]').val(user.role).attr("selected", "selected");
}//userSelectResult

//사용자 목록 조회 요청
function userList() {
	$.ajax({
		url :  "${pageContext.request.contextPath}/users" ,
		method : "get" , 
		dataType : 	"json",
		success : userListResult
	});
}

//사용자 목록 조회 응답
function userListResult(data) {
	$("tbody").empty();
	//$.each(data,function(idx,item){
	for(i=0;i<data.length; i++) {
		var item = data[i];
		//makeTr(item).appendTo('tbody');
		$('tbody').append(makeTr(item));
	}
}//userListResult

function makeTr(item) {
	return $('<tr>')
	.append($('<td>').html(item.id))
	.append($('<td>').html(item.name))
	.append($('<td>').html(item.password))
	.append($('<td>').html(item.role))
	.append($('<td>').html('<button id=\'btnSelect\'>조회</button>'))
	.append($('<td>').html('<button id=\'btnDelete\'>삭제</button>'))
	.append($('<input type=\'hidden\' id=\'hidden_userId\'>').val(item.id))
}
</script>
</head>
<body>
<div class="container">
	<form id="form1"  class="form-horizontal">
		<h2>사용자 등록 및 수정</h2>
		<div class="form-group">		
			<label >아이디:</label>
			<input type="text"  class="form-control" name="id">
		</div>	
		<div class="form-group">
			<label>이름:</label>
			<input type="text"  class="form-control"  name="name" >
		</div>	
		<div class="form-group">
			<label>패스워드:</label>
			<input type="text"  class="form-control"  name="password" >
		</div>			
<!-- 		<div class="form-group">
			<label >성별:</label>
			<div class="radio">
				<label><input type="radio"  name="gender"  value="남">남</label>
			</div>
			<div class="radio">
				<label><input type="radio"  name="gender"  value="여">여</label>
			</div>	
		</div>	 -->    
		<div class="form-group">   
			<label>역할:</label>
				<select class="form-control" name="role">
					   		<option value="Admin">관리자</option>
					   		<option value="User">사용자</option>
				</select>
		</div>  
		<div class="btn-group">      
				<input type="button"  class="btn btn-primary" value="등록"  id="btnInsert" /> 
				<input type="button"  class="btn btn-primary" value="수정"  id="btnUpdate" />
				<input type="button"  class="btn btn-primary" value="초기화" id="btnInit" />
		</div>
	</form>
</div>		
<hr/>		
<div class="container">	
	<h2>사용자 목록</h2>
	<table class="table text-center">
		<thead>
		<tr>
			<th class="text-center">아이디</th>
			<th class="text-center">이름</th>
			<th class="text-center">성별</th>
			<th class="text-center">거주지</th>
		</tr>
		</thead>
		<tbody></tbody>
	</table>
</div>	
</body>
</html>