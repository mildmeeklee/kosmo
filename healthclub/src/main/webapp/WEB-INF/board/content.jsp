<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	
	<!--  선택 Board Content  -->
	<table border="1">
		<tr>
			<td>글번호 :: ${boardcontent.b_num}</td>
			<td colspan="2">제목 :: ${boardcontent.b_name}</td>
		</tr>
		<tr>
			<td>작성자 :: ${boardcontent.b_id}</td>
			<td><fmt:formatDate type="date" value="${boardcontent.b_date}" var="date"/>날짜 ::${date } </td>
			<td>조회수 :: ${boardcontent.b_count}</td>
		</tr>
		<tr>
			<td colspan="3"><textarea cols="50" rows="10">${boardcontent.b_content}</textarea> </td>
		</tr>
	</table>
	
	<input type="button" value="목록" onclick="javascript:window.location='boardlist.do'"> 
	<input type="button" value="수정" onclick="javascript:window.location='boardupdateM.do?b_id=${boardcontent.b_id}&b_num=${boardcontent.b_num}'" />
	<input type="button" value="삭제" onclick="javascript:window.location='boarddelete.do?b_id=${boardcontent.b_id}&b_num=${boardcontent.b_num}'">
	<p>
	
	<!--  코멘트 작성란  -->
	<form action="commentwrite.do?c_bnum=${boardcontent.b_num}" method="POST">
	<table border="1">
		<tr>
			<td><input type="text" name="c_content" value="코맨트를 입력해 주세요" >
				<input type="submit" value="작성"> </td>
		</tr>
	</table>
	</form>
	
	<!--  코멘트 list  -->
	<table border="1">
	<!-- <tr>
		<td>sds</td>
		<td>sd</td>
	</tr> -->
		<c:forEach var="commentInfo" items="${commentInfo }">
			<tr>
				<td>${commentInfo.c_num }</td>
				<td>${commentInfo.c_content}"></td>
				<td>${commentInfo.c_id}</td>
				<td>${commentInfo.c_date}</td>
				<td><input type="button" value="삭제" 
				onclick="javascript:window.location='commentdelete.do?c_id=${commentInfo.c_id}&c_num=${commentInfo.c_num }&c_bnum=${commentInfo.c_bnum }'"></td>
			</tr>
		</c:forEach>
	</table>
	${page}	
</body>
</html>