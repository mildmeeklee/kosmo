<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach var = "noticelist" items="${noticelist }">
			<tr>
				<td> ${noticelist.n_num }</td>
				<td> <a href="noticecontent.do?n_num=${noticelist.n_num}"> ${noticelist.n_name}</a></td>
				<td> ${noticelist.n_date}</td>
			</tr>
		</c:forEach>
		
		
		
	</table>
</body>
</html>