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
	<form action="up.do" method="post" enctype="multipart/form-data">
	 <input type="hidden" name="num" value="${file.num }" /><br />
		subject : <input type="text" name="subject" /> <br />
		 content : <input type="text" name="content " /> <br /> 
		 file_orgname : <input type="file" name="file " /> <br /> 
		<button type="submit">수정하기</button>
	</form>
</body>
</html>