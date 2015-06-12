<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1 align="center"> 나의 스케줄표!</h1>
<table border="1" align="center">
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
		<td name="MON_1400_1500">
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_1400_1500==programView.p_num}">
					program :: ${programView.p_group}</br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_1400_1500" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_1400_1500==programView.p_num}">
					program :: ${programView.p_group}</br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_1400_1500" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_1400_1500==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_1400_1500" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_1400_1500==programView.p_num}">
					program :: ${programView.p_group}</br>  
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_1400_1500" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_1400_1500==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>1500-1600</td>
		<td name="MON_1500_1600" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_1500_1600==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_1500_1600" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_1500_1600==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_1500_1600" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_1500_1600==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_1500_1600" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_1500_1600==programView.p_num}">
					program :: ${programView.p_group}  </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_1500_1600" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_1500_1600==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>1600-1700</td>
		<td name="MON_1600_1700" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_1600_1700==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_1600_1700" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_1600_1700==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_1600_1700" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_1600_1700==programView.p_num}">
					program :: ${programView.p_group}  </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_1600_1700" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_1600_1700==programView.p_num}">
					program :: ${programView.p_group}  </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_1600_1700" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_1600_1700==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>1700-1800</td>
		<td name="MON_1700_1800" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_1700_1800==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_1700_1800" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_1700_1800==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_1700_1800" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_1700_1800==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_1700_1800" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_1700_1800==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_1700_1800" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_1700_1800==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>1800-1900</td>
		<td name="MON_1800_1900" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_1800_1900==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_1800_1900" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_1800_1900==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_1800_1900" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_1800_1900==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_1800_1900" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_1800_1900==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_1800_1900" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_1800_1900==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>1900-2000</td>
		<td name="MON_1900_2000" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_1900_2000==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_1900_2000" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_1900_2000==programView.p_num}">
					program :: ${programView.p_group}  </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_1900_2000" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_1900_2000==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_1900_2000" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_1900_2000==programView.p_num}">
					program :: ${programView.p_group}  </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_1900_2000" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_1900_2000==programView.p_num}">
					program :: ${programView.p_group}  </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>2000-2100</td>
		<td name="MON_2000_2100" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_2000_2100==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_2000_2100" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_2000_2100==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_2000_2100" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_2000_2100==programView.p_num}">
					program :: ${programView.p_group}   </br>    
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_2000_2100" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_2000_2100==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_2000_2100" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_2000_2100==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td>2100-2200</td>
		<td name="MON_2100_2200" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.MON_2100_2200==programView.p_num}">
					program :: ${programView.p_group} </br>      
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="TUE_2100_2200" >
		<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.TUE_2100_2200==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="WED_2100_2200" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.WED_2100_2200==programView.p_num}">
					program :: ${programView.p_group} </br>     
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="THU_2100_2200" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.THU_2100_2200==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
		<td name="FRI_2100_2200" >
			<c:forEach var="programView" items="${programView }">
				<c:if test="${scheduleView.FRI_2100_2200==programView.p_num}">
					program :: ${programView.p_group}</br>       
					프로그램명 :: ${programView.p_name}</br>  
					강      사 :: ${programView.p_teacher}</br>  
				</c:if>
			</c:forEach>
		</td>
	</tr>
</table>
</body>
</html>