<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery.js"></script>
<title>Insert title here</title>
<style>
#container {
	width: 80%;
	margin: 20px auto;
}

#navi {
	width: 200px;
	float: left;
}

#navi ul {
	height: 460px;
}

#navi li {
	list-style-type: none;
	float: left;
}

#navi li img {
	border: 3px solid black;
}

#navi {
	overflow: hidden;
}

#navi .pageWrap {
	width: 900px;
}

#navi .pageWrap .page {
	width: 300px;
	float: left;
}

#navi p {
	clear: both;
	width: 300px;
	padding: 10px 0;
	text-align: center;
}

#navi p img {
	cursor: pointer;
}

#main {
	width: 500px;
	float: left;
}

#main img {
	position: absolute;
	border: 3px solid white;
}

#talk {
	float: right;
}

#bottom {
	clear: both;
	backgroundcolor: #d9d9d9;
}

#bottom2 {
	float: left;
}

#bottom3 {
	float: left;
}

#bottom4 {
	
}
</style>
<script type="text/javascript">
	$(function() {
		$("#navi a").click(
				function() {
					$("#main img").before(
							"<img src='" + $(this).attr("href") + "' alt=''>");
					$("#main img:last").fadeOut("fast", function() {
						$(this).remove();
					});
					return false;
				})
		$("img.next").click(
				function() {
					$("#navi .pageWrap").animate(
							{
								marginLeft : parseInt($("#navi .pageWrap").css(
										"margin-left"))
										- 300 + "px"
							}, "fast");
				});
		$("img.prev").click(
				function() {
					$("#navi .pageWrap").animate(
							{
								marginLeft : parseInt($("#navi .pageWrap").css(
										"margin-left"))
										+ 300 + "px"
							}, "fast");
				});
	});
</script>


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

	<center>
		<h2>bangbang</h2>
	</center>
	<c:if test="${id !=null }">
		<p align="right">
			${id }�� |<a href="logout.do">logout</a> | <a
				href="mypage.do?id=${id}">my page</a> | <a href="cartlist.do?s_id=${id}">cart</a>
		</p>
	</c:if>


	<c:if test="${id ==null }">
		<p align="right">
			�α��� ���ּ��� : <a href="loginForm.do">login</a>
	</c:if>

	<hr color="red" size="2" width=100%>
	<center>
		<font size="5">
	<a href="introcompanyIntro.do">&diams;�Ұ� </a>|
 	<a href="notice.do">&diams;��������</a>|
	<a href="boardlist.do">&diams;�Խ���</a> | 
  	<a href="schedule.do">&diams;�����ٷ�</a> |  
    <a href="itemlist.do">&diams;�ｺ��ǰ</a>
  </font>
		<hr color="red" size="2" width=100%>
	</center>


	<!-- 	<a href="itemsubmit.do"> ��ǰ �ø��� upload</a></br>
	<a href="noticelist_m.do"> ������ Ȩ������ ���� upload</a> -->

	<div id="container">
		<div id="navi">
			<div class="pageWrap">
				<div class="page">
					<ul>

						<li><a href="images/photo1.jpg"><img
								src="images/photo1_thum.jpg" alt="��������" /></a></li>
						<li><a href="images/photo2.jpg"><img
								src="images/photo2_thum.jpg" alt="���" /></a></li>
						<li><a href="images/photo3.jpg"><img
								src="images/photo3_thum.jpg" alt="�ٴ�" /></a></li>
						<li><a href="images/photo4.jpg"><img
								src="images/photo4_thum.jpg" alt="��" /></a></li>

					</ul>
					<p>
						<img src="images/btn_next.jpg" alt="��" class="next" />
					</p>
				</div>
				<div class="page">
					<ul>
						<li><a href="images/photo9.jpg"><img
								src="images/photo9_thum.jpg" alt="��" /></a></li>
						<li><a href="images/photo10.jpg"><img
								src="images/photo10_thum.jpg" alt="����" /></a></li>
						<li><a href="images/photo11.jpg"><img
								src="images/photo11_thum.jpg" alt="����" /></a></li>
						<li><a href="images/photo12.jpg"><img
								src="images/photo12_thum.jpg" alt="��" /></a></li>

					</ul>
					<p>
						<img src="images/btn_prev.jpg" alt="���" class="prev" /> <img
							src="images/btn_next.jpg" alt="��" class="next" />
					</p>
				</div>
				<div class="page">
					<ul>
						<li><a href="images/photo17.jpg"><img
								src="images/photo17_thum.jpg" alt="��" /></a></li>
						<li><a href="images/photo18.jpg"><img
								src="images/photo18_thum.jpg" alt="��" /></a></li>
						<li><a href="images/photo19.jpg"><img
								src="images/photo19_thum.jpg" alt="��" /></a></li>
						<li><a href="images/photo19.jpg"><img
								src="images/photo19_thum.jpg" alt="��" /></a></li>
					</ul>
					<p>
						<img src="images/btn_prev.jpg" alt="������" class="prev" />
					</p>
				</div>
			</div>
		</div>
		<div id="main">
			<img src="images/photo1.jpg" alt="" />
		</div>
		<div id="talk">
			<p align="right">���⿡ 1:1 ��ȭ�ý����� �ְڴ�.
		</div>
	</div>

	<div id="bottom">
		<div id="bottom2">
			<table>
				<tr>
					<th>�Խ���</th>
				</tr>
				<c:forEach var="boardlist" items="${boardlist}">
					<tr>
						<td><a href="boardcontent.do?b_num=${boardlist.b_num}">${boardlist.b_name}</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div id="bottom3">
			<table>
				<tr>
					<th>�Խ���</th>
				</tr>
				<c:forEach var="itemtable" items="${itemtable}">
					<tr>
						<td>${itemtable.i_name}</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div id="bottom4">
			<table>
				<tr>
					<th>�Խ���</th>
				</tr>
				<c:forEach var="noticelist" items="${noticelist}">
					<tr>
						<td><a href="noticecontent.do?n_num=${noticelist.n_num}">${noticelist.n_name}</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>


</body>
</html>
