<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>@RequestParam 사용</h3>
	<form action="saveitmanagers.do" method="post" enctype="multipart/form-data"><br/>
		제품명 : <input type="text" name="i_name" /> <br />
		가격 : <input type="text" name="i_price" /><br/>
		제품내용 : <input type="textArea" size="200" name="i_content" /> <br />
		리포트파일:<input type="file" name="file" /><br /> 
		<input type="radio" name="i_distinction" value="보충제" checked="checked"> 보충제<br/>
		<input type="radio" name="i_distinction" value="헬스용품"> 헬스용품<br/>
		<input type="radio" name="i_distinction" value="헬스의류"> 헬스의류<br/>
		<input type="submit" />
	</form> 
</body>
</html>