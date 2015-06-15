<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page  %>
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
			<th>제품가격</th>
			<th>제품내용</th>
			<th>조회수</th>
			<th>제품이미지</th>
	
			<c:forEach var="item" items="${itemtable}">
				<tr>
					<td align="center">${item.i_name}</td>
					<td align="center">${item.i_price}</td>
					<td align="center">${item.i_content}</td>
					<td align="center">${item.i_count}</td>																								
					<td><a href="itemcontent.do?i_num=${item.i_num}"><img src="/healthclub/image/${item.i_imageOrgname }" width="100" height="100">				
					</a></td>
					<td>
						<form action="seloneitem.do" method="post">
							<input type="hidden" name="i_num" value="${item.i_num }">
							<button type="submit">수정하기</button>
						</form>
					</td>
					<td>
						<form action="del.do" method="post">
							<input type="hidden" name="i_num" value="${item.i_num }">
							<button>삭제 하기</button>
						</form>
					</td>
				</tr>
			</c:forEach>
	
	</table>

		${page}
	

	</table>
	<br>
	<br>

	<br>
	<br>


</body>
</html>