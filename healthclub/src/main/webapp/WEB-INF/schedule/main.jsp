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
		<td><input type="text" class="col" title ="MON_1400_1500"  name="name" value=""></td>
		<td><input type="text" class="col" title ="TUE_1400_1500"  name="name" value=""></td>
		<td class="col" title="WED_1400_1500"></td>
		<td class="col" title="THU_1400_1500"></td>
		<td class="col" title="FRI_1400_1500"></td>
	</tr>
	
	<tr>
		<td>1500-1600</td>
		<td class="col" title="MON_1500_1600"></td>
		<td class="col" title="TUE_1500_1600"></td>
		<td class="col" title="WED_1500_1600"></td>
		<td class="col" title="THU_1500_1600"></td>
		<td class="col" title="FRI_1500_1600"></td>
	</tr>
	
	<tr>
		<td>1600-1700</td>
		<td class="col" title="MON_1600_1700"></td>
		<td class="col" title="TUE_1600_1700"></td>
		<td class="col" title="WED_1600_1700"></td>
		<td class="col" title="THU_1600_1700"></td>
		<td class="col" title="FRI_1600_1700"></td>
	</tr>
	
	<tr>
		<td>1700-1800</td>
		<td class="col" title="MON_1700_1800"></td>
		<td class="col" title="TUE_1700_1800"></td>
		<td class="col" title="WED_1700_1800"></td>
		<td class="col" title="THU_1700_1800"></td>
		<td class="col" title="FRI_1700_1800"></td>
	</tr>
	
	<tr>
		<td>1800-1900</td>
		<td class="col" title="MON_1800_1900"></td>
		<td class="col" title="TUE_1800_1900"></td>
		<td class="col" title="WED_1800_1900"></td>
		<td class="col" title="THU_1800_1900"></td>
		<td class="col" title="FRI_1800_1900"></td>
	</tr>
	
	<tr>
		<td>1900-2000</td>
		<td class="col" title="MON_1900_2000"></td>
		<td class="col" title="TUE_1900_2000"></td>
		<td class="col" title="WED_1900_2000"></td>
		<td class="col" title="THU_1900_2000"></td>
		<td class="col" title="FRI_1900_2000"></td>
	</tr>
	
	<tr>
		<td>2000-2100</td>
		<td class="col" title="MON_2000_2100"></td>
		<td class="col" title="TUE_2000_2100"></td>
		<td class="col" title="WED_2000_2100"></td>
		<td class="col" title="THU_2000_2100"></td>
		<td class="col" title="FRI_2000_2100"></td>
	</tr>
	
	<tr>
		<td>2100-2200</td>
		<td class="col" title="MON_2100_2200"></td>
		<td class="col" title="TUE_2100_2200"></td>
		<td class="col" title="WED_2100_2200"></td>
		<td class="col" title="THU_2100_2200"></td>
		<td class="col" title="FRI_2100_2200"></td>
	</tr>
</table>
<input type="submit" value="저장하기">
</form>
<select id ="pselect">
	<option value="-----" selected>프로그램선택</option>
	<option value="-----">헬스</option>
	<option value="-----">요가</option>
	<option value="-----">PT</option>
</select>
<table>
	
	<c:forEach var="programInfo" items="${programInfo}">
	<tr>
		<td><input type="button" class="programselect" value="${programInfo.p_name}">${programInfo.p_position}</td>
		<td><input type="hidden"  class ="programselect1" 
				value="${programInfo.p_position}" title="${programInfo.p_group}" 
				name="${programInfo.p_name}" id="${programInfo.p_num}" >
				</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>