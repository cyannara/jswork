<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link href="../tonytomov-jqGrid/css/ui.jqgrid.css"  rel="stylesheet">
<link href="../scripts/jquery-ui.min.css" rel="stylesheet" >
<script src="../scripts/jquery-3.2.1.min.js"></script>
<script src="../scripts/jquery-ui.min.js"></script>
<script src="../tonytomov-jqGrid/js/jquery.jqGrid.js"></script>
<script src="../tonytomov-jqGrid/js/i18n/grid.locale-kr.js"></script>
<script>
	$(function(){
		 var grid = $("#list").jqGrid({
				        url: "../DeptListAllJsonServ",
				        editurl : "../DeptDMLServ.do",
				        datatype: "json",
				        pager: "#pager",
				        rowNum: 5,
				        viewrecords: true,
		        loadonce: true,		             
				page: 1,
                width: 780,
                height: 100,
                rownumbers: true, // show row numbers
                rownumWidth: 25, // the width of t 
				        colModel: [
       	{  label: '부서번호', 
           	name: 'departmentId', 
           width: 75,
			 key: true,
		editable: true
        },
       	{ label: '부서명',   
           name: 'departmentName', 
          width: 200,
	   editable: true
        },
       	{ label: '지역',     
           name: 'locationId',
          width: 75 ,
	   editable: true
        },
       	{ label: '메니저',   
           name: 'managerId', 
          width: 75 ,
	   editable: true
        }
		 						  ]
				 });

		  $('#list').navGrid('#pager',
	                { edit: true, 
                       add: true, 
                       del: true
                    }, // options for the Edit Dialog
                    {
                        editCaption: "부서 수정",
                        recreateForm: true,
    					//checkOnUpdate : true,
    					//checkOnSubmit : true,
    					beforeSubmit : function( postdata, form , oper) {
    						if( confirm('Are you sure you want to update this row?') ) {
    							// do something
    							return [true,''];
    						} else {
    							return [false, 'You can not submit!'];
    						}
    					},
    					afterSubmit: function () {
    					    $(this).jqGrid("setGridParam", {datatype: 'json'});
    					    return [true];
    					}
    					reloadAfterSubmit : true,
                        closeAfterEdit: true,
                        errorTextFormat: function (data) {
                            return 'Error: ' + data.responseText
                        }
                    },
                    // options for the Add Dialog
                    {
                        closeAfterAdd: true,
                        recreateForm: true,
                        errorTextFormat: function (data) {
                            return 'Error: ' + data.responseText
                        }
                    },
                    // options for the Delete Dailog
                    {
                        errorTextFormat: function (data) {
                            return 'Error: ' + data.responseText
                        }
                    }  );
		 
	});
</script>
</head>
<body>
<!-- ui/dept_grid.jsp -->
	<table id="list"></table> 
    <div id="pager"></div>
</body>
</html>




