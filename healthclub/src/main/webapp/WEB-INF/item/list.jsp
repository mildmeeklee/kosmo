<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



	<table border="1" cellpadding="15px">
		<tr align="center">
			<th>제품명</th>
			<th>제품번호</th>
			<th>제품가격</th>
			<th>제품내용</th>
			<th>등록시간</th>
			<th>조회수</th>
			<th>제품이미지</th>
			<th colspan="3">관리하기</th>
		
			
			<c:forEach var="item" items="${itemtable}">
				<tr>
					<td align="center">${item.i_name}</td>
					<td align="center">${item.i_num}</td>
					<td align="center">${item.i_price}</td>
					<td align="center">${item.i_content}</td>
					<td align="center">${item.i_time}</td>
					<td align="center">${item.i_count}</td>
					<td>${item.i_imageOrgname}</td>
					<td>${item.i_imagePath }</td>
					<!-- /Proj/ <- 프로젝트명적기 -->
					<td><img src="/Proj/image/${item.i_imagePath }" width="100" height="100">
					<td>
						<form action="selone.do" method="post">
							<input type="hidden" name="num" value="${file.num }">
							<button type="submit">수정하기</button>
						</form>
					</td>
					<td>
						<form action="del.do" method="post">
							<input type="hidden" name="num" value="${file.num }">
							<button>삭제 하기</button>
						</form>
					</td>
					<td>
						<form action="down.do" method="post">
							<input type="hidden" name="path2" value="${file.file_path}">
							<button>다운 받기</button>
						</form>
					</td>
				</tr>
			</c:forEach>

	</table>
		${page}
	<br>
	<br>

	<br>
	<br>


</body>
</html>