<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan="2">${noticecontent.n_name}</td>
		</tr>
		<tr>
			<td>${noticecontent.n_num}</td>
			<td><fmt:formatDate value="${noticecontent.n_date}" type="date" var="date"/>${date}</td>
		</tr>
		
		<tr>
			<td colspan="2" width="300" height="500">${noticecontent.n_content}</td>
		</tr>
	</table>
	
	<input type="button" value="목록" onclick="javascript:window.location='notice.do'"> 
</body>
</html>