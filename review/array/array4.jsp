<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>
</head>
<body>
<!-- array.jsp -->
배열 객체 <hr>
<script>
	// index 배열
	var arr1 = ['사과','배',10];
	arr1[5] = '바나나';
	
	console.log(arr1);
	console.dir(arr1);
	console.dir(arr1[0]);
	
	//이름이 있는 배열
	var arr2 = [];
	arr2["firstName"] = "길동";
	arr2["age"] = 20;
	console.log(arr2);
	console.dir(arr2);
	console.log(arr2["firstName"]);
	
	// 배열에 추가  push, pop
	arr1.push("수박");
	document.write(arr1 +"<br>");
	
	arr1.pop();  // 마지막 
	document.write(arr1 +"<br>");
	
	//마지막 배열의 값을 출력  length
	document.write(arr1[arr1.length-1]  + "<br>");
	
	arr1.shift();
	document.write(arr1 +"<br>");
	
	//배열을 문자열로 join
	document.write( arr1.join(" * ") );
	
	// 문자열 <-> 배열
	var arr3 = "a,b,c";   
	// a-b-c     
	//split   ->  join
/* 	var arr4 = arr3.split(",");
	document.write( arr4.join("-") ); */
	document.write( "<br>" )
	document.write( arr3.split(",").join("-") );
	
	// 비교함수
	var arr5 = ['4','10','20','9','100'];
	document.write( "<br>" );
	document.write( arr5.sort() );
	document.write( "<br>" );
	document.write( arr5.sort( function(a,b){ return parseInt(a)-parseInt(b);} ));
	
	
	// 객체배열 정렬
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