<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>
<!-- array.jsp -->
�迭 ��ü <hr>
<script>
	// index �迭
	var arr1 = ['���','��',10];
	arr1[5] = '�ٳ���';
	
	console.log(arr1);
	console.dir(arr1);
	console.dir(arr1[0]);
	
	//�̸��� �ִ� �迭
	var arr2 = [];
	arr2["firstName"] = "�浿";
	arr2["age"] = 20;
	console.log(arr2);
	console.dir(arr2);
	console.log(arr2["firstName"]);
	
	// �迭�� �߰�  push, pop
	arr1.push("����");
	document.write(arr1 +"<br>");
	
	arr1.pop();  // ������ 
	document.write(arr1 +"<br>");
	
	//������ �迭�� ���� ���  length
	document.write(arr1[arr1.length-1]  + "<br>");
	
	arr1.shift();
	document.write(arr1 +"<br>");
	
	//�迭�� ���ڿ��� join
	document.write( arr1.join(" * ") );
	
	// ���ڿ� <-> �迭
	var arr3 = "a,b,c";   
	// a-b-c     
	//split   ->  join
/* 	var arr4 = arr3.split(",");
	document.write( arr4.join("-") ); */
	document.write( "<br>" )
	document.write( arr3.split(",").join("-") );
	
	// ���Լ�
	var arr5 = ['4','10','20','9','100'];
	document.write( "<br>" );
	document.write( arr5.sort() );
	document.write( "<br>" );
	document.write( arr5.sort( function(a,b){ return parseInt(a)-parseInt(b);} ));
	
	
	// ��ü�迭 ����
	var cars = [
					{type:"Volvo", year:2016},
					{type:"Saab", year:2001},
					{type:"BMW", year:2010}
				];
	document.write( "<br>" );
	cars.sort( function(a,b){return a.year-b.year;} ) ;
	for( i=0; i<cars.length ; i++) {
		document.write( cars[i].type +":"+cars[i].year + "<br>");
	}
	
</script>
</body>
</html>