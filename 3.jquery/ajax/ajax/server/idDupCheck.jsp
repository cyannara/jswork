<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1 userid 가 "admin"  이면 true 아니면 false;
	String userid= request.getParameter("userid");
	if(userid != null && userid.equals("admin")) {
		out.print("true");
	} else {
		out.print("false");
	}
%>