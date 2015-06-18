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

<body>
	<div id="top">
	
		<h1 class="title" align="center">BB Club</h1>
		
	
		<c:if test="${id !=null }">
			<p align="right">
				<strong>${id }</strong>´Ô &nbsp;&nbsp;&nbsp;
				<a href="logout.do" class="myButton">logout</a> <b>|</b> 
				<a href="mypage.do?id=${id}" class="myButton">My page</a> <b>|</b> 
				<a href="cartlist.do?s_id=${id}" class="myButton">Cart</a>
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
			<a href="itemweight.do" class="SideButton">º¸ &nbsp; &nbsp;Ãæ &nbsp; &nbsp;Á¦</a><br><br>
			<a href="itemhealthArticle.do" class="SideButton">Çï &nbsp;½º &nbsp;¿ë &nbsp;Ç°</a><br><br>
			<a href="itemhealthWear.do" class="SideButton">Çï &nbsp;½º &nbsp;ÀÇ &nbsp;·ù</a>
		</p>
		</div>
		
		<!-- --------------------------------------------- -->
		
		<div id="categorybar">
		<font size="7">&nbsp;&nbsp;Health Product</font> 
		<div id="categorybar_1" align="right">
			<a href="login.do">È¨</a> > <a href="itemweight.do">Çï½ºÁ¦Ç°</a></div>
		
	</div>
		
		<div id="sectionBG">
			<div id="section"> <decorator:body /></div>
		</div>




	</div>
</body>
</html>