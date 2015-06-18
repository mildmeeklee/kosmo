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

<body>
	</head>
<link href="css/View.css" rel="stylesheet" type="text/css">
<body>
	<div id="top">
		<h1 class="title" align="center">BB Club</h1>

		<c:if test="${id !=null }">
			<p align="right">
				<strong>${id }</strong>�� &nbsp;&nbsp;&nbsp; <a href="logout.do"
					class="myButton">logout</a> <b>|</b> <a href="mypage.do?id=${id}"
					class="myButton">My page</a> <b>|</b> <a
					href="cartlist.do?s_id=${id}" class="myButton">Cart</a>
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
			<a href="mypage.do?id=${id}" class="SideButton">�� &nbsp;�� &nbsp;�� &nbsp;�� &nbsp;��</a><br><br>
			<a href="mypagescheduleViewM.do" class="SideButton">�� &nbsp;�� &nbsp;�� &nbsp;Ȯ &nbsp;��</a><br><br>
		
		</p>
	</div>
	<!-- --------------------------------------------- -->
	
	<div id="categorybar">
		<font size="7">&nbsp;&nbsp;My page</font> 
		<div id="categorybar_1" align="right">
			<a href="login.do">Ȩ</a> > <a href="mypage.do?id=${id}">My������</a></div>
		
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