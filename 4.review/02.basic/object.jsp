<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>object.jsp</title>
</head>
<body>
<h3>�ڹٽ�ũ�� ��ü ǥ�� : {}</h3>
<script>
	//var dept = {department_id: 90, department_name : 'Executive'};

	var emp = { employee_id : 100, 
			    first_name:'Steven', 
			    last_name : 'King',
			    department : {department_id: 90, department_name : 'Executive'},
			    hobby : ['��Ű','����','����']
			  }
	document.write("�����ȣ:" + emp.employee_id +"<br>");
	document.write("�����:" + emp.first_name + emp.last_name +"<br>");
	document.write("�μ���:" + emp.department.department_name +"<br>");
	document.write("ù��°���:" + emp.hobby[0] +"<br>");

	
	var emps = [
		  { employee_id : 110, 
		    first_name:'Steven', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['��Ű','����','����']
		  },
		  { employee_id : 105, 
		    first_name:'�浿', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['��Ű','����','����']
		  },
		  { employee_id : 120, 
		    first_name:'����', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['��Ű','����','����']
		 }
	]
	
	//emps �� ����� first_name, department_name�� ���
	for(i=0; i<emps.length; i++){
		document.write("�����:" + emps[i].first_name +"<br>");
		document.write("�μ���:" + emps[i].department.department_name +"<br>");
	}
	
	//�����ϱ�
	document.write("<hr>");
	emps.sort(function(a,b){return a.first_name - b.first_name });
	emps.reverse();  //��������
	//���
	for(i=0; i<emps.length; i++){
		document.write( emps[i].employee_id + " : " + emps[i].first_name +"<br>");
	}
	
	//�ι�° ����� last_name
	document.write("�ι�° �����:" + emps[1].first_name +"<br>" );
	document.write("�ι�° ����� ù��° ���:" + emps[1].hobby[0] );
	
	
	//���� ���� (����)
	document.write("<hr>");
	var nan= [1,2,3,4,5,6,7,8,9];
	nan.sort(function(a, b){return 0.5 - Math.random()});
	document.write(nan[0] +" : " + nan[1] +" : " + nan[2]);
</script>
</body>
</html>