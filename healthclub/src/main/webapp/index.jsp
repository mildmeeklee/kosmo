<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/chat.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://192.168.0.47:9995/socket.io/socket.io.js"></script>
<script src="js/chatClient.js"></script>
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
<body>
	<center>
		<a href="http://localhost:8080/healthclub/index.jsp"><h2>bangbang</h2></a>
	</center>
	<p align="right">
		<a href="loginForm.do">login</a> |
	<hr color="red" size="2" width=100%>
	<center>
		<font size="5"> <a class="button" href="introcompanyIntro.do">INDRODUCTION</a>
			| <a class="button" href="notice.do">NOTICE</a>| <a class="button"
			href="boardlist.do">BOARD</a> | <a class="button" href="schedule.do">SCHEDULER</a>
			| <a class="button" href="itemlist.do">HEALTH PRODUCT</a>
		</font>
		<hr color="red" size="2" width=100%>
	</center>

	<div id="container">
		<div id="navi">
			<div class="pageWrap">
				<div class="page">
					<ul>

						<li><a href="images/photo1.jpg"><img
								src="images/photo1_thum.jpg" alt="샹제리아" /></a></li>
						<li><a href="images/photo2.jpg"><img
								src="images/photo2_thum.jpg" alt="장미" /></a></li>
						<li><a href="images/photo3.jpg"><img
								src="images/photo3_thum.jpg" alt="바다" /></a></li>
						<li><a href="images/photo4.jpg"><img
								src="images/photo4_thum.jpg" alt="문" /></a></li>

					</ul>
					<p>
						<img src="images/btn_next.jpg" alt="次へ" class="next" />
					</p>
					</div>
				
				<div class="page">
					<ul>
						<li><a href="images/photo9.jpg"><img
								src="images/photo9_thum.jpg" alt="손" /></a></li>
						<li><a href="images/photo10.jpg"><img
								src="images/photo10_thum.jpg" alt="마루" /></a></li>
						<li><a href="images/photo11.jpg"><img
								src="images/photo11_thum.jpg" alt="나무" /></a></li>
						<li><a href="images/photo12.jpg"><img
								src="images/photo12_thum.jpg" alt="잎" /></a></li>

					</ul>
					<p>
						<img src="images/btn_prev.jpg" alt="前へ" class="prev" /> <img
							src="images/btn_next.jpg" alt="次へ" class="next" />
					</p>
				</div>
				
				<div class="page">
					<ul>
						<li><a href="images/photo17.jpg"><img
								src="images/photo17_thum.jpg" alt="꽃" /></a></li>
						<li><a href="images/photo18.jpg"><img
								src="images/photo18_thum.jpg" alt="꽃" /></a></li>
						<li><a href="images/photo19.jpg"><img
								src="images/photo19_thum.jpg" alt="꽃" /></a></li>
						<li><a href="images/photo19.jpg"><img
								src="images/photo19_thum.jpg" alt="꽃" /></a></li>
					</ul>
					<p>
						<img src="images/btn_prev.jpg" alt="앞으로" class="prev" />
					</p>
				</div>
			
			</div>
		</div>
		<div id="main">
			<img src="images/photo1.jpg" alt="" />
		</div>
	
		<br> <br>
		<div class="send_msg" id="leave_msg">leave us a message</div>
		<div class="join_chat">
			<div class="join_header">이름을 입력하세요.</div>
			<div class="join_body">
				<p id="nickError"></p>
				이름 : <input type="text" class="join_name" id="join_name">
			</div>
			<div class="join_footer">
				<div class="join_btn">send</div>
			</div>
		</div>

		<div id="chat_contentWrap">
			<div class="join_header">
				live chat<input type="button" value="종료" id="exit_chat"
					class="chat_exitBtn">
			</div>
			<div id="chatWrap">
				<div id="chat"></div>
				<form id="send-message">
					<input size="35" id="message"> <input type="submit"
						value="전송">
				</form>
			</div>
			<div id="users"></div>
		
			 <div id="footer" 
			style="height: 140px; margin-top: 10px; background: black;">
			<font color="white"> 프렌차이즈 안내 | 휘트니스클럽 컨설팅 | 채용안내 | 제휴문의 |
				이용약관 | 개인정보취급방침 | 사이트 맵 <br /> <br> (주)아시아월드방방 서울시 구로구 가산동
				123번지 xx건물 대표: 은영누나 사업자등록번호 : 123-12-12345 통신판매업신고번호 :
				1234-가산동-1234호<br> 가산본점 123.123.1234 | 강남점 12.123.1234 | 부산점
				123.123.1234 <br /> <br /> COPYRIGHTS 2015 WORLD 방방 ALL RIGHTS
				RESERVED
			</font>
		</div>
	</div>
</div>

	
</body>
</html>

