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
		 		<b> ���������� �ȳ� | ��Ʈ�Ͻ�Ŭ�� ������ | ä��ȳ� | ���޹��� |
				�̿��� | ����������޹�ħ | ����Ʈ ��</b> <br /> <br> (��)�ƽþƿ����� ����� ���α� ���굿
				123���� xx�ǹ� ��ǥ: �������� ����ڵ�Ϲ�ȣ : 123-12-12345 ����Ǹž��Ű��ȣ :
				1234-���굿-1234ȣ<br> ���꺻�� 123.123.1234 | ������ 12.123.1234 | �λ���
				123.123.1234 <br />COPYRIGHTS 2015 WORLD ��� ALL RIGHTS
				RESERVED
		</div>
	</div>
</body>
</html>