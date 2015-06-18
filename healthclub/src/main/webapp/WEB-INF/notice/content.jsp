<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<P align="right">	
	<input type="button" value="목록" onclick="javascript:window.location='notice.do'">&nbsp;&nbsp;&nbsp;&nbsp; 	
	</P>
	<table frame="hsides" rules="rows" align="center" >
		<tr >
			<td width="600" colspan="2">
			<font size="5" color="black"><b> &nbsp;&nbsp;${noticecontent.n_name}</b></font></td>
		</tr>
		<tr>
			<td width="600"> &nbsp;&nbsp;&nbsp;글번호 : ${noticecontent.n_num}</td>
			<td width="600"><fmt:formatDate value="${noticecontent.n_date}" type="date" var="date"/>작성일 : ${date}</td>
		</tr>
		
		<tr>
			<td width="600" colspan="2" width="300" height="500" >${noticecontent.n_content}</td>
		</tr>
	</table>
	
	
</body>
</html>