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
</body>
</html>