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
				${id }�� |<a href="logout.do">logout</a> | <a href="mypage.do?id=${id}">my page</a> | <a>cart</a>
				</p>
		</c:if>
		
		
		<c:if test="${id ==null }">
			<p align="right">
				�α��� ���ּ��� : <a href="loginForm.do">login</a>
		</c:if>
		
		<hr color="red" size="2" width=100%>
		<center>
			<font size="5">
			<b>&diams;�Ұ� | 
			<a href="notice.do">&diams;��������</a>| 
			<a href="boardlist.do">&diams;�Խ���</a> | 
			 &diams;aa |
			 <a href="itemlist.do">&diams;�ｺ��ǰ</b></a>
			</b></font>
			<hr color="red" size="2" width=100%>
		</center>
	</header>
	
	<a href="itemsubmit.do"> ��ǰ �ø��� upload</a></br>
	<a href="noticelist_m.do"> ������ Ȩ������ ���� upload</a>



</body>
</html>
