<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title></head>
<body>
<!-- variable.jsp -->
�������� �׽�Ʈ <hr>
<div id="result"></div>
<script>
	//Number
	var num1 = 5;
	var num2 = 10.12;
	//String
	var str1 = '5';
	var str2 = "kim\"s";
	//Date
	var today = new Date();
	//Ÿ�� ���
	document.getElementById("result").innerHTML += typeof(num1) + "<br>";
	document.getElementById("result").innerHTML += typeof(num2) + "<br>";
	document.getElementById("result").innerHTML += typeof(str1) + "<br>";
	document.getElementById("result").innerHTML += typeof(today) + "<br>";
	console.log( num1 == str1 );
	console.log( num1 === str1 );
	
	//object ��� ǥ��
	var obj1 = { firstName:'scott', lastName:'tom', salary:800  }; 
	console.log(obj1.lastName +" : " + obj1.salary );
		
	// �迭 ǥ��
	var arr = [ '���','�ٳ���','Ű��','��' ];
	console.log('�ι�° ������ ' +  arr[1]    );
	
	var arrObj = [
					{ firstName:'scott', lastName:'tom', salary:800  },
					{ firstName:'�浿', lastName:'ȫ', salary:900  },
					{ firstName:'����', lastName:'��', salary:500  }					
	             ]
	//�ι�° ����� firstName�� �ֿܼ� ���
	console.log(arrObj[1].firstName   );
	

</script>
</body>
</html>