<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

function openConfirmid(userinput) {
    url = "inputForm.do";
    open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");

}
</script>
</head>

<body>

<center>
<h1>안녕하세요. 방방헬스클럽에 오신 여러분을 환영합니다. <br> 로그인해주세요.</h1></center>
<form name="myform" action="login.do" method="post">
<TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
 
  <TR height="30"> 
    <TD colspan="2" ><STRONG>회원로그인</STRONG></TD></TR>
 
  <TR height="30">
    <TD width="110"  align=center>아이디</TD>
    <TD width="150"  align=center>
       <INPUT type="text" name="id" size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD width="110"  align=center>비밀번호</TD>
    <TD width="150"  align=center>
      <INPUT type=password name="pw"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" >
      <INPUT type=submit value="로그인">
      <INPUT type=reset value="다시입력">
      <input type="button" value="회원가입" OnClick="openConfirmid(this.form)">
     </TD>
   </TR>
</TABLE>
</form>


<br><br><br><br>
<hr size=5 color="red">
<br><br><br><br>


<form name="myform2" action="login.do" method="post">
<TABLE cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
 
  <TR height="30"> 
    <TD colspan="2" ><STRONG>관리자로그인</STRONG></TD></TR>
 
  <TR height="30">
    <TD width="110"  align=center>아이디</TD>
    <TD width="150"  align=center>
       <INPUT type="text" name="id" size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD width="110"  align=center>비밀번호</TD>
    <TD width="150"  align=center>
      <INPUT type=password name="passwd"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" >
      <INPUT type=submit value="로그인">
      <INPUT type=reset value="다시입력">
    </TD>
   </TR>
</TABLE>
</form>
</body>
</html>