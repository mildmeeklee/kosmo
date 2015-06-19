<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery.js"></script>
<script src="js/schedule.js"></script>
</head>
<link href="css/View.css" rel="stylesheet" type="text/css">
<body>
	<div id="top">
		<h1 class="title" align="center">
		<span onclick="javascript:window.location='login.do'"> Nice Body Club</span></h1>

		<c:if test="${id !=null }">
			<p align="right">
				<strong>${id }</strong>님 &nbsp;&nbsp;&nbsp; <a href="logout.do"
					class="myButton">logout</a> <b>|</b> <a href="mypage.do?id=${id}"
					class="myButton">My page</a> <b>|</b> <a
					href="mypagecartlist.do?s_id=${id}" class="myButton">Cart</a>
			</p>
		</c:if>


		<c:if test="${id ==null }">
			<p align="right">
				<a href="loginForm.do" class="myButton">login</a> <b>|</b> 
				<a href="inputForm.do" class="myButton">Join</a>
			</p>
		</c:if>
		
		<hr color="gray" size="1" width="100%">
		<hr color="black" size="3" width=100%>
		
	
			<center>
				<a href="introcompanyIntro.do" class="MenuButtonF"> INDRODUCTION</a>&nbsp;&nbsp;
				<a href="notice.do" class="MenuButton">NOTICE</a>&nbsp;&nbsp;
				<a href="boardlist.do" class="MenuButton">BOARD</a> &nbsp;&nbsp;
				<a href="schedule.do" class="MenuButton">SCHEDULER</a>&nbsp;&nbsp;
				<a href="itemlist.do" class="MenuButton">HEALTH PRODUCT</a>
			</center>
	</div>




	<div id="sidebar">
		<p align="center">
			
			<img src="/healthclub/images/main.jpg" width="140" height="100"><br><br>
			<a href="schedule.do" class="SideButton">스&nbsp; 케&nbsp; 줄&nbsp; 작&nbsp; 성</a><br><br>
		</p>
	</div>
	<!-- --------------------------------------------- -->
	
	<div id="categorybar">
		<font size="7">&nbsp;&nbsp;Schedule</font> 
		<div id="categorybar_1" align="right">
			<a href="login.do">홈</a> > <a href="schedule.do">스케줄작성</a></div>
		
	</div>
	
	<div id="sectionBG">
	<br>
		<div id="section">
		<br>
<div id="schedulet">		
<form action="schedulesave.do" method="POST">	
<table border="1"  align="center">
	<tr>
		<td > </td>
		<td width="200"><b>MON</b></td>
		<td width="200"><b>TUE</b></td>
		<td width="200"><b>WED</b></td>
		<td width="200"><b>THU</b></td>
		<td width="200"><b>FRI</b></td>
	</tr>
	 
	<tr >
		<td>1400-1500</td>
		<td name="MON_1400_1500" id="MON_1400_1500">
		<input type="hidden" class="col" name ="MON_1400_1500" value=""></td>
		<td name="TUE_1400_1500" >
		<input type="hidden" class="col" name ="TUE_1400_1500" value=""></td>
		<td name="WED_1400_1500" >
		<input type="hidden" class="col" name ="WED_1400_1500" value=""></td>
		<td name="THU_1400_1500" >
		<input type="hidden" class="col" name ="THU_1400_1500" value=""></td>
		<td name="FRI_1400_1500" >
		<input type="hidden" class="col" name ="FRI_1400_1500" value=""></td>
	</tr>
	
	<tr>
		<td>1500-1600</td>
		<td name="MON_1500_1600" >
		<input type="hidden" class="col" name ="MON_1500_1600" value=""></td>
		<td name="TUE_1500_1600" >
		<input type="hidden" class="col" name ="TUE_1500_1600" value=""></td>
		<td name="WED_1500_1600" >
		<input type="hidden" class="col" name ="WED_1500_1600" value=""></td>
		<td name="THU_1500_1600" >
		<input type="hidden" class="col" name ="THU_1500_1600" value=""></td>
		<td name="FRI_1500_1600" >
		<input type="hidden" class="col" name ="FRI_1500_1600" value=""></td>
	</tr>
	
	<tr>
		<td>1600-1700</td>
		<td name="MON_1600_1700" >
		<input type="hidden" class="col" name ="MON_1600_1700" value=""></td>
		<td name="TUE_1600_1700" >
		<input type="hidden" class="col" name ="TUE_1600_1700" value=""></td>
		<td name="WED_1600_1700" >
		<input type="hidden" class="col" name ="WED_1600_1700" value=""></td>
		<td name="THU_1600_1700" >
		<input type="hidden" class="col" name ="THU_1600_1700" value=""></td>
		<td name="FRI_1600_1700" >
		<input type="hidden" class="col" name ="FRI_1600_1700" value=""></td>
	</tr>
	
	<tr>
		<td>1700-1800</td>
		<td name="MON_1700_1800" >
		<input type="hidden" class="col" name ="MON_1700_1800" value=""></td>
		<td name="TUE_1700_1800" >
		<input type="hidden" class="col" name ="TUE_1700_1800" value=""></td>
		<td name="WED_1700_1800" >
		<input type="hidden" class="col" name ="WED_1700_1800" value=""></td>
		<td name="THU_1700_1800" >
		<input type="hidden" class="col" name ="THU_1700_1800" value=""></td>
		<td name="FRI_1700_1800" >
		<input type="hidden" class="col" name ="FRI_1700_1800" value=""></td>
	</tr>
	
	<tr>
		<td>1800-1900</td>
		<td name="MON_1800_1900" >
		<input type="hidden" class="col" name ="MON_1800_1900" value=""></td>
		<td name="TUE_1800_1900" >
		<input type="hidden" class="col" name ="TUE_1800_1900" value=""></td>
		<td name="WED_1800_1900" >
		<input type="hidden" class="col" name ="WED_1800_1900" value=""></td>
		<td name="THU_1800_1900" >
		<input type="hidden" class="col" name ="THU_1800_1900" value=""></td>
		<td name="FRI_1800_1900" >
		<input type="hidden" class="col" name ="FRI_1800_1900" value=""></td>
	</tr>
	
	<tr>
		<td>1900-2000</td>
		<td name="MON_1900_2000" >
		<input type="hidden" class="col" name ="MON_1900_2000" value=""></td>
		<td name="TUE_1900_2000" >
		<input type="hidden" class="col" name ="TUE_1900_2000" value=""></td>
		<td name="WED_1900_2000" >
		<input type="hidden" class="col" name ="WED_1900_2000" value=""></td>
		<td name="THU_1900_2000" >
		<input type="hidden" class="col" name ="THU_1900_2000" value=""></td>
		<td name="FRI_1900_2000" >
		<input type="hidden" class="col" name ="FRI_1900_2000" value=""></td>
	</tr>
	
	<tr>
		<td>2000-2100</td>
		<td name="MON_2000_2100" >
		<input type="hidden" class="col" name ="MON_2000_2100" value=""></td>
		<td name="TUE_2000_2100" >
		<input type="hidden" class="col" name ="TUE_2000_2100" value=""></td>
		<td name="WED_2000_2100" >
		<input type="hidden" class="col" name ="WED_2000_2100" value=""></td>
		<td name="THU_2000_2100" >
		<input type="hidden" class="col" name ="THU_2000_2100" value=""></td>
		<td name="FRI_2000_2100" >
		<input type="hidden" class="col" name ="FRI_2000_2100" value=""></td>
	</tr>
	
	<tr>
		<td>2100-2200</td>
		<td name="MON_2100_2200" >
		<input type="hidden" class="col" name ="MON_2100_2200" value=""></td>
		<td name="TUE_2100_2200" >
		<input type="hidden" class="col" name ="TUE_2100_2200" value=""></td>
		<td name="WED_2100_2200" >
		<input type="hidden" class="col" name ="WED_2100_2200" value=""></td>
		<td name="THU_2100_2200" >
		<input type="hidden" class="col" name ="THU_2100_2200" value=""></td>
		<td name="FRI_2100_2200" >
		<input type="hidden" class="col" name ="FRI_2100_2200" value=""></td>
	</tr>
	<tr>
	<td colspan="6" align="right">
	<input type="submit" value="저장하기">
	</td>
	</tr>
</table>
</form>
</div>
<!-- <select id ="pselect">
	<option value="-----" selected>프로그램선택</option>
	<option value="h">헬스</option>
	<option value="y">요가</option>
	<option value="p">PT</option>
</select>
<table id="program_feedback"> -->
<div id="programlist">
<table>	
	 	<c:forEach var="programInfo" items="${programInfo}">
	 		<c:if test="${programInfo.p_group =='헬스'}">
			<tr>	<td>[ㅡ${programInfo.p_group}ㅡ]</td>
					<td><input type="button" class="programselect" value="${programInfo.p_name}"><br>
							시간 :: ${programInfo.p_position} |<br>강사 :: ${programInfo.p_teacher} | ${programInfo.p_content}</td>
					<td><input type="hidden"  class ="programselect1" 
						value="${programInfo.p_position}" title="${programInfo.p_group}" 
						name="${programInfo.p_name}" id="${programInfo.p_num}"></td>
			</tr>
			<tr>
			</tr>
			</c:if>
			
			<c:if test="${programInfo.p_group =='요가'}">
			<tr>	<td>[ㅡ${programInfo.p_group}ㅡ]</td>
					<td><input type="button" class="programselect" value="${programInfo.p_name}"><br>
							시간 :: ${programInfo.p_position} |<br> 강사 :: ${programInfo.p_teacher} | ${programInfo.p_content}</td>
					<td><input type="hidden"  class ="programselect1" 
						value="${programInfo.p_position}" title="${programInfo.p_group}" 
						name="${programInfo.p_name}" id="${programInfo.p_num}"></td>
			</tr>
			</c:if>
			
			<c:if test="${programInfo.p_group =='PT'}">
			<tr>	<td>[ㅡ${programInfo.p_group}ㅡ]</td>
					<td><input type="button" class="programselect" value="${programInfo.p_name}"><br>
							시간 :: ${programInfo.p_position} |<br> 강사 :: ${programInfo.p_teacher} | ${programInfo.p_content}</td>
					<td><input type="hidden"  class ="programselect1" 
						value="${programInfo.p_position}" title="${programInfo.p_group}" 
						name="${programInfo.p_name}" id="${programInfo.p_num}"></td>
			</tr>
			</c:if> 
		</c:forEach> 
		
</table>
</div>
</div>
	</div>
	
	<div id="footer">
				<b> 프렌차이즈 안내 | 휘트니스클럽 컨설팅 | 채용안내 | 제휴문의 |
				이용약관 | 개인정보취급방침 | 사이트 맵</b> <br /> <br> (주)아시아월드방방 서울시 구로구 가산동
				123번지 xx건물 대표: 은영누나 사업자등록번호 : 123-12-12345 통신판매업신고번호 :
				1234-가산동-1234호<br> 가산본점 123.123.1234 | 강남점 12.123.1234 | 부산점
				123.123.1234 <br />COPYRIGHTS 2015 WORLD 방방 ALL RIGHTS
				RESERVED
	</div>
	


</body>
</html>