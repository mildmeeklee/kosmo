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
		   
			<td>�̸�</td>
			<td align="center">${item.getI_name()}</td>
		</tr>
		<tr>
			<td>��ȣ</td>
		<td align="center">${item.getI_num() }</td>
		</tr> 

		<tr>
			<td>?</td>
			<td align="center">${item. getI_price() }</td>  
		</tr>
		<tr>
			<td>����</td>
 		<td align="center">${item. getI_content() }</td> 
		</tr>

		<tr>
			<td>�ð�</td>
		 <td align="center">${item.getI_time() }</td> 
		</tr>

		<tr>
			<td>��ȸ��</td>
		 <td align="center">${item.getI_count() }</td>
		</tr>
	</table>
		
	<form action="Cart.do" method="POST">
		<select name="s_num">
			<option id="1" value="1"> 1��</option>
			<option id="2" value="2"> 2��</option>
			<option id="3" value="3"> 3��</option>
			<option id="4" value="4"> 4��</option>
			<option id="5" value="5"> 5��</option>
		</select>

		<input name="i_tem" type="hidden" value="${item.getI_num() }"/>
		<input name="s_id" type="hidden" value="${id }"/>
		<input type="submit" value="Ȯ��">
	</form>
</body>
</html>