<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<a href="itemsubmit.do"> 제품 올리기 upload</a></br>
<a href="noticelist_m.do"> 공지사항 관리 upload</a></br>
<a href="boardManager.do"> 게시판 관리 upload</a></br>
<a href="programlist_m.do"> 프로그램 관리 upload</a>

<div id="chatadmin_wrap">
		<div id="admin_btn">chattting 관리자</div>
		<ul class="pages">
			<li class="chat page">
				<div class="chatArea">
					<ul class="messages">
						<li class="log">Welcome to Socket.IO Chat </li>
						<li class="log">there are 536 participants</li>
					</ul>
					<div id="users"></div>
					<div id="addchat"></div>

				</div>
				<div> 
				<select name="select_user" id="select_user">
					<option value="default">default</option>
				</select> 
				<input class="inputMessage" placeholder="Type here...">
				<button id="send_msg">send</button>
				</div>
			</li>
		</ul>
	</div>
	  <form>
	  <input id="in" type="text"/>
      <input id="ch" type="button" value="동영상 변경"/>
	  </form>
</body>
</html>