<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>${noticecontent.n_num}</td>
			<td>${noticecontent.n_name}</td>
		</tr>
		<tr>
			<td colspan="2">${noticecontent.n_content}</td>
		</tr>
	</table>
	
	<input type="button" value="목록" onclick="javascript:window.location='notice.do'"> 
</body>
</html>