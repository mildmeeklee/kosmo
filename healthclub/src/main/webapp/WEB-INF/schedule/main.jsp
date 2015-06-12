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
<body>
<form action="schedulesave.do" method="POST">
<table border="1"  width="200" align="center">
	<tr>
		<td > </td>
		<td>MON</td>
		<td>TUE</td>
		<td>WED</td>
		<td>THU</td>
		<td>FRI</td>
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
</table>
<input type="submit" value="저장하기">
</form>
<!-- <select id ="pselect">
	<option value="-----" selected>프로그램선택</option>
	<option value="h">헬스</option>
	<option value="y">요가</option>
	<option value="p">PT</option>
</select>
<table id="program_feedback"> -->
<table>	
	 	<c:forEach var="programInfo" items="${programInfo}">
	 		<c:if test="${programInfo.p_group =='헬스'}">
			<tr>	<td>[ㅡㅡㅡㅡ${programInfo.p_group}ㅡㅡㅡㅡ]</td>
					<td><input type="button" class="programselect" value="${programInfo.p_name}">
							시간 :: ${programInfo.p_position} | 강사 :: ${programInfo.p_teacher} | ${programInfo.p_content}</td>
					<td><input type="hidden"  class ="programselect1" 
						value="${programInfo.p_position}" title="${programInfo.p_group}" 
						name="${programInfo.p_name}" id="${programInfo.p_num}"></td>
			</tr>
			</c:if>
			
			<c:if test="${programInfo.p_group =='요가'}">
			<tr>	<td>[ㅡㅡㅡㅡ${programInfo.p_group}ㅡㅡㅡㅡ]</td>
					<td><input type="button" class="programselect" value="${programInfo.p_name}">
							시간 :: ${programInfo.p_position} | 강사 :: ${programInfo.p_teacher} | ${programInfo.p_content}</td>
					<td><input type="hidden"  class ="programselect1" 
						value="${programInfo.p_position}" title="${programInfo.p_group}" 
						name="${programInfo.p_name}" id="${programInfo.p_num}"></td>
			</tr>
			</c:if>
			
			<c:if test="${programInfo.p_group =='PT'}">
			<tr>	<td>[ㅡㅡㅡㅡ${programInfo.p_group}ㅡㅡㅡㅡ]</td>
					<td><input type="button" class="programselect" value="${programInfo.p_name}">
							시간 :: ${programInfo.p_position} | 강사 :: ${programInfo.p_teacher} | ${programInfo.p_content}</td>
					<td><input type="hidden"  class ="programselect1" 
						value="${programInfo.p_position}" title="${programInfo.p_group}" 
						name="${programInfo.p_name}" id="${programInfo.p_num}"></td>
			</tr>
			</c:if> 
		</c:forEach> 
		
</table>

</body>
</html>