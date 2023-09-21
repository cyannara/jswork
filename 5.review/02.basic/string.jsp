<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><title>javascript_stiring.jsp</title>
</head>
<body>
<script>
var a = "사과,배,포도";    //스트링

//스트링을 배열로 변환
var b = a.split(",")   //배열

//두번째 과일출력
document.write("두번째 문자는:" + arr[1]);

//모든 과일 출력
for (i=0; i<b.length; i++) {
	document.write(b[i] +"<br>");
}

//배열을 스트링으로 변환
var c = b.join("-");    //스트링
document.write(c)

//파일명만 출력
	var filepath = window.location.href;
 	var s = filepath.lastIndexOf("/")+1; //  마지막 / 위치
	var e = filepath.length;   //문자열 길이 
	var filename = filepath.substring(s,e);
	document.write(filename);
	
	//document.write(filepath.substring(filename.lastIndexOf("/")+1));
</script>
</body>
</html>