<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../../css/button.css"> 

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
	margin-left: 100px;
}

#bottom2 {
	float: left;
}

#bottom3 {
	float: left;
}

#bottom4 {
	
}

.button {
   border: 2px solid #0a3c59;
   background: #a4a5a6;
   background: -webkit-gradient(linear, left top, left bottom, from(#000508), to(#a4a5a6));
   background: -webkit-linear-gradient(top, #000508, #a4a5a6);
   background: -moz-linear-gradient(top, #000508, #a4a5a6);
   background: -ms-linear-gradient(top, #000508, #a4a5a6);
   background: -o-linear-gradient(top, #000508, #a4a5a6);
   background-image: -ms-linear-gradient(top, #000508 0%, #a4a5a6 100%);
   padding: 5px 10px;
   -webkit-border-radius: 5px;
   -moz-border-radius: 5px;
   border-radius: 5px;
   -webkit-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #000000 0 1px 0;
   color: #ffffff;
   font-size: 21px;
   font-family: helvetica, serif;
   text-decoration: none;
   vertical-align: middle;
   }
 .button:hover {
   border: 2px solid #0a3c59;
   text-shadow: #1e4158 0 1px 0;
   background: #f4f9fc;
   background: -webkit-gradient(linear, left top, left bottom, from(#bdbdbd), to(#f4f9fc));
   background: -webkit-linear-gradient(top, #bdbdbd, #f4f9fc);
   background: -moz-linear-gradient(top, #bdbdbd, #f4f9fc);
   background: -ms-linear-gradient(top, #bdbdbd, #f4f9fc);
   background: -o-linear-gradient(top, #bdbdbd, #f4f9fc);
   background-image: -ms-linear-gradient(top, #bdbdbd 0%, #f4f9fc 100%);
   color: #000000;
   }
 .button:active {
   text-shadow: #1e4158 0 1px 0;
   border: 2px solid #0a3c59;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#3e779d), to(#f4f9fc));
   background: -webkit-linear-gradient(top, #3e779d, #65a9d7);
   background: -moz-linear-gradient(top, #3e779d, #65a9d7);
   background: -ms-linear-gradient(top, #3e779d, #65a9d7);
   background: -o-linear-gradient(top, #3e779d, #65a9d7);
   background-image: -ms-linear-gradient(top, #3e779d 0%, #65a9d7 100%);
   color: #fff;
   } 

</style>
<script type="text/javascript">
	$(function() {
		$("#navi a").click(
				function() {
					$("#main img").before(
							"<img src='" + $(this).attr("href") + "' alt='' width='700' height='500'>");
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
		<h2>bangbang</h2>
	</center>
	<c:if test="${id !=null }">
		<p align="right">
			${id }님 |<a href="logout.do">logout</a> | <a
				href="mypage.do?id=${id}">my page</a> | <a href="cartlist.do?s_id=${id}">cart</a>
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

						<li><a href="images/photo1.jpg"><img width="130" height="100"
								src="images/photo1_thum.jpg"  /></a></li>
						<li><a href="images/photo2.jpg"><img width="130" height="100"
								src="images/photo2_thum.jpg" /></a></li>
						<li><a href="images/photo3.jpg"><img width="130" height="100"
								src="images/photo3_thum.jpg" /></a></li>
						<li><a href="images/photo4.jpg"><img width="130" height="100"
								src="images/photo4_thum.jpg" /></a></li>

					</ul>
					<p>
						<img src="images/btn_next.jpg" alt="次へ" class="next" />
					</p>
					</div>
				
				<div class="page">
					<ul>
						<li><a href="images/photo9.jpg" ><img
								src="images/photo9_thum.jpg"  width="130" height="100"/></a></li>
						<li><a href="images/photo10.jpg"><img
								src="images/photo10_thum.jpg"  width="130" height="100"/></a></li>
						<li><a href="images/photo11.jpg"><img
								src="images/photo11_thum.jpg"   width="130" height="100"/></a></li>
						<li><a href="images/photo12.jpg"><img
								src="images/photo12_thum.jpg" width="130" height="100" /></a></li>

					</ul>
					<p>
						<img src="images/btn_prev.jpg" alt="前へ" class="prev" /> <img
							src="images/btn_next.jpg" alt="次へ" class="next" />
					</p>
				</div>
				
				<div class="page">
					<ul>
						<li><a href="images/photo17.jpg"><img
								src="images/photo17_thum.jpg" width="130" height="100"/></a></li>
						<li><a href="images/photo18.jpg"><img
								src="images/photo18_thum.jpg" width="130" height="100"/></a></li>
						<li><a href="images/photo19.jpg"><img
								src="images/photo19_thum.jpg" width="130" height="100"/></a></li>
						<li><a href="images/photo20.jpg"><img
								src="images/photo20_thum.jpg"  width="130" height="100"/></a></li>
					</ul>
					<p>
						<img src="images/btn_prev.jpg" alt="앞으로" class="prev" />
					</p>
				</div>
			
			</div>
		</div>
		<div id="main">
			<img src="images/photo1.jpg" alt="" width="700" height="500"/>
		</div>


	<div id="bottom">
		<div id="bottom2" >
			<font size="5">		
			<table border="1">
				<tr>
					<th>게시판</th>
				</tr>
				<c:forEach var="boardlist" items="${boardlist}">
					<tr>
						<td><a href="boardcontent.do?b_num=${boardlist.b_num}">${boardlist.b_name}</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div id="bottom3">
			<table border="1">
				<tr>
					<th>최신 아이템</th>
				</tr>
				<c:forEach var="itemtable" items="${itemtable}">
					<tr>
						<td><a href="itemcontent.do?i_num=${itemtable.i_num}">${itemtable.i_name}</a></td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div id="bottom4">
			<table border="1">
				<tr>
					<th>공지사항</th>
				</tr>
		
				<c:forEach var="noticelist" items="${noticelist}">
					<tr>
						<td><a href="noticecontent.do?n_num=${noticelist.n_num}">${noticelist.n_name}</a></td>
					</tr>
				</c:forEach>
			</table>
	
		</div>
	</div>
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


</body>
</html>
