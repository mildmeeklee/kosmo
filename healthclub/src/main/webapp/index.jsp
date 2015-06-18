<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/chat.css">
<!-- <link rel="stylesheet" type="text/css" href="css/main.css"> -->
<link rel="stylesheet" type="text/css" href="css/View.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://192.168.0.47:9995/socket.io/socket.io.js"></script>
<script src="js/chatClient.js"></script>
<script type="text/javascript">
   $(function() {
      $("#pageWrap a").click(
            function() {
               $("#main img").before(
                     "<img src='" + $(this).attr("href") + "' alt='' width='800' height='400'>");
               $("#main img:last").fadeOut("fast", function() {
                  $(this).remove();
               });
               return false;
            })
            
      $(".next").click(
            function() {
               $("#pageWrap").animate(
                     {
                        marginLeft : parseInt($("#pageWrap").css(
                              "margin-left"))
                              - 250 + "px"
                     }, "fast");

            });
      
      $(".prev").click(
            function() {
               $("#pageWrap").animate(
                     {
                        marginLeft : parseInt($("#pageWrap").css(
                              "margin-left"))
                              + 250 + "px"
                     }, "fast");
            });

   });
</script>

</head>
<body>
   <div id="top">
   
      <h1 class="title" align="center">Nice Body Club</h1>
      
   
      <c:if test="${id !=null }">
         <p align="right">
            <strong>${id }</strong>님 &nbsp;&nbsp;&nbsp;
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

   <div id="container">
      
      <div id="main">
         <img src="images/photo3.jpg"/>
      </div>
      <div id="navi">
         <div id="pageWrap">
            <div class="page">
               <ul>
                  <li><a href="images/photo1.jpg"><img src="images/photo1_thum.jpg"/></a></li>
                  <li><a href="images/photo2.jpg"><img src="images/photo2_thum.jpg" /></a></li>
                  <li><a href="images/photo3.jpg"><img src="images/photo3_thum.jpg" /></a></li>
                  <li><a href="images/photo4.jpg"><img src="images/photo4_thum.jpg" /></a></li>
               </ul>
               <p>
                  <img src="images/btn_next.jpg" alt="뒤로" class="next" />
               </p>
            </div>
            
            <div class="page">
               <ul>
                  <li><a href="images/photo9.jpg" ><img src="images/photo9_thum.jpg"/></a></li>
                  <li><a href="images/photo10.jpg"><img src="images/photo10_thum.jpg"/></a></li>
                  <li><a href="images/photo11.jpg"><img src="images/photo11_thum.jpg"/></a></li>
                  <li><a href="images/photo12.jpg"><img src="images/photo12_thum.jpg"/></a></li>

               </ul>
               <p>
                  <img src="images/btn_prev.jpg" alt="앞으로" class="prev" /> 
                  <img src="images/btn_next.jpg" alt="뒤로" class="next" />
               </p>
            </div>
            
            <div class="page">
               <ul>
                  <li><a href="images/photo17.jpg"><img src="images/photo17_thum.jpg"/></a></li>
                  <li><a href="images/photo18.jpg"><img src="images/photo18_thum.jpg"/></a></li>
                  <li><a href="images/photo19.jpg"><img src="images/photo19_thum.jpg"/></a></li>
                  <li><a href="images/photo20.jpg"><img src="images/photo20_thum.jpg"/></a></li>
               </ul>
               <p>
                  <img src="images/btn_prev.jpg" alt="앞으로" class="prev" />
               </p>
            </div>
         </div>
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
   </div>
</div>
         <div id="footer">
         <b> 프렌차이즈 안내 | 휘트니스클럽 컨설팅 | 채용안내 | 제휴문의 |
            이용약관 | 개인정보취급방침 | 사이트 맵</b> <br /> <br> (주)아시아월드방방 서울시 구로구 가산동
            123번지 xx건물 대표: 은영누나 사업자등록번호 : 123-12-12345 통신판매업신고번호 :
            1234-가산동-1234호<br> 가산본점 123.123.1234 | 강남점 12.123.1234 | 부산점
            123.123.1234 <br />COPYRIGHTS 2015 WORLD 방방 ALL RIGHTS
            RESERVED
      </div>
</div>
</body>
</html>
