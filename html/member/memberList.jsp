<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html><head><title>회원목록</title>
</head>
<body>
<h3>회원목록</h3>
<table border="1">
	<tr><th>id</th><th>이름</th><th>등록일</th><th>취미</th></tr>
  <c:forEach var="vo" items="${list}" >
	<tr><td>${vo.id}</td>
	    <td>${vo.name}</td>
	    <td>${vo.regdt}</td>
	    <td>${vo.hobby}</td>
	    <td><a href="MemberUpdateForm.do?id=${vo.id}">수정</a> </td>
	</tr>
  </c:forEach>
</table>
</body>
</html>