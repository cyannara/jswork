<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>����ǥ����</title>

<script>
//1. string �� match �Լ�
a = "111-22a-3333";
console.log("match"+ a.match(/(\d{3}).*(\d{3}).*(\d{4})/) );  // null

//2. pattern�� test �Լ� (���� ���)
var patt = /(\d{3}).*(\d{3}).*(\d{4})/;
console.log(patt.test(a));    //true / false
if ( patt.test(a) )
	console.log("������ ����");
else 
	console.log("��ȭ��ȣ ������ �ƴմϴ�.");

//��¥ üũ
patt = /^\d{2,4}\-\d{1,2}\-\d{1,2}$/   // ��¥����
var today = "2016-10-12";
if ( patt.test(today) )
	console.log("��¥ ������ ����");
else 
	console.log("��¥ ������ �ƴմϴ�.");
</script>
</head>
<body>

</body>
</html>