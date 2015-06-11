<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<table border="1" cellpadding="15px">
		<tr align="center">
			<th>아이디</th>
			<th>제품번호</th>
			<th>수량</th>
			<th>가격</th>
		</tr>
		<c:forEach var="cartlist" items="${cartlist}">
			<tr>
				<td align="center">${cartlist.s_id}</td>
				<td align="center">${cartlist.i_tem}</td>
				<td align="center">${cartlist.s_num}</td>
				<td align="center">${cartlist.s_sum}</td>
			
				<td>
					<form action="del.do" method="post">
						<input type="hidden" name="num" value="${file.num }">
						<button>수정</button>
					</form>
				</td>
				<td>
					<form action="down.do" method="post">
						<input type="hidden" name="path2" value="${file.file_path}">
						<button>삭제</button>
					</form>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td>전체 물품 수량</td>
			<td>${sum.s_num}</td>
			<td>가격</td>
			<td>${sum.s_sum}</td>
				<td>
				<form action="selone.do" method="post">
					<input type="hidden" name="num" value="${file.num }">
					<button type="submit">구매하기</button>
				</form>
				</td>
		</tr>
		
	</table>
</body>
</html>