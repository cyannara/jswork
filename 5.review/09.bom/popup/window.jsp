<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head><title>window.jsp</title>
<script>
	//��������
	var w;   //window ��ü(�ּҰ˻��˾�â)
	
	/*----------------
	*  �ּҰ˻� â����
	-----------------*/
	function winOpen(){
		w = window.open("window_popup.jsp","", 
				    "width=300px,height=200px,left=300px,top=100px");  //url, name, spec
	}	
	
	/*----------------
	*  �ּҰ˻� â�ݱ�
	-----------------*/
	function winClose(){
		if(! w) {
			alert("���� â�� �����ϴ�.");
		} else {
			w.close();
			w = null;
		}
	}
	
	/*----------------
	*  �������̵�
	-----------------*/
	function winLink(){
		window.location.assign("screen.jsp");
	}
	
</script>
</head>
<body>
	<h3>bom(window, location)</h3>
	
	<input type="button" value="��â����"   onclick="winOpen();">	
	<input type="button" value="â�ݱ�"    onclick="winClose();">
	<input type="button" value="�������̵�" onclick="winLink();">
	<input type="text" value=""  name="addr" id="addr">
	<div id="demo1"></div>
	<script>
		//����������� ������ ���� Ȯ��
		var path = location.pathname;   //    javascript_review/bom/window.jsp
		// lastindexof, substring    ---> ��� : window.jsp
		document.getElementById("demo1").innerHTML = location.pathname;
	</script>
</body>
</html>