<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title></head>
<body>
<!-- variable.jsp -->
변수선언 테스트 <hr>
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
	//타입 출력
	document.getElementById("result").innerHTML += typeof(num1) + "<br>";
	document.getElementById("result").innerHTML += typeof(num2) + "<br>";
	document.getElementById("result").innerHTML += typeof(str1) + "<br>";
	document.getElementById("result").innerHTML += typeof(today) + "<br>";
	console.log( num1 == str1 );
	console.log( num1 === str1 );
	
	//object 상수 표현
	var obj1 = { firstName:'scott', lastName:'tom', salary:800  }; 
	console.log(obj1.lastName +" : " + obj1.salary );
		
	// 배열 표현
	var arr = [ '사과','바나나','키위','배' ];
	console.log('두번째 과일은 ' +  arr[1]    );
	
	var arrObj = [
					{ firstName:'scott', lastName:'tom', salary:800  },
					{ firstName:'길동', lastName:'홍', salary:900  },
					{ firstName:'유신', lastName:'김', salary:500  }					
	             ]
	//두번째 사원의 firstName만 콘솔에 출력
	console.log(arrObj[1].firstName   );
	

</script>
</body>
</html>