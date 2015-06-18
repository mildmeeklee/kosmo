<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<br><br>
	<table align="center" border="1" cellspacing="0" cellpadding="3"
		bordercolor="#999999" style="border-collapse: collapse;" rules="none">
		<tr align="center">
			<th width="100">아이디</th>
			<th width="100">제품번호</th>
			<th width="100">수량</th>
			<th width="200">가격</th>
			<th></th>
			<th></th>
	
		</tr>
		<c:forEach var="cartlist" items="${cartlist}">
			<tr>
				<td align="center">${cartlist.s_id}</td>
				<td align="center">${cartlist.i_item}</td>
				<td align="center">${cartlist.s_num}</td>
				<td align="center">${cartlist.s_sum}</td>

				<td>
					<form action="mypageupcart.do" method="post">
						<input name="cart_num" type="hidden" value="${cartlist.cart_num}">
						<button>수정</button>
					</form>
				</td>
				<td>
					<form action="buycart.do" method="POST">
						<input name="cart_num" type="hidden" value="${cartlist.cart_num}">
						<button>구매</button>
					</form>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td width="200">전체 물품 수량</td>
			<td>${sum.s_num}</td>
			<td>가격</td>
			<td>${sum.s_sum}</td>
			<td></td>
			<td></td>
		</tr>
	</table>


</body>
</html>