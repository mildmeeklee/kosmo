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
			<th>���̵�</th>
			<th>��ǰ��ȣ</th>
			<th>����</th>
			<th>����</th>
		</tr>
		<c:forEach var="cartlist" items="${cartlist}">
			<tr>
				<td align="center">${cartlist.s_id}</td>
				<td align="center">${cartlist.i_item}</td>
				<td align="center">${cartlist.s_num}</td>
				<td align="center">${cartlist.s_sum}</td>

				<td>
					<form action="upcart.do" method="post">
						<input name="cart_num" type="hidden" value="${cartlist.cart_num}">
						<button>����</button>
					</form>
				</td>
				<td>
					<form action="delcart.do" method="post">
						<input name="cart_num" type="hidden" value="${cartlist.cart_num}">
						<button>����</button>
					</form>
				</td>
					<td>
					<form action="buycart.do" method="POST">
						<input name="cart_num" type="hidden" value="${cartlist.cart_num}">
						<button>�����ϱ�</button>
					</form>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td>��ü ��ǰ ����</td>
			<td>${sum.s_num}</td>
			<td>����</td>
			<td>${sum.s_sum}</td>
		</tr>
	</table>


</body>
</html>