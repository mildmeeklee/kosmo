/**
 * @author
 * mildmeeklee
 * 2015.0611
 * 
 */

var socket = io.connect('http://192.168.0.47:9995');


$(document).ready(function() {

		
	var $join_name = $('#join_name');
	var $nickError = $('#nickError');
	var $users = $('#users');
	var $messageForm = $('#send-message');
	var $messageBox = $('#message');
	var $chat = $('#chat');
	
	var nickName;
	
	$(".send_msg").on('click', function() {
		$('#nickError').html("");
		$(".send_msg").css("display", "none");
		$(".join_chat").css("display", "block");
	});	
	
	// 채팅 시작
	$('.join_btn').on('click', function() {
		socket.io.reconnecting = undefined; 
		socket.io._reconnection = true;
		socket.connect();
		nickName =  $join_name.val();
		socket.emit('new user', $join_name.val(), function(data){
			if(data){
				$('.join_chat').hide();
				$('#chat_contentWrap').show();
				$chat.append('welcome to, ' + nickName + " !!!<br>");
			}else{
				$nickError.html('이름이 중복됩니다. 다른 이름으로 입력하세요.');
			}
		} );
	});
	
	
	// 채팅 종료
	$('#exit_chat').on('click', function() {
		
		nickName =  $join_name.val();
		$('.join_chat').hide();
		$('#chat_contentWrap').hide();
		$('#leave_msg').show();
		socket.emit('user out', nickName, function(data){
		});
		socket.disconnect();
		$chat.html('');
		$join_name.val('');
		
	});
	
	
	
	$messageForm.submit(function(e){
		e.preventDefault();
		socket.emit('new message', $messageBox.val(), function(data){
			$chat.append('<span class="error">' + data + "</span><br/>");
		});
		$messageBox.val('');
		
	});
	
	
	// comunicate with new message!!!!!!
	socket.on('new message', function(data){
		
		if(nickName==data.nick){
			if(data.admin==true){
				$chat.append('<b>' +  '관리자 : </b>' + data.msg + "<br/>");
			}else{
				$chat.append('<b>' + data.nick + ': </b>' + data.msg + "<br/>");
			}
		}else{
		}
		
	});
	
	
	window.onbeforeunload = function () {
		socket.emit('window beforeunload', nickName, function(data){
			
		});
	   
	};
	
});

