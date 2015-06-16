<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/button.css">
</head>
<style>

#layout {
	margin: auto;
	width: 90%;
	padding: 5px;
}

#top {
	height: 150px;
	background-color: #000000;
	color: #ffffff;
	margin-bottom: 5px;
}

#sidebar {
	position: absolute;
	float: left;
	width: 10%;
	height: 97%;
	background-color: orange;
}

#section {
	width: 87%;
	height: 1800;
	background-color: #f0f0f0;
	margin-left: auto;
}

#footer {
	width: 79% min-height:400px;
}
</style>
<body>
	<div id="layout">
		<div id="top">
			<center>
				<h2>bangbang</h2>
			</center>
			<c:if test="${id !=null }">
				<p align="right">
					${id }님 |<a href="logout.do">logout</a> | <a
						href="mypage.do?id=${id}">my page</a> | <a>cart</a>
				</p>
			</c:if>


			<c:if test="${id ==null }">
				<p align="right">
					로그인 해주세요 : <a href="loginForm.do">login</a>
			</c:if>

			<hr color="red" size="2" width=100%>
			<center>
				<font size="5"> <a class="button" href="introcompanyIntro.do">INDRODUCTION</a>
					| <a class="button" href="notice.do">NOTICE</a>| <a class="button"
					href="boardlist.do">BOARD</a> | <a class="button"
					href="schedule.do">SCHEDULER</a> | <a class="button"
					href="itemlist.do">HEALTH PRODUCT</a>
				</font>
				<hr color="red" size="2" width=100%>
			</center>
		</div>

		<div id="sidebar">
			<p align="center">
				<img alt="" src="/healthclub/img/item1.jpg" width="100" height="80"><br>
				<input type="button" value="보충제이미지"
					onclick="javascript:window.location='itemweight.do'"><br>
				<hr size="1" color="red">
			</p>
			<p align="center">
				<img alt="" src="/healthclub/img/item2.jpg" width="100" height="80"><br>
				 <input type="button" value="헬스용품"
					onclick="javascript:window.location='itemhealthArticle.do'"><br>
				<hr size="1" color="red">
			</p>
			<p align="center">
				<img alt="" src="/healthclub/img/item3.gif" width="100" height="80" ><br>
				
				
					 <input type="button" value="헬스의류"
					onclick="javascript:window.location='itemhealthWear.do'"><br>
				<br> <br>
			</p>
		</div>
		<!-- --------------------------------------------- -->
		<div id="section">
			<decorator:body />
		</div>



	</div>
</body>
</html>