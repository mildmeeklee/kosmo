<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/View.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
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
</head>

<body>

	<div id="top">

		<h1 class="title" align="center">
			<span onclick="javascript:window.location='login.do'"> Nice
				Body Club</span>
		</h1>


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
				<a href="loginForm.do" class="myButton">login</a> <b>|</b> <a
					href="inputForm.do" class="myButton">Join</a>
			</p>
		</c:if>

		<hr color="gray" size="1" width="100%">
		<hr color="black" size="3" width=100%>

		<center>
			<a href="introcompanyIntro.do" class="MenuButtonF"> INDRODUCTION</a>&nbsp;&nbsp;
			<a href="notice.do" class="MenuButton">NOTICE</a>&nbsp;&nbsp; <a
				href="boardlist.do" class="MenuButton">BOARD</a> &nbsp;&nbsp; <a
				href="schedule.do" class="MenuButton">SCHEDULER</a>&nbsp;&nbsp; <a
				href="itemlist.do" class="MenuButton">HEALTH PRODUCT</a>
		</center>
	</div>

	<div id="sidebar">
		<img src="/healthclub/images/main.jpg" width="140" height="100"><br><br>
		<a href="managerssubmit.do" class="SideButton"> 제품 올리기 </a></br></br> 
		<a href="managersControll.do" class="SideButton"> 제품수정하기 </a></br></br> 
		<a href="managerslist_m.do" class="SideButton"> 공지사항 관리 </a></br></br> 
		<a href="managersManager.do" class="SideButton"> 게시판 관리 </a></br></br> 
		<a href="managersprogramlist_m.do" class="SideButton"> 프로그램 관리 </a><br/></br>
		 <a href="chatadmin.do" class="SideButton">관리자 채팅</a><br /> 
			
	</div>
	<div id="sectionBG">
		<br>
		<div id="section">
			<decorator:body />
		</div>
	</div>
</body>
</html>
