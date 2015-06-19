<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
	function openConfirmid() {
		url = "inputForm.do";
		
		open(
				url,
				"confirm",
				"toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");

	}
</script>
</head>

<body>

		<h1 align="center">
			Nice Body Club <br> - please Login -
		</h1>


	<hr size="3" color="black">
	<hr size="1" color="gray">
	<br>
	<br>


	<div id="con">
		<div id="aside1">
			<form name="myform" action="login.do" method="POST">
				<TABLE class="tb" width="260" border=0
					align="center">

					<TR height="50">
						<TD colspan="2"><STRONG>회원로그인</STRONG></TD>
					</TR>

					<TR height="50">
						<TD width="110" align=center>아이디</TD>
						<TD width="150" align=center><INPUT type="text" name="id"
							size="15" maxlength="12"></TD>
					</TR>
					<TR height="50">
						<TD width="110" align=center>비밀번호</TD>
						<TD width="150" align=center><INPUT type=password name="pw"
							size="15" maxlength="12"></TD>
					</TR>
					<TR height="50" align="center">
		
						<TD colspan="2">
						
						<INPUT type="submit" value="로그인">
						
						 <input type="button" value="회원가입" OnClick="javascript:window.location='inputForm.do'">
						 </TD>
					</TR>
				</TABLE>
			</form>
		</div>

		<div id="aside2">
			<form name="myform2" action="Manager.do" method="post">
				<TABLE class="tb"  width="260" border=0
					align="center">
					<TR height="50">
						<TD colspan="2"><STRONG>관리자로그인</STRONG></TD>
					</TR>

					<TR height="50">
						<TD width="110" align=center>아이디</TD>
						<TD width="150" align=center><INPUT height="50" type="text" name="id"
							size="15" maxlength="12"></TD>
					</TR>
					<TR height="50">
						<TD width="110" align=center>비밀번호</TD>
						<TD width="150" align=center><INPUT height="50" type="password" name="pw"
							size="15" maxlength="12"></TD>
					</TR>
					<TR height="50" align="center">
						<TD colspan="2"><INPUT class="button"  type=submit value="로그인"> <INPUT class="button"
							type=reset value="다시입력"></TD>
					</TR>
				</TABLE>
			</form>
		</div>
	</div>
</body>
</html>