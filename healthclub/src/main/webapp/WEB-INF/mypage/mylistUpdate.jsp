<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="UpUp.do" method="POST">
	<table border="1" cellpadding="15px">
		<tr align="center">

			<td>ID</td>
			<td align="center"><input name="id" type="hidden" value="${userlist.getId() }">
				${userlist.getId() }</td>
		</tr>
		<tr>
			<td>������ ��й�ȣ</td>
		<td align="center"><input name = "pw" type="text"></td>
		</tr>
			<tr>
			<td>��й�ȣ Ȯ��</td>
		<td align="center"><input name = "pw2" type="text"></td>
		</tr> 

		<tr>
			<td>NAME</td>
			<td align="center"><input name = "name" type="text" value="${userlist.getName() }"></td>  
		</tr>
		<tr>
			<td>�����ȣ</td>
 		<td align="center"><input name = "userzipcode" type="text" value="${userlist.getUserzipcode() }"></td> 
		</tr>

		<tr>
			<td>�ּ�</td>
		 <td align="center"><input name = "address" type="text" value="${userlist.getAddress() }"></td> 
		</tr>

		<tr>
			<td>����</td>
		 <td align="center"><input name = "sex" type="text" value="${userlist.getSex() }"></td>
		</tr>

		<tr>
			<td>�ڵ�����ȣ</td>
			<td align="center"><input name = "ph" type="text" value="${userlist.getPh()}"></td> 
		</tr>

		<tr>
			<td>�������</td>
			 <td align="center"><input name = "birth" type="text" value="${userlist.getBirth() }"></td>
		</tr>

		<tr>
			<td>E-mail</td>
		 <td align="center"><input name = "email" type="text" value="${userlist.getEmail() }"></td> 
		</tr>
		
	</table>
	<input type="submit" value="���� �Ϸ�">
	</form>
</body>
</html>