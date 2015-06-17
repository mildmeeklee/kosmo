<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/button.css">
</head>
<style>
.button {
	border: 1px solid #050505;
	background: #8e9091;
	background: -webkit-gradient(linear, left top, left bottom, from(#242324),
		to(#8e9091));
	background: -webkit-linear-gradient(top, #242324, #8e9091);
	background: -moz-linear-gradient(top, #242324, #8e9091);
	background: -ms-linear-gradient(top, #242324, #8e9091);
	background: -o-linear-gradient(top, #242324, #8e9091);
	background-image: -ms-linear-gradient(top, #242324 0%, #8e9091 100%);
	padding: 2px 4px;
	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;
	-webkit-box-shadow: rgba(255, 255, 255, 0.4) 0 1px 0, inset
		rgba(255, 255, 255, 0.4) 0 1px 0;
	-moz-box-shadow: rgba(255, 255, 255, 0.4) 0 1px 0, inset
		rgba(255, 255, 255, 0.4) 0 1px 0;
	box-shadow: rgba(255, 255, 255, 0.4) 0 1px 0, inset
		rgba(255, 255, 255, 0.4) 0 1px 0;
	text-shadow: #7ea4bd 0 1px 0;
	color: #f5f8fa;
	font-size: 21px;
	font-family: helvetica, serif;
	text-decoration: none;
	vertical-align: middle;
}

.button:hover {
	border: 1px solid #0a3c59;
	text-shadow: #1e4158 0 1px 0;
	background: #838485;
	background: -webkit-gradient(linear, left top, left bottom, from(#d9dde0),
		to(#838485));
	background: -webkit-linear-gradient(top, #d9dde0, #838485);
	background: -moz-linear-gradient(top, #d9dde0, #838485);
	background: -ms-linear-gradient(top, #d9dde0, #838485);
	background: -o-linear-gradient(top, #d9dde0, #838485);
	background-image: -ms-linear-gradient(top, #d9dde0 0%, #838485 100%);
	color: #0a0a0a;
}

.button:active {
	text-shadow: #1e4158 0 1px 0;
	border: 1px solid #0a3c59;
	background: #65a9d7;
	background: -webkit-gradient(linear, left top, left bottom, from(#3e779d),
		to(#838485));
	background: -webkit-linear-gradient(top, #3e779d, #65a9d7);
	background: -moz-linear-gradient(top, #3e779d, #65a9d7);
	background: -ms-linear-gradient(top, #3e779d, #65a9d7);
	background: -o-linear-gradient(top, #3e779d, #65a9d7);
	background-image: -ms-linear-gradient(top, #3e779d 0%, #65a9d7 100%);
	color: #fff;
}

#layout {
	margin: auto;
	width: 90%;
	border: solid 1px gray;
	padding: 5px;
}

#top {
	height: 100px;
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
	min-height: 400px;
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
				<font size="5"> <a class="button" href="introcompanyIntro.do">&diams;INDRODUCTION</a>
					| <a class="button" href="notice.do">&diams;NOTICE</a>| <a
					class="button" href="boardlist.do">&diams;BOARD</a> | <a
					class="button" href="mypageschedule.do">&diams;SCHEDULER</a> | <a
					class="button" href="itemlist.do">&diams;HEALTH PRODUCT</a>
				</font>
				<hr color="red" size="2" width=100%>
			</center>
		</div>



		<div id="sidebar">
			<p align="center">

				<input type="button" value="회사소개" class="button"
					onclick="javascript:window.location='introcompanyIntro.do'"><br>

				<input type="button" value="헬스프로그램" class="button"
					onclick="javascript:window.location='introhealthProgram.do'">

				<input type="button" value="프로그램 강사" class="button"
					onclick="javascript:window.location='introprogramTeacher.do'"><br>

				<input type="button" value="시설" class="button"
					onclick="javascript:window.location='introfacility.do'"><br>

				<input type="button" value="제휴회사" class="button"
					onclick="javascript:window.location='introalianceBusiness.do'"><br>
			</p>
		</div>
		<!-- --------------------------------------------- -->
		<div id="section">
			<decorator:body />
		</div>

		<div id="footer"></div>

	</div>
</body>
</html>