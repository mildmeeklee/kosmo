<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
function zipCheck() {
	url = "zip.do";
	window.open(url,"post",
					"toolbar=no ,width=500 ,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
}
</script>
<body>
<form action="mypageUpUp.do" method="POST">
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
			<td width="300">�����ȣ</td>
				<td><input name="userzipcode" type="text" size="7" /> 
					<input type="button" value="�����ȣã��" onClick="zipCheck()"> �����ȣ�� �˻�
					�ϼ���.</td> 
		</tr>

		<tr>
			<td>�ּ�</td>
		 <td align="center"><input name = "address" type="text" value="${userlist.getAddress() }"></td> 
		</tr>

		<tr>
			<td width="300">����</td>
				<td width="400">
				<input type="radio" name="sex" value="����" checked />����
				<input type="radio" name="sex" value="����" />����
				
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