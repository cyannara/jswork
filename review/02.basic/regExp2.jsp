<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>
<!-- regexp.jsp -->
����ǥ���� �׽�Ʈ <hr>
<script>
"use strict";
	var zipKorea = /^\d{3}-?\d{3}$/;
	var str1 = '123-467';
	var str2 = '123467';
	var str3 = 'a623467bddf';
	var str4 = '1234679';
	/* document.write(  zipKorea.test(str1) + "<br>");  // true
	document.write(  zipKorea.test(str2) + "<br>"); 
	document.write(  zipKorea.test(str3) + "<br>");     // false 
	document.write(  zipKorea.test(str4) + "<br>"); */
	
/* 	document.write(  str1.match(zipKorea) );   // �˻��� ���ڿ�
	document.write(  str3.match(zipKorea) );   // �ƴѰ��� null
 */
	//replace
	str5 = "<div>good morning</div>";   //-->   good morning
	pattern = /\<\/?\w*\>/g;
	document.write( str5.replace(pattern, "aa")  );
	</script>
</body>
</html>