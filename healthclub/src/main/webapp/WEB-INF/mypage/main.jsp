<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
</head>
<style>
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
					${id }�� |<a href="logout.do">logout</a> | <a
						href="mypage.do?id=${id}">my page</a> | <a>cart</a>
				</p>
			</c:if>


			<c:if test="${id ==null }">
				<p align="right">
					�α��� ���ּ��� : <a href="loginForm.do">login</a>
			</c:if>

			<hr color="red" size="2" width=100%>
			<center>
				<font size="5"> <b>&diams;�Ұ� | <a href="notice.do">&diams;��������</a>|
						<a href="boardlist.do">&diams;�Խ���</a> | &diams;aa | <a
						href="itemlist.do">&diams;�ｺ��ǰ</b></a> </b></font>
				<hr color="red" size="2" width=100%>
			</center>
		</div>

		<a href="itemsubmit.do"> ��ǰ �ø��� upload</a></br> <a href="noticelist_m.do">
			������ Ȩ������ ���� upload</a>

		<div id="sidebar">
			<p align="center">

				<input type="button" value="�� ����"
					onclick="javascript:window.location='mypage.do?id=${id}'"><br>
				<br> <input type="button" value="������"
					onclick="javascript:window.location='mypagescheduleViewM.do'"><br>
				<br> <input type="button" value=".�������������ϰ��������"
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