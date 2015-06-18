<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
.noticetable{
	margin-top: 100px;
	margin-left: 50px;
	margin-right: 50px;
}
</style>
</head>
<body>
<br>
<br>
<br>
<div  class="noticetable">
	<table frame="hsides" rules="rows" align="center" >
		<tr bordercolor="red">
			<th width="150">글번호</th>
			<th width="600">제목</th>
			<th width="300">날짜</th>
		</tr>
		
		
		<c:forEach var = "noticelist" items="${noticelist }">
			<tr align="center">
				<td> ${noticelist.n_num }</td>
				<td width="70%"> <a href="noticecontent.do?n_num=${noticelist.n_num}" style="text-decoration:none"> ${noticelist.n_name}</a></td>
				<td><fmt:formatDate value="${noticelist.n_date}" type="date" var="date"/>${date}</td>
			</tr>
		</c:forEach>

	</table>
	</div>
	<p align="right">${page}</p>

</body>
</html>