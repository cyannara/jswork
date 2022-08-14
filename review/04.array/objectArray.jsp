<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>objectArray.jsp</title>
<script>
//객체배열
var d = [ {name:'choi', age:20 , hobby : ["독서","등산","영화" ] }
         ,{name:'park', age:30 }
         ,{name:'kim', age:10 }
        ]
//첫번째 회원의 이름은?
document.write("첫번째 회원의 이름은 " + d[0].name  +"<br>");
document.write("두번째 회원의 나이는 " + d[1].age  +"<br>");
document.write("첫번째 회원의 첫번째 취미는 " + d[0].hobby[0]  +"<br>");

// 정렬
d.sort( function(a,b){ return a.name - b.name  } );
console.dir(d);

// object -> string
let s = JSON.stringify(d);

// string -> object
let o = JSON.parse(s);

</script>
</head>
<body>

</body>
</html>