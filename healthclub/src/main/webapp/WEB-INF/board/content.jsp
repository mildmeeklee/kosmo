<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>글번호 :: ${boardcontent.b_num}</td>
			<td colspan="2">제목 :: ${boardcontent.b_name}</td>
		</tr>
		<tr>
			<td>작성자 :: ${boardcontent.b_id}</td>
			<td>날짜 :: ${boardcontent.b_date}</td>
			<td>조회수 :: ${boardcontent.b_count}</td>
		</tr>
		<tr>
			<td colspan="3"><textarea cols="20" rows="40">${boardcontent.b_content}</textarea> </td>
		</tr>
	</table>
	
	<input type="button" value="목록" onclick="javascript:window.location='boardlist.do'"> 
	<input type="button" value="수정" onclick="javascript:window.location='boardupdateM.do?b_id=${boardcontent.b_id}&b_num=${boardcontent.b_num}'" />
	<input type="button" value="삭제" onclick="javascript:window.location='boarddelete.do?b_id=${boardcontent.b_id}&b_num=${boardcontent.b_num}'">
</body>
</html>