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
				<strong>${id }</strong>�� &nbsp;&nbsp;&nbsp;
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
			<a href="itemweight.do" class="SideButton">�� &nbsp; &nbsp;�� &nbsp; &nbsp;��</a><br><br>
			<a href="itemhealthArticle.do" class="SideButton">�� &nbsp;�� &nbsp;�� &nbsp;ǰ</a><br><br>
			<a href="itemhealthWear.do" class="SideButton">�� &nbsp;�� &nbsp;�� &nbsp;��</a>
		</p>
		</div>
		
		<!-- --------------------------------------------- -->
		
		<div id="categorybar">
		<font size="7">&nbsp;&nbsp;Health Product</font> 
		<div id="categorybar_1" align="right">
			<a href="login.do">Ȩ</a> > <a href="itemweight.do">�ｺ��ǰ</a></div>
		
		</div>
		<div id="sectionBG">
			<div id="section"> <decorator:body /></div>
		</div>

		<div id="footer">
				<b> ���������� �ȳ� | ��Ʈ�Ͻ�Ŭ�� ������ | ä��ȳ� | ���޹��� |
				�̿��� | ����������޹�ħ | ����Ʈ ��</b> <br /> <br> (��)�ƽþƿ����� ����� ���α� ���굿
				123���� xx�ǹ� ��ǥ: �������� ����ڵ�Ϲ�ȣ : 123-12-12345 ����Ǹž��Ű��ȣ :
				1234-���굿-1234ȣ<br> ���꺻�� 123.123.1234 | ������ 12.123.1234 | �λ���
				123.123.1234 <br />COPYRIGHTS 2015 WORLD ��� ALL RIGHTS
				RESERVED
		</div>
</body>
</html>