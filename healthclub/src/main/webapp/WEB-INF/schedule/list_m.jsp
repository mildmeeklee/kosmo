<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>프로그램이름</th>
			<th>강사</th>
			<th>시간</th>
			<th>내용</th>
			<th>고유번호</th>
			<th>좌표</th>
			<td colspan="2">관리</td>
		</tr>
		
		<c:forEach var = "schedulelist" items="${schedulelist }">
			<tr>
				<td> ${schedulelist.p_name}</td>
				<td> ${schedulelist.p_teacher}</td>
				<td> ${schedulelist.p_time}</td>
				<td> ${schedulelist.p_content}</td>
				<td> ${schedulelist.p_num}</td>
				<td> ${schedulelist.p_position}</td>
				
				<td> <input type="button" value="수정" 
						onclick= "javascript:window.location='noticeupdateM.do?n_num=${noticelist.n_num}'"></td>
				<td> <input type="button" value="삭제" 
						onclick= "javascript:window.location='noticedelete.do?n_num=${noticelist.n_num}'"></td>
			</tr>
		</c:forEach>
		
		<tr>
			<td colspan="7"><input type="button" value="프로그램등록" onclick= "javascript:window.location='schedulewriteM.do'"></td>
		</tr>
		
		
	</table>
</body>
</html>
