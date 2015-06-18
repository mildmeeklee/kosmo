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
<div id="top">
   
      <h1 class="title" align="center">Nice Body Club</h1>
      
   
      <c:if test="${id !=null }">
         <p align="right">
            <strong>${id }</strong>�� &nbsp;&nbsp;&nbsp;
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

	<div id="sectionBG">
	<br>
		<div id="section"> <decorator:body /></div>
	</div>
	
	
		 <div id="footer">
		 		<b> ���������� �ȳ� | ��Ʈ�Ͻ�Ŭ�� ������ | ä��ȳ� | ���޹��� |
				�̿��� | ����������޹�ħ | ����Ʈ ��</b> <br /> <br> (��)�ƽþƿ����� ����� ���α� ���굿
				123���� xx�ǹ� ��ǥ: �������� ����ڵ�Ϲ�ȣ : 123-12-12345 ����Ǹž��Ű���ȣ :
				1234-���굿-1234ȣ<br> ���꺻�� 123.123.1234 | ������ 12.123.1234 | �λ���
				123.123.1234 <br />COPYRIGHTS 2015 WORLD ��� ALL RIGHTS
				RESERVED
		</div>
	</div>
</body>
</html>