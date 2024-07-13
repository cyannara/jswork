<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>    
<%  //loginCheck.jsp
Hashtable map = new Hashtable();
map.put("kim","1");
map.put("park","2");
map.put("choi","3");
String userid = request.getParameter("userid");
String userpw = request.getParameter("userpw");
if ( userpw.equals(map.get(userid))) 
	out.print("{\"code\":\"true\"}");
else
	out.print("{\"code\":\"false\"}");
%>