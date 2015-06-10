<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="programwrite.do" method="POST">
		프로그램종류 :: <select name="p_group">
						<option selected="selected">프로그램선택해</option>
						<option value="헬스">헬스</option>
						<option value="요가">요가</option>
						<option value="PT">PT</option>
					</select></br>
		프로그램이름 :: <input type="text" name ="p_name"></br>
		강사 :: <input type="text" name ="p_teacher"></br>
		요일:: <select name="p_day">
						<option selected="selected">요일선택해</option>
						<option value="MON">MON</option>
						<option value="TUE">TUE</option>
						<option value="WED">WED</option>
						<option value="THU">THU</option>
						<option value="FRI">FRI</option>
					</select></br>
		시간:: <select name="p_time">
						<option selected="selected">시간선택해</option>
						<option value="1400-1500">1400-1500</option>
						<option value="1500-1600">1500-1600</option>
						<option value="1600-1700">1600-1700</option>
						<option value="1700-1800">1700-1800</option>
						<option value="1800-1900">1800-1900</option>
						<option value="1900-2000">1900-2000</option>
						<option value="2000-2100">2000-2100</option>
						<option value="2100-2200">2100-2200</option>
					</select></br>
		내용 :: <br/>
		<textarea cols="40" rows="20" name="p_content"></textarea><br/>
		<input type="submit" value="확인">
	</form>
</body>
</html>



