<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/View.css">
</head>
<style>
#sectionBG{
	float: left;
	width: 950px;
	height: 100%;
	background-color : #efefef;
	border-radius:0px 0px 50px 50px;
	margin: auto;
	
}

#section{
	margin-bottom : 30px;
	width: 900px;
	height: 90%;
	background-color : white;
}

#footer{
	font-family: 'Nanum Pen Script', cursive;
	position : relative;
	background: black;
	width: 1110px;
	height: 10%;
	color: white;
	margin-left: 10%;
}
</style>
<body>
	<div id="top">
	
		<h1 class="title" align="center">BB Club</h1>
		
	
		<c:if test="${id !=null }">
			<p align="right">
				<strong>${id }</strong>님 &nbsp;&nbsp;&nbsp;
				<a href="logout.do" class="myButton">logout</a> <b>|</b> 
				<a href="mypage.do?id=${id}" class="myButton">My page</a> <b>|</b> 
				<a href="mypagecartlist.do?s_id=${id}" class="myButton">Cart</a>
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
			<a href="itemweight.do" class="SideButton">보 &nbsp; &nbsp;충 &nbsp; &nbsp;제</a><br><br>
			<a href="itemhealthArticle.do" class="SideButton">헬 &nbsp;스 &nbsp;용 &nbsp;품</a><br><br>
			<a href="itemhealthWear.do" class="SideButton">헬 &nbsp;스 &nbsp;의 &nbsp;류</a>
		</p>
		</div>
		
		<!-- --------------------------------------------- -->
		
		<div id="categorybar">
		<font size="7">&nbsp;&nbsp;Health Product</font> 
		<div id="categorybar_1" align="right">
			<a href="login.do">홈</a> > <a href="itemweight.do">헬스제품</a></div>
		
		</div>
		<div id="sectionBG">
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
</body>
</html>