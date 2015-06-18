<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script>

</script>
</head>
<body>

	<form action="boardwrite.do" method="POST">
		제목 :: <input  type="text" name ="b_name"></br>
		내용 :: <br>
		<textarea cols="120" rows="25" name="b_content"></textarea><br/>
		<input type="submit" value="확인">
	</form>
	</p>
</body>
</html>