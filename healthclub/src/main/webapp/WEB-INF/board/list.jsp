<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<td width="500" align="center"><a href="boardcontent.do?b_num=${boardlist.b_num}">
						${boardlist.b_name}</a></td>
				<td width="100" align="center">${boardlist.b_id}</td>
				<td width="50" align="center">${boardlist.b_count}</td>
			</tr>
		</c:forEach>
	</table>
	
	<p align="right"><a href="boardwriteM.do">글쓰기</a><br><br><br>${page}</p>
</body>
</html>