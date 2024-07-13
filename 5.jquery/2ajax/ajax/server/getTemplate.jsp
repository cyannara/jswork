<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String city = request.getParameter("city");
	if(city == null) {
		out.print("null");
	}
	if( city.equals("seoul")) {
		out.print("29도");
	} else if( city.equals("daegu")) {
		out.print("32도");
	} else if( city.equals("pusan")) {
		out.print("23도");
	}
%>