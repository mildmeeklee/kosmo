<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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
	<font size=9><b>방방 헬스장</b></font>
	<br>
	<br>

	<font color="red">WORLD 방방 INTERNATIONAL (SINCE 1976) </font>
	<p>약 40년 역사와 수많은 휘트니스 사업 성공사례를 자랑하는 방방은 현재 전세계 백만명이 넘는 회원을 보유하고 있는
		세계적인 휘트니스 프랜차이즈입니다. Bodybuilding계의 전설이자 영화 ‘타잔’의 주인공 Joe Gold가 1976년
		World Gym 오픈 이래 Arnold Schwarzenegger, Rou Ferrigno Dave Draper 등 수많은
		할리우드 스타를 배출하였습니다.
	<P>
		<embed
			src=http://www.youtube.com/embed/LEPWY5InD6k?&amp;hl=ko_KR&autoplay=1
			type="application/x-shockwave-flash" width="560" height="315"
			allowscriptaccess="always" allowfullscreen="true"></embed>
			
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