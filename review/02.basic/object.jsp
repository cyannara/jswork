<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>object.jsp</title>
</head>
<body>
<h3>자바스크립 객체 표현 : {}</h3>
<script>
	//var dept = {department_id: 90, department_name : 'Executive'};

	var emp = { employee_id : 100, 
			    first_name:'Steven', 
			    last_name : 'King',
			    department : {department_id: 90, department_name : 'Executive'},
			    hobby : ['스키','볼링','게임']
			  }
	document.write("사원번호:" + emp.employee_id +"<br>");
	document.write("사원명:" + emp.first_name + emp.last_name +"<br>");
	document.write("부서명:" + emp.department.department_name +"<br>");
	document.write("첫번째취미:" + emp.hobby[0] +"<br>");

	
	var emps = [
		  { employee_id : 110, 
		    first_name:'Steven', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['스키','볼링','게임']
		  },
		  { employee_id : 105, 
		    first_name:'길동', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['스키','볼링','게임']
		  },
		  { employee_id : 120, 
		    first_name:'유신', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['스키','볼링','게임']
		 }
	]
	
	//emps 전 사원의 first_name, department_name을 출력
	for(i=0; i<emps.length; i++){
		document.write("사원명:" + emps[i].first_name +"<br>");
		document.write("부서명:" + emps[i].department.department_name +"<br>");
	}
	
	//정렬하기
	document.write("<hr>");
	emps.sort(function(a,b){return a.first_name - b.first_name });
	emps.reverse();  //내림차순
	//출력
	for(i=0; i<emps.length; i++){
		document.write( emps[i].employee_id + " : " + emps[i].first_name +"<br>");
	}
	
	//두번째 사원의 last_name
	document.write("두번째 사원명:" + emps[1].first_name +"<br>" );
	document.write("두번째 사원의 첫번째 취미:" + emps[1].hobby[0] );
	
	
	//숫자 섞기 (난수)
	document.write("<hr>");
	var nan= [1,2,3,4,5,6,7,8,9];
	nan.sort(function(a, b){return 0.5 - Math.random()});
	document.write(nan[0] +" : " + nan[1] +" : " + nan[2]);
</script>
</body>
</html>