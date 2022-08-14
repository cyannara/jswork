<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>clientyJson.jsp</title>
<script>
function findName() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
			var obj = JSON.parse(this.responseText);
			firstname.innerHTML = obj.first_name;
			lastname.innerHTML = obj.last_name;			    
	    }
	  };
	  var param = "id=" + document.getElementById("id").value;
	  xhttp.open("GET", "../server/findName.jsp?"+param, true);
	  xhttp.send();
	}
</script>
</head>
<body>
<h3>교육신청</h3>
id<input id="id" onchange="findName()">
<span id="firstname"></span>
<span id="lastname"></span><br>
교육과정 <input>


</body>
</html>