<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script>
		$(function() {

			$("select")
					.change(
							function() {
								url = $(this).val();
								window.location = url;
							});
		});
	</script>
<p align="center">
	<select >
		<option value="itemlist.do" selected>��ǰ ���</option>
		<option value="itemtoplist.do">�ֽŻ�ǰ</option>
		<option value="itemcount.do">�α��ǰ</option>
	</select>
</p>
	<c:set var="i" value="0"/>

	<table Align="Center" border="0"  >
		
		<tr >
			
			<c:forEach var="item" items="${itemtable}">
				
				<c:if test="${i%2==0}">
				</tr>
				</c:if>
				<c:if test="${i%2==0}">
				<tr>
				</c:if>
				<td align="center" width="200" height="150"><a
					href="itemcontent.do?i_num=${item.i_num}"><img
						src="/healthclub/image/${item.i_imagePath }" width="200"
						height="150"></a>
				<td align="center"> ��ǰ �̸� : ${item.i_name} <br>
						��ǰ ��ȣ: 	${item.i_num} <br>
						���� : <fmt:formatNumber value="${item.i_price}"
						type="currency" currencySymbol="$" /> <br>
						��ȸ�� : ${item.i_count}
				</td>
				<c:set var="i" value="${i+1 }"/>
				
		</c:forEach>
		</tr>

	</table>
	<p align="center">
	${page}
	</p>
	<br>
	<br>
</body>
</html>