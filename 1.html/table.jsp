<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>table.jsp</title>
<style>
	.memberlist tr:hover { background-color: yellowgreen; }
	.memberlist tr:nth-child(odd) { background-color: gray ; }
	.memberlist { display: inline-block;}
	table,tr,td { border: 3px solid blue; }
	td          { padding: 10px;}
	table       { margin: 0px 50px 0px 0px; }
	.memberlist td:first-child { background-color: cyan;}
	.memberlist:nth-child(1) { display: none;}
</style>
</head>
<body>
	<table class="memberlist">
		<tr>
			<td>a</td>
			<td>b</td>
			<td>c</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
		<tr>
			<td>10</td>
			<td>11</td>
			<td>12</td>
		</tr>					
	</table>
	<table class="memberlist">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
		<tr>
			<td>10</td>
			<td>11</td>
			<td>12</td>
		</tr>					
	</table>	
</body>
</html>