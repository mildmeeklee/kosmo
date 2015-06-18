<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="boardupdate.do?b_num=${boardcontent.b_num }" method="POST">
	<table frame="hsides" rules="rows" align="center">
		<tr>
			<td width="100">글번호 :: ${boardcontent.b_num}</td>
			<td width="300"><input type="text" name="b_name" value="${boardcontent.b_name}"></td>
		</tr>
		<tr>
			<td>작성자 :: ${boardcontent.b_id}</td>
			<td>날짜 :: ${boardcontent.b_date}</td>
			<td>조회수 :: ${boardcontent.b_count}</td>
		</tr>
		<tr>
			<td colspan="3"><textarea cols="100" rows="25" name="b_content">
			${boardcontent.b_content}</textarea> </td>
		</tr>
	</table>
	<p align="right">
	<input type="submit" value="수정하기">
	</p>
	</form> 
</body>
</html>