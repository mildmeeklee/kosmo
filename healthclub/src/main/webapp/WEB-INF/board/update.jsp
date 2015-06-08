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
	<table border="1">
		<tr>
			<td>글번호 :: ${boardcontent.b_num}</td>
			<td><input type="text" name="b_name" value="${boardcontent.b_name}"></td>
		</tr>
		<tr>
			<td>작성자 :: ${boardcontent.b_id}</td>
			<td>날짜 :: ${boardcontent.b_date}</td>
			<td>조회수 :: ${boardcontent.b_count}</td>
		</tr>
		<tr>
			<td colspan="3"><textarea cols="20" rows="40" name="b_content">
			${boardcontent.b_content}</textarea> </td>
		</tr>
	</table>
	<input type="submit" value="수정하기">
	</form> 
</body>
</html>