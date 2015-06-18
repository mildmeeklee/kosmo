<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p align="left">
<input type="button" onclick="javascript:window.location='mypagemylistUp2.do'" value="수정하기">

</p>
	<table height="450"   border="1" cellspacing="1" cellpadding="3" bordercolor="#999999" rules="none">
		<tr align="center">
			<td width="100">ID</td>
			<td width="500" align="center">${userlist.getId() }</td>
		</tr>
		<tr>
			<td>PASSWD</td>
		<td align="center">${userlist.getPw() }</td>
		</tr>

		<tr>
			<td>NAME</td>
			<td align="center">${userlist.getName() }</td>  
		</tr>
		<tr>
			<td>우편번호</td>
 		<td align="center">${userlist.getUserzipcode() }</td> 
		</tr>

		<tr>
			<td>주소</td>
		 <td align="center">${userlist.getAddress() }</td> 
		</tr>

		<tr>
			<td>성별</td>
		 <td align="center">${userlist.getSex() }</td>
		</tr>

		<tr>
			<td>핸드폰번호</td>
			<td align="center">${userlist.getPh()}</td> 
		</tr>

		<tr>
			<td>생년월일</td>
			 <td align="center">${userlist.getBirth() }</td>
		</tr>

		<tr>
			<td>E-mail</td>
		 <td align="center">${userlist.getEmail() }</td> 
		</tr>
		
	</table>
									
	
</body>
</html>