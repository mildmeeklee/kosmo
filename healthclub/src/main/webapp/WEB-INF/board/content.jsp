<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div align="right">
	<input type="button" value="목록" onclick="javascript:window.location='boardlist.do'"> 
	<input type="button" value="수정" onclick="javascript:window.location='boardupdateM.do?b_id=${boardcontent.b_id}&b_num=${boardcontent.b_num}'" />
	<input type="button" value="삭제" onclick="javascript:window.location='boarddelete.do?b_id=${boardcontent.b_id}&b_num=${boardcontent.b_num}'">
	</div>
	<br>
	<!--  선택 Board Content  -->
	<table frame="hsides" rules="rows" align="center" >
		<tr >
			<td width="600" colspan="4">
			<font size="5" color="black"><b> &nbsp;&nbsp;${boardcontent.b_name}</b></font></td>
		</tr>
		<tr>
			<td width="100">글번호 :: ${boardcontent.b_num}</td>
			<td>작성자 :: ${boardcontent.b_id}</td>
			<td><fmt:formatDate type="date" value="${boardcontent.b_date}" var="date"/>날짜 ::${date } </td>
			<td>조회수 :: ${boardcontent.b_count}</td>
		</tr>
		<tr>
			<td width="800" colspan="3" width="300" height="250" >${boardcontent.b_content}</td>
		</tr>
	</table>

	<p>
	
	<!--  코멘트 작성란  -->
	<form action="commentwrite.do?c_bnum=${boardcontent.b_num}" method="POST">
	<table align="center">
		<tr>
			<td width="800"><input type="text" name="c_content" value="코맨트를 입력해 주세요" >
				<input type="submit" value="작성"> </td>
		</tr>
	</table>
	</form>
	<br>
	<!--  코멘트 list  -->
	<table frame="hsides" rules="rows" align="center" >
		<c:forEach var="commentInfo" items="${commentInfo }">
			<tr>
				<td width="80">no: ${commentInfo.c_num }</td>
				<td width="400">내용: ${commentInfo.c_content}</td>
				<td width="100">작성자: ${commentInfo.c_id}</td>			
				<td width="150"><fmt:formatDate value="${commentInfo.c_date}" type="date" var="date"/>작성일 : ${date}</td>
      		
      		<c:if test= "${id == commentInfo.c_id}">
      	
				<td><input type="button" value="삭제" 
				onclick="javascript:window.location='commentdelete.do?c_id=${commentInfo.c_id}&c_num=${commentInfo.c_num }&c_bnum=${commentInfo.c_bnum }'"></td>
		
			</c:if> 
			</tr>
		</c:forEach>
	</table>

			
	<p align="center">${page}</p>	
</body>
</html>