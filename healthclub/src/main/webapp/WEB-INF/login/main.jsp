<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/View.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery.js"></script>
<title>Insert title here</title>
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
   
      <h1 class="title" align="center">
		<span onclick="javascript:window.location='login.do'"> Nice Body Club</span></h1>
      
   
      <c:if test="${id !=null }">
         <p align="right">
            <strong>${id }</strong>님 &nbsp;&nbsp;&nbsp;
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
</div>
			<div id="sub" >
				<div id="letter" align="center"><strong>
					Your WorkOut<br>
					<font id="letter_s">Is My</font><br>
					WARMUP !!
				</strong>
				</div>
		
				<div id="noticet">
					<table>
						<tr>
							<th class="t_name" align="center" width="220px" height="30px"> Notice </th>
						</tr>
				
						<c:forEach var="noticelist" items="${noticelist}">
							<tr>
								<td>ㆍ<a href="noticecontent.do?n_num=${noticelist.n_num}">${noticelist.n_name}</a></td>
							</tr>
						</c:forEach>
					</table>

				</div>
				
				<div id="boardt">
						<table>
							<tr>
								<th class="t_name" align="center" width="220px" height="30px"> Board </th>
							</tr>
							<c:forEach var="boardlist" items="${boardlist}">
								<tr>
									<td>ㆍ<a href="boardcontent.do?b_num=${boardlist.b_num}">${boardlist.b_name}</a></td>
								</tr>
							</c:forEach>
						</table>
				</div>
				
				<div id="itemt">
					<table>
						<tr>
							<th class="t_name" align="center" width="220px" height="30px"> Health Product </th>
						</tr>
						<c:forEach var="itemtable" items="${itemtable}">
							<tr>
								<td>ㆍ<a href="itemcontent.do?i_num=${itemtable.i_num}">${itemtable.i_name}</a></td>
							</tr>
						</c:forEach>
					</table>
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
</body>
</html>
