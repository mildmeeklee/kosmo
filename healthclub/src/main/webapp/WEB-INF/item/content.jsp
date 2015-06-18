<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table align="center" frame="hsides" rules="rows">
		<tr align="center">
		   
			<td width="200">이름</td>
			<td width="500">${item.getI_name()}</td>
		</tr>
		<tr align="center">
			<td>번호</td>
		<td>${item.getI_num() }</td>
		</tr> 

		<tr align="center">
			<td>가격</td>
			<td>${item. getI_price() }</td>  
		</tr>
		<tr align="center">
			<td>내용</td>
 		<td>${item. getI_content() }</td> 
		</tr>

		<tr align="center">
			<td>시간</td>
		 <td>${item.getI_time() }</td> 
		</tr>

		<tr align="center">
			<td>조회수</td>
		 <td>${item.getI_count() }</td>
		</tr>
	</table>
	<br>
		
	<form align="center" action="mypageCart.do" method="POST">
		<select name="s_num">
			<option id="1" value="1"> 1개</option>
			<option id="2" value="2"> 2개</option>
			<option id="3" value="3"> 3개</option>
			<option id="4" value="4"> 4개</option>
			<option id="5" value="5"> 5개</option>
		</select>

		<input name="i_item" type="hidden" value="${item.getI_num() }"/>
		<input name="s_id" type="hidden" value="${id }"/>
		<input type="submit" value="확인">
	</form>
	<br/>
	<p align="center">
	<img src="/healthclub/image/${item.i_imagePath }" width="700"
						height="500">
	</p>
</body>
</html>