<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>namedArray.jsp</title>
<script>
//3 이름이 있는 배열
var emp = []; 
emp["firstName"] = "scott";
emp["salary"] = 3000;
emp["dept"] = "총무";

console.dir(emp);
document.write("<hr>");

for(i in emp) {
	document.write(i + " : " + emp[i] + "<br>");
}
</script>
</head>
<body>

</body>
</html>