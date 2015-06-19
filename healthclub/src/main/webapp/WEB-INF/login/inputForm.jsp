<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link href="css/View.css" rel="stylesheet" type="text/css">
<script>	
	/*
	*	id관련 새창 띄우는 메서드
	*/
	function openConfirmid(userinput) {

		// 아이디를 입력했는지 검사
		if (userinput.id.value == "") {
			alert("아이디를 입력하세요");
			return;
		}
		// url과 사용자 입력 id를 조합합니다.
		url = "idcheck.do?id=" + userinput.id.value;
		//id에 값이 있다면 id라는 파라미터를 만들어준다.
		// 새로운 윈도우를 엽니다.
		open(url,"post",
				"toolbar=no ,width=500 ,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
	}
	
	/*
	*	우편번호관련 새창 띄우는 메서드
	*/
	function zipCheck() {
		url = "zip.do";
		window.open(url,"post",
						"toolbar=no ,width=500 ,height=300,directories=no,status=yes,scrollbars=yes,menubar=no");
	}
</script>
<body>
	 <div id="top">
   
      <h1 class="title" align="center">
		<span onclick="javascript:window.location='login.do'"> Nice Body Club</span></h1>
		</div>
		     <center>
            <a href="introcompanyIntro.do" class="MenuButtonF"> INDRODUCTION</a>&nbsp;&nbsp;
            <a href="notice.do" class="MenuButton">NOTICE</a>&nbsp;&nbsp;
            <a href="boardlist.do" class="MenuButton">BOARD</a> &nbsp;&nbsp;
            <a href="schedule.do" class="MenuButton">SCHEDULER</a>&nbsp;&nbsp;
            <a href="itemlist.do" class="MenuButton">HEALTH PRODUCT</a>
      </center>
      <br><br>

	<form:form commandName="logUserInfo" method="post" action="input.do" name="userinput">
		<form:errors />
		<table height="1000" width="1500" border="1" cellspacing="0" cellpadding="3"
			align="center">
			<tr>
				<td colspan="2" height="39" align="center"><font size="+1"><b>회원가입</b></font>
				</td>
			</tr>
			<tr>
				<td width="400">사용자 ID</td>
				<td width="1100">
				<form:input path="id" size="10" maxlength="12" />
				<form:errors path="id" /> 
				<input type="button" name="confirm_id"
					value="ID중복확인" OnClick="openConfirmid(this.form)"></td>
 
			</tr>
			<tr>
				<td width="300">비밀번호</td>
				<td width="400"><form:input path="pw" size="15" maxlength="15" /> 
				<form:errors path="pw" /></td>
			</tr>
			
			<tr>
				<td width="200">비밀번호 확인</td>
				<td width="400"><form:input path="pw2" size="15" maxlength="15" /> 
				<form:errors path="pw2" />
					</td>
			</tr>

			<tr>
				<td width="300">이름</td>

				<td width="400">
				<form:input path="name" name="name" type="text"
						size="10" maxlength="12" /> 
				<form:errors path="name" /></td>
			</tr>

			<tr>
				<td width="300">우편번호</td>
				<td><form:input path="userzipcode" name="userzipcode" type="text" size="7" /> 
					<form:errors path="userzipcode" /> 
					<input type="button" value="우편번호찾기" onClick="zipCheck()"> 우편번호를 검색
					하세요.</td>
			</tr> 
	
			<tr>
				<td>주소</td>
				<td><form:input id="address" name="address" type="text"
						size="70" path="address" /> <form:errors path="address" /> 나머지
					주소를 적어 주세요.</td>
			</tr>
			 
			<tr>
				<td width="300">성별</td>

				<td width="400">
				<form:radiobutton path="sex" value="남자" />남자
				<form:radiobutton path="sex" value="여자" />여자
				<form:errors path="sex" />
			</tr>
			
		
			
			<tr>
				<td width="300">생년월일</td>

				<td width="400"><form:input path="birth" name="birth"
						type="text" size="7" maxlength="6" /> <form:errors
						path="birth" />
			</tr>

			<tr>
				<td width="300">핸드폰 번호</td>

				<td width="400"><form:input path="ph" name="ph"
						type="text" size="15" maxlength="20" /> 
						<form:errors path="ph" />
			</tr>
			
			<tr>

				<td width="300">E-Mail</td>
				<td width="400"><form:input id="email" name="email" type="text"
						size="40" maxlength="30" path="email" /> <form:errors path="email" />
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="등   록"> 
				<input type="reset" name="reset" value="다시입력"> 
				<input type="button" value="가입안함" onclick="javascript:window.location='loginForm.do'"></td>
			</tr>
		</table> 
	</form:form>
	<br>
		<div id="footer">
		<p align="center">
         <b> 프렌차이즈 안내 | 휘트니스클럽 컨설팅 | 채용안내 | 제휴문의 |
            이용약관 | 개인정보취급방침 | 사이트 맵</b> <br /> <br> (주)아시아월드방방 서울시 구로구 가산동
            123번지 xx건물 대표: 은영누나 사업자등록번호 : 123-12-12345 통신판매업신고번호 :
            1234-가산동-1234호<br> 가산본점 123.123.1234 | 강남점 12.123.1234 | 부산점
            123.123.1234 <br />COPYRIGHTS 2015 WORLD 방방 ALL RIGHTS
            RESERVED
		</p>
			</div>
</body>
</html>