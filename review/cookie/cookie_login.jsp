<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��Ű�б�</title>
<script>
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
window.onload = function() {
	//��Ű username �� �ؽ�Ʈ�ʵ忡 ǥ��
	document.getElementById("username").value = getCookie("username") ;
	document.title = "�α���";
}
</script>
</head>
<body>
<input type="text" name="username" id="username">

</body>
</html>