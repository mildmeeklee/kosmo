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
			<th width="100">���̵�</th>
			<th width="100">��ǰ��ȣ</th>
			<th width="100">����</th>
			<th width="200">����</th>
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
						<button>����</button>
					</form>
				</td>
				<td>
					<form action="buycart.do" method="POST">
						<input name="cart_num" type="hidden" value="${cartlist.cart_num}">
						<button>����</button>
					</form>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td width="200">��ü ��ǰ ����</td>
			<td>${sum.s_num}</td>
			<td>����</td>
			<td>${sum.s_sum}</td>
			<td></td>
			<td></td>
		</tr>
	</table>


</body>
</html>