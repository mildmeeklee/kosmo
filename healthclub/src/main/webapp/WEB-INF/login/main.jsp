<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<header>
		<center>
			<h2>bangbang</h2>
		</center>
		<c:if test="${id !=null }">
				<p align="right">
				${id }님 |<a href="logout.do">logout</a> | <a href="mypage.do?id=${id}">my page</a> | <a>cart</a>
				</p>
		</c:if>
		
		
		<c:if test="${id ==null }">
			<p align="right">
				로그인 해주세요 : <a href="loginForm.do">login</a>
		</c:if>
		
		<hr color="red" size="2" width=100%>
		<center>
			<font size="5">
			<b>&diams;소개 | &diams;aa | &diams;aa | &diams;aa |<a href="itemlist.do">&diams;헬스제품</b></a>
			</b></font>
			<hr color="red" size="2" width=100%>
		</center>
	</header>



</body>
</html>
