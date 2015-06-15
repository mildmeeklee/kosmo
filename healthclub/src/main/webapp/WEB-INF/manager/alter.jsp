<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="upItem.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="i_num" value="${item.getI_num() }" /><br />
		i_name : <input type="text" name="i_name" /> <br /> 이미지 파일 : <input
			type="file" name="file " /> <br /> i_content : <input type="text"
			name="i_content " /> <br /> i_price : <input type="text"
			name="i_price" /> <br /> <input type="radio" name="i_distinction"
			value="보충제" checked="checked"> 보충제<br /> <input type="radio"
			name="i_distinction" value="헬스용품"> 헬스용품<br /> <input
			type="radio" name="i_distinction" value="헬스의류"> 헬스의류<br />
		<button type="submit">수정하기</button>
	</form>
</body>
</html>