<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	
	
	<form align="center" action="updatecart.do" method="POST">
	���� ���� :	<select name="s_num">
			<option id="1" value="1">1��</option>
			<option id="2" value="2">2��</option>
			<option id="3" value="3">3��</option>
			<option id="4" value="4">4��</option>
			<option id="5" value="5">5��</option>
		</select> <input name="cart_num" type="hidden" value="${cart.getCart_num()}">
		<input name="i_item" type="hidden" value="${cart.getI_item() }">
		<button type="submit">����</button>
	</form>
	<br><br><br><br><br><br>

<form align="center" action="delcart.do" method="post">
		<input name="cart_num" type="hidden" value="${cart.getCart_num()}">
		�ֹ��� ��� �մϴ�. <button>�ֹ� ���</button>
	</form>

</body>
</html>