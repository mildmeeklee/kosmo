<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="managerssupdate.do" method="POST">
		제목 :: <input type="text" name="n_name" value="${noticeupdate.n_name }"></br>
		내용 :: <br />
		<textarea cols="40" rows="20" name="n_content"
			>${noticeupdate.n_content }
		</textarea><br /> 
		<input hidden="ture" name="n_num" value="${noticeupdate.n_num}">
		<input type="submit" value="확인">
	</form>
</body>
</html>