<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="managerswrite.do" method="POST">
		제목 :: <input type="text" name ="n_name"></br>
		내용 :: <br/>
		<textarea cols="40" rows="20" name="n_content"></textarea><br/>
		<input type="submit" value="확인">
	</form>
</body>
</html>