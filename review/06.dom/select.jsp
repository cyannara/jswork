<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>�޺��ڽ� ����</title>
<script>
function moveRight() {
	var l = document.getElementById("leftSel");
	var r = document.getElementById("rightSel");
	console.log( l.options[l.selectedIndex].text );
	//�����׸� �����ʿ� �߰�
	var opt = document.createElement("option");
	opt.innerHTML = l.options[l.selectedIndex].text;
	r.appendChild(opt);
	//�����׸� ����
	l.remove(l.selectedIndex);
}
</script>
</head>
<body>
<!--  select.jsp  -->
<select id="leftSel" size="5">
	<option value="">�ٳ���</option>
	<option value="">���</option>
	<option value="">Ű��</option>
</select>
<input type="button" onclick="moveRight()" value="��">
<input type="button" onclick="" value="��">
<select id="rightSel" size="5" style="width:100px;"></select>
</body>
</html>