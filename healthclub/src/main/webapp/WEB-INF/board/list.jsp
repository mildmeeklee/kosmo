<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<th>작성자Id</th>
			<th>조회수</th>
		</tr>

		<c:forEach var="boardlist" items="${boardlist }">
			<tr>
				<td>${boardlist.b_num }</td>
				<td><a href="boardcontent.do?b_num=${boardlist.b_num}">
						${boardlist.b_name}</a></td>
				<td>${boardlist.b_id}</td>
				<td>${boardlist.b_count}</td>
			</tr>
		</c:forEach>
		<tr>
			<td><input type="button" value="글쓰기" onclick="javascript:window.location='boardwriteM.do'" /></td>
		</tr>


	</table>
	${page}
</body>
</html>