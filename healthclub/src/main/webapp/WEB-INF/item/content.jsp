<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table border="1" cellpadding="15px">
		<tr align="center">
		   
			<td>이름</td>
			<td align="center">${item.getI_name()}</td>
		</tr>
		<tr>
			<td>번호</td>
		<td align="center">${item.getI_num() }</td>
		</tr> 

		<tr>
			<td>?</td>
			<td align="center">${item. getI_price() }</td>  
		</tr>
		<tr>
			<td>내용</td>
 		<td align="center">${item. getI_content() }</td> 
		</tr>

		<tr>
			<td>시간</td>
		 <td align="center">${item.getI_time() }</td> 
		</tr>

		<tr>
			<td>조회수</td>
		 <td align="center">${item.getI_count() }</td>
		</tr>
	</table>
</body>
</html>