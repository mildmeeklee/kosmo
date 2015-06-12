/**
 * @author
 * eylee
 * mildmeeklee
 * 2015.0612
 */

var socket = io.connect('http://192.168.0.47:9995');
$(document).ready(function() {

	var $users = $('#users');
	var $msg = $(".inputMessage");
	var $chat = $("#addchat");
	$('#admin_btn').on('click', function() {
	
		socket.emit('start manage', 'admin', function(data){				
		} );
	});
	$('#send_msg').on('click', function() {
		
		var user = $('#select_user').find(":selected").text();
		socket.emit('admin send msg', {'msg': $msg.val(), 'user' : user }, function(data){
		
		} ); 		
		$msg.val('');
	});
	 socket.on('admin', function(data){
		var html = '<div class="userinfo">';
		html += data + '님이 입장하셨습니다. <br/>';
			$("#select_user").append('<option value="'+data+'" id="'+data+'">'+data+'</option>');
			
		html += '</div>';
		$users.append(html);
	}); 
	
	 socket.on('admin receive msg', function(data){
		$chat.append('<div class="chatmsg"><b>' + data.nick + ': </b>' + data.msg + "<br/></div>");
	}); 
	socket.on('new message', function(data){
		if(data.admin==true){
			$chat.append('<div class="chatmsg"><b>' +  '관리자 : </b>' + data.msg + "<br/></div>");
		}
	}); 
	socket.on('disconnect user', function(data){
		  
		var $myoption = $("#select_user option[value='"+data+"']");
		$myoption.remove();
		var html = '<div class="userinfo">';
		html += data + '님이 퇴장하셨습니다. ';
		html += '</div>';
		$users.append(html);			
	}); 
});