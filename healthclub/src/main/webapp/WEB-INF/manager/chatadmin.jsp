<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<div id="chatadmin_wrap">
		<div id="admin_btn">chattting °ü¸®ÀÚ</div>
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
</body>
</html>