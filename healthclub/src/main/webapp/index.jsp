<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
   <style>
      .container {
        width: 90%;
        margin: auto;
      }
      .youtubeWrap {
        position: relative;
        width: 100%;
        padding-bottom: 56.25%;
      }
      .youtubeWrap iframe {
        position: absolute;
        width: 1000px;
        height: 500px;
      }
    </style>
<script src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("#ch").click(function(){

		$("#if").attr("src",$("#in").val());
	});
	  return false
});
</script>
</head>
<body>
<header>
<center><h2>bangbang</h2></center>
<p align="right"><a href="loginForm.do">login</a> | 
<hr color="red" size="2" width=100%>
<center>
  <font size="5">
	<a href="introcompanyIntro.do">&diams;소개</a> |
 	<a href="notice.do">&diams;공지사항</a>|
	<a href="boardlist.do">&diams;게시판</a> | 
  	<a href="schedule.do">&diams;스케줄러</a> |  
    <a href="itemlist.do">&diams;헬스제품</a>
  </font>
<hr color="red" size="2" width=100%></center>
</header>
<div class="c">
      <h1>Enjoy the video</h1>
      <input id="in" type="text"/>
      <input id="ch" type="button" value="동영상 변경"/>
      <div class="youtubeWrap">
        <iframe id="if" src="https://www.youtube.com/embed/NgaseuL6C1c" frameborder="0" allowfullscreen></iframe>
      </div>


</div>

	

</body>
</html>

<!--  <a href="login/userlist2.do">mypage</a> |
				 <a>cart</a></p> -->
