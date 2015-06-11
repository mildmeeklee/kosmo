<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<script src="http://code.jquery.com/jquery.js"></script>
<script>
$(function(){

	
	$("select").change(function(){
		url = $(this).val();
	    open(url , "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");
	});
});
</script>
<select>
	<option value="itemlist.do" selected>제품 목록</option>
	<option value="itemtoplist.do">최신상품</option>
	<option value="itemcount.do">인기상품</option>
</select>
	<table border="1" cellpadding="15px">
		<tr align="center">
			<th>제품명</th>
			<th>제품번호</th>
			<th>제품가격</th>
			<th>제품내용</th>
			<th>등록시간</th>
			<th>조회수</th>
			<th>제품이미지</th>
	
			<c:forEach var="item" items="${itemtable}">
				<tr>
					<td align="center">${item.i_name}</td>
					<td align="center">${item.i_num}</td>
					<td align="center">${item.i_price}</td>
					<td align="center">${item.i_content}</td>
					<td align="center"><fmt:formatDate type="date" value="${item.i_time}" var="date"/>${date }</td>
					<td align="center">${item.i_count}</td>
					<td><a href="itemcontent.do?i_num=${item.i_num}"><img src="/healthclub/image/${item.i_imagePath }" width="100" height="100">				
					</a></td>
					<%-- <td>
						<form action="selone.do" method="post">
							<input type="hidden" name="num" value="${file.num }">
							<button type="submit">수정하기</button>
						</form>
					</td>
					<td>
						<form action="del.do" method="post">
							<input type="hidden" name="num" value="${file.num }">
							<button>삭제 하기</button>
						</form>
					</td>
					<td>
						<form action="down.do" method="post">
							<input type="hidden" name="path2" value="${file.file_path}">
							<button>다운 받기</button>
						</form>
					</td> --%>
				</tr>
			</c:forEach>
	
	</table>

		${page}
	<br>
	<br>
</body>
</html>