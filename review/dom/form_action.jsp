<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h3>���ó���Ϸ�</h3>
<%
//form_action.jsp
	out.print("userid: "+ request.getParameter("userid") + "<br/>");
	out.print("username: "+ request.getParameter("username") + "<br/>");
%>