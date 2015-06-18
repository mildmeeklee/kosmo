<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/button.css"> 
<title>Insert title here</title>
</head>
<style>
#layout{ margin :auto; width:90%; border : solid 1px gray; padding:5px;

}
#top{
	height : 100px;  background-color : #000000;  color : #ffffff;  margin-bottom:5px; 
	}

#sidebar{
	position : absolute; float : left; width : 10%; height : 97%; background-color : orange;
}
#section{
	width :87%; min-height : 400px;  background-color : #f0f0f0; margin: auto;
}
#footer{
width:79% min-height:400px; 
}
</style>
<body>
<div id="layout">
	<div id="top">
		<center>
			<h2>bangbang</h2>
		</center>
		
		<hr color="red" size="2" width=100%>
		<center>
			<font size="5"> <a class="button" href="introcompanyIntro.do">INDRODUCTION</a>
				| <a class="button" href="notice.do">NOTICE</a>| <a class="button"
				href="boardlist.do">BOARD</a> | <a class="button" href="schedule.do">SCHEDULER</a>
				| <a class="button" href="itemlist.do">HEALTH PRODUCT</a>
			</font>
			<hr color="red" size="2" width=100%>
		</center>
</div>

	<div id="section"> <decorator:body /> </div>
	
		 <div id="footer">
		 		<b> 프렌차이즈 안내 | 휘트니스클럽 컨설팅 | 채용안내 | 제휴문의 |
				이용약관 | 개인정보취급방침 | 사이트 맵</b> <br /> <br> (주)아시아월드방방 서울시 구로구 가산동
				123번지 xx건물 대표: 은영누나 사업자등록번호 : 123-12-12345 통신판매업신고번호 :
				1234-가산동-1234호<br> 가산본점 123.123.1234 | 강남점 12.123.1234 | 부산점
				123.123.1234 <br />COPYRIGHTS 2015 WORLD 방방 ALL RIGHTS
				RESERVED
		</div>
	</div>
</body>
</html>