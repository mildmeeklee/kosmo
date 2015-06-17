<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<p align="center">
	<table  border="3"  frame="hsides" rules="rows" >
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach var = "noticelist" items="${noticelist }">
			<tr align="center">
				<td> ${noticelist.n_num }</td>
				<td width="70%"> <a href="noticecontent.do?n_num=${noticelist.n_num}"> ${noticelist.n_name}</a></td>
				<td><fmt:formatDate value="${noticelist.n_date}" type="date" var="date"/>${date}</td>
			</tr>
		</c:forEach>

	</table>
	${page}
</p>
</body>
</html>