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
	</br>
	</br>
	</br>
	
	<table  border="3"  frame="hsides" rules="rows" align="center" >
		<tr>
			<th width="150">글번호</th>
			<th width="600">제목</th>
			<th width="300">날짜</th>
		</tr>
		
		<c:forEach var = "noticelist" items="${noticelist }">
			<tr align="center">
				<td> ${noticelist.n_num }</td>
				<td width="70%"> <a href="noticecontent.do?n_num=${noticelist.n_num}"> ${noticelist.n_name}</a></td>
				<td><fmt:formatDate value="${noticelist.n_date}" type="date" var="date"/>${date}</td>
			</tr>
		</c:forEach>

	</table>
	
	<p align="right">${page}</p>

</body>
</html>