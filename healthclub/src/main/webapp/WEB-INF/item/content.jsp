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
		
	<form action="Cart.do" method="POST">
		<select name="s_num">
			<option id="1" value="1"> 1개</option>
			<option id="2" value="2"> 2개</option>
			<option id="3" value="3"> 3개</option>
			<option id="4" value="4"> 4개</option>
			<option id="5" value="5"> 5개</option>
		</select>

		<input name="i_tem" type="hidden" value="${item.getI_num() }"/>
		<input name="s_id" type="hidden" value="${id }"/>
		<input type="submit" value="확인">
	</form>
</body>
</html>