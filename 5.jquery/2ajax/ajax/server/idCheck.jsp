<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//idCheck.jsp
	String userid = request.getParameter("userid");
	if("admin".equals(userid)) {
		out.print("사용불가");
	} else {
		out.print("사용가능한id입니다.");
	}
%>