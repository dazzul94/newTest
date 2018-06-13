<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='${contextPath}/node_modules/jquery/dist/jquery.slim.min.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" />
<table>

<tr><th>과일명 </th> <th>당도</th> <tr>

<tr><td>사과 </td> <td>2</td> <tr>

<tr><td>딸기 </td> <td>3</td> <tr>

<tr><td>수박 </td> <td>4</td> <tr>

<tr><td>멜론 </td> <td>2</td> <tr>

</table>

<script type="text/javascript" language="javascript">
$('input[type=text]').val("안녕하세용");

$('tr:odd').css('background', '#F9F9F9');

$('tr:event').css('background', '#9F9F9F');

$('tr:first').css('background', '#333333').css('color','#FFFFFF');    // 배경색 / 글자색

</script>
</body>
</html>