<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	/* 
	* 불러온 우편번호 및 주소를 회원가입 폼에 입력 
	*/
	function sendAddress(Zipcode, temptArea1, temptArea2, temptArea3) {
		var address = temptArea1 + " " + temptArea2 + " " + temptArea3;
		opener.document.userinput.userzipcode.value = Zipcode;
		opener.document.userinput.address.value = address;
		self.close();
	}
</script>
</head>
<body>

	<form action="ZipCheck.do" method="post">
		<input type="text" name="area3"> 동이름을 입력하세요. <input
			type="submit">
	</form>
	<br>
	<br>
	<br>
	<br>
	<br>
	선택해주세요.<br><br>
		<c:forEach var="list" items="${area3}">
			<a href="javascript:sendAddress('${list.zipcode}','${list.area1 }','${list.area2 }','${list.area3 }')">
			${list.zipcode} , ${list.area1 } ,${list.area2 },${list.area3 }<br>
			</a>
	
		</c:forEach>

</body>
</html>