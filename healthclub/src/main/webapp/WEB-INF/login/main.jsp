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
			<b>&diams;소개 | 
			<a href="notice.do">&diams;공지사항</a>| 
			<a href="boardlist.do">&diams;게시판</a> | 
			 &diams;aa |
			 <a href="itemlist.do">&diams;헬스제품</b></a>
			</b></font>
			<hr color="red" size="2" width=100%>
		</center>
	</header>
	
	<a href="itemsubmit.do"> 제품 올리기 upload</a></br>
	<a href="noticelist_m.do"> 관리자 홈페이지 관리 upload</a>



</body>
</html>
