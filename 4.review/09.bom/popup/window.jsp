<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>window.jsp</title>
<script>
	//전역변수
	var w;   //window 객체(주소검색팝업창)
	
	/*----------------
	*  주소검색 창열기
	-----------------*/
	function winOpen(){
		w = window.open("window_popup.jsp","", 
				    "width=300px,height=200px,left=300px,top=100px");  //url, name, spec
	}	
	
	/*----------------
	*  주소검색 창닫기
	-----------------*/
	function winClose(){
		if(! w) {
			alert("열린 창이 없습니다.");
		} else {
			w.close();
			w = null;
		}
	}
	
	/*----------------
	*  페이지이동
	-----------------*/
	function winLink(){
		window.location.assign("screen.jsp");
	}
	
</script>
</head>
<body>
	<h3>bom(window, location)</h3>
	
	<input type="button" value="새창열기"   onclick="winOpen();">	
	<input type="button" value="창닫기"    onclick="winClose();">
	<input type="button" value="페이지이동" onclick="winLink();">
	<input type="text" value=""  name="addr" id="addr">
	<div id="demo1"></div>
	<script>
		//현재실행중인 페이지 명을 확인
		var path = location.pathname;   //    javascript_review/bom/window.jsp
		// lastindexof, substring    ---> 결과 : window.jsp
		document.getElementById("demo1").innerHTML = location.pathname;
	</script>
</body>
</html>