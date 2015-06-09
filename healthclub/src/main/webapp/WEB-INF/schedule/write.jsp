<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="schedulewrite.do" method="POST">
		프로그램이름 :: <input type="text" name ="p_name"></br>
		강사 :: <input type="text" name ="p_teacher"></br>
		시간 :: <input type="text" name ="p_time"></br>
		내용 :: <br/>
		<textarea cols="40" rows="20" name="p_content"></textarea><br/>
		<input type="submit" value="확인">
	</form>
</body>
</html>



