<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>boot.jsp</title>
</head>
<body>
<div class="container">
  <!-- Content here -->
  
  <!-- help start -->
  <div class="alert alert-info" role="alert">
    A simple info alert—check it out!
    <button type="button" class="btn btn-primary">
	  Notifications <span class="badge badge-light">4</span>
	</button>
  </div>  
  <!-- help end -->
  
  <div class="row  align-items-start">
    <!-- 목록 시작 -->
  	<div class="col-xl-6 col-md-12 col-sm-12">
  		<table class="table border">
  		<thead class="thead-dark">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>설명</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td>4</td>
			<td>5</td>
			<td class="text-truncate" style="max-width:150px;">전화번호 전화번 호전화 번호 전화 번호 전화번호 전화번 호전화 번호 전화 번호</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
		<tr>
			<td>10</td>
			<td>11</td>
			<td>12</td>
		</tr>		
		</tbody>			
	</table>
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
	    <li class="page-item"><a class="page-link" href="#">Next</a></li>
	  </ul>
	</nav>
  	</div>
  	<!-- 목록 끝 -->
  	
  	<!-- 등록폼 시작 -->
  	<div class="col-xl-6 col-md-12 col-sm-12">
  		<!-- 등록폼 시작 -->
  		<form method="post" class="border p-3">
	  		<!-- 버튼 그룹 시작-->
	  		<div class="row">
	  			<div class="col-auto mr-auto"></div>
		  		<div class="col-auto mr-auto">
		  			<button class="btn btn-success">등록</button>
		  			<span class="btn btn-info">수정</span>
		  			<a href="#" class="btn btn-warning">삭제</a>
		  		</div>		  		
	  		</div>
	  		<!-- 버튼 그룹 끝-->  		
			<div class="row form-group">
				<label for="id" class="col-4">id</label>
				<div class="col">
					<input name="id" id="id" class="form-control">
				</div>
			</div>
			<div>
				<label for="pw">pw</label><input id="pw" name="pw">
			</div>
			<div>
				<label for="role">role</label> <input type="radio" name="role">Admin
				<input type="radio" name="role">User
			</div>
			<div>
				<label for="id">id</label> <select name="job" id="job">
					<option value="">선택</option>
					<option value="program">프로그래머</option>
					<option value="degin">디자이너</option>
				</select>
			</div>
			<div>
				<label for="reason">reason</label>
				<textarea id="reason" name="reason"></textarea>
			</div>
			<div>
				<label for="hobby">hobby</label> <input type="checkbox" name="hobby">등산
				<input type="checkbox" name="hobby">수영 <input type="checkbox"
					name="hobby">게임
			</div>
			<div>
				<label for="addr">addr</label> <input name="addr" id="addr">
				<button type="button">검색</button>
			</div>
		</form>  		
  		<!-- 등록폼 끝 -->
  	</div>
  	<!-- 등록폼 끝 -->  	
  </div>
</div>
</body>
</html>




