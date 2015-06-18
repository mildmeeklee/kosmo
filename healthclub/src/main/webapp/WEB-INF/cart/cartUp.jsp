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
	수량 변경 :	<select name="s_num">
			<option id="1" value="1">1개</option>
			<option id="2" value="2">2개</option>
			<option id="3" value="3">3개</option>
			<option id="4" value="4">4개</option>
			<option id="5" value="5">5개</option>
		</select> <input name="cart_num" type="hidden" value="${cart.getCart_num()}">
		<input name="i_item" type="hidden" value="${cart.getI_item() }">
		<button type="submit">수정</button>
	</form>
	<br><br><br><br><br><br>

<form align="center" action="delcart.do" method="post">
		<input name="cart_num" type="hidden" value="${cart.getCart_num()}">
		주문을 취소 합니다. <button>주문 취소</button>
	</form>

</body>
</html>