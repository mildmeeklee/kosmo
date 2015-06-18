<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/View.css" rel="stylesheet"  type="text/css" >
<link href="/healthclub/css/button.css" rel="stylesheet"  type="text/css" >
<title>Insert title here</title>
</head>
<style>
#sectionBG{
position : relative;
margin-left: 200px;
margin-bottom: 100px;
}

#con {
	width: 700px;
	margin: 0 auto;
	overflow: hidden;
}

#aside1 {
	width: 350px;
	float: left;
}

#aside2 {
	width: 350px;
	float: right;
}
</style>
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

	<div id="sectionBG">
	<br>
		<div id="section"> <decorator:body /></div>
	</div>
	
	
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