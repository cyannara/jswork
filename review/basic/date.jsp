<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>

	<h3>��¥ ���</h3>
	<input type="text" id="anniversary_day"/>
	<input type="button" value="�����ϼ����" onclick="calc_day()"/>

<script>
	var today = new Date();   // 70�� 1�� 1�� �������� �����ð�
	document.write(d.get);
	
	//���� ���
	var weekName = ['��','��','ȭ','��','��','��','��'];
	document.write("������" +  weekName[ d.getDay() ] + "����<hr>")
	
	//��ƿ� �ϼ�
	var birth = new Date(2018,0,1);
	document.write("��ƿ� �ϼ�: " + Math.round((today - birth)/1000/60/60/24) +"<br>");
	
	//����ϱ��� ���� �ϼ� ���  --> ����
	
</script>
</body>
</html>