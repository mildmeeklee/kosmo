<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
<br>
<br>
<br>

	<table align="center" frame="hsides" rules="rows">
		<tr bordercolor="red">
			<th>글번호</th>
			<th>제목</th>
			<th>작성자Id</th>
			<th>조회수</th>
		</tr>

		<c:forEach var="boardlist" items="${boardlist }">
			<tr>
				<td width="50" align="center">${boardlist.b_num }</td>
				<td width="600" align="left"><a href="boardcontent.do?b_num=${boardlist.b_num}">
						${boardlist.b_name}</a></td>
				<td width="100" align="center">${boardlist.b_id}</td>
				<td width="50" align="center">${boardlist.b_count}</td>
			</tr>
		</c:forEach>
	</table>
	<p align="right">
	<input type="button" value="글쓰기" onclick="javascript:window.location='boardwriteM.do'">
	<br><br><br>${page}</p>
</body>
</html>