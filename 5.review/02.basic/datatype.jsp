<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
	var a;    // undefined   ��  NullPonterException
	console.log(typeof a);
	
	a = 5.123456;    // Number ��ü
	console.log(typeof a);
	console.log(a.toPrecision(3));
	
	a = 'happy';	// String ��ü
	console.log(typeof a);
	console.log(a.length);

	// ������ ==   ===
	var b, c;
	b = "5";
	c = 5 ;
	console.log("b==c : " + ( b==c ));     // value�� ��        --> true
	console.log("b===c : " + ( b===c ));   // value, type ��  --> false

	//array   []
	var d = ["�ٳ���","���","Ű��"];
	console.log('d[1]' + d[1] );
	
	//�迭�� ���� �߰�
	d.push("����");
	d[4] = "�޷�";
	d["a1"] = "����";
	//���
	console.log("�迭======");
	console.log(d);
	console.dir(d);
	
	//object  {}
	var dept = { 'deptId' : 100,
			     'deptName':'�ѹ���',
			     'locationId' : 1000
			     }
	console.log("�μ���: " + dept.deptName );
	
	// ��ü�迭
	var deptList = [
	                { 'deptId' : 100,
	   			      'deptName':'�ѹ���',
	   			      'locationId' : 1000}
	                ,
	                { 'deptId' : 200,
		   			  'deptName':'�λ��',
		   			  'locationId' : 1000}
	                , 
	                  { 'deptId' : 300,
		   			    'deptName':'���������',
		   			    'locationId' : 2000}
	               ] 
	console.log("�ι�°�μ���: " + deptList[1].deptName );
	for(i=0; i<deptList.length; i++) {
		console.log(i + "��°�μ���: " + deptList[i].deptName );
	}
	// �迭 ����
	deptList.sort(function(a,b) { return a.deptName.localeCompare(b.deptName) } );
	console.log("������: "  );
	for(i=0; i<deptList.length; i++) {
		console.log(i + "��°�μ���: " + deptList[i].deptName );
	}
	
	// ��¥
	var f = new Date();    //���� ��¥
	var birth = new Date(1980, 12, 1);  // ����
	console.log("������ : " + f);
	console.log("������ : " + f.getTime() );
	console.log("������ �� �� : " + ( f.getMonth()+1)  + "��" + f.getDate() +"��" );
	var days = Math.floor( (f-birth)/1000/60/60/24 ) ;
	console.log("��ƿ� �ϼ��� : " +  days   );
</script>
</head>
<body>
<!-- variable.jsp -->
</body>
</html>