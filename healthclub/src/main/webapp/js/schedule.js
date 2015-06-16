
$(function(){

   $(".programselect").click(function(){
	   var i =  $(".programselect").index(this);
	   var p_position;
	   var p_group;
	   var p_name;
	   var p_num;
	  
	   
	   p_position = $(".programselect1:eq("+i+")").attr("value");
	   p_group = $(".programselect1:eq("+i+")").attr("title");
	   p_name = $(".programselect1:eq("+i+")").attr("name");
	   p_num = $(".programselect1:eq("+i+")").attr("id");
	   
	  
	   $("input[name='"+p_position+"']").attr("value", p_num );
	   $("span."+p_position).remove();
	   
	   if(p_group == "헬스"){
		  
		   $("td[name='"+p_position+"']").css("background-color", "red")
		   .append("<span class='"+p_position+"'>"+p_name+"</span>");
	   }else if(p_group == "요가"){
		  
		   $("td[name='"+p_position+"']").css("background-color", "yellow")
		   .append("<span class='"+p_position+"'>"+p_name+"</span>");
	   }else{
		
		   $("td[name='"+p_position+"']").css("background-color", "green")
		   .append("<span class='"+p_position+"'>"+p_name+"</span>");
	   }


   });
});

   /**
	 *  eylee
	 *  mildmeeklee
	 *  2015.06.11
	 *  add ajax /get method
	  
  $('#pselect').on('change', function (e) {
	  $("#program_feedback").html('');
	   var selectedProgram = this.selectedOptions[0].value;
	   
		var jsonData = {program : selectedProgram};
		
		$.ajax({
			
			type : 'GET',
			Accept : "application/json",
			contentType : "application/json; charset=UTF-8",
			dataType : 'json',
			url : "schedulesave.do",
			data : jsonData,
			success : function(data) {
			
				var html;
			
				for (i = 0; i < data.length; i++) { 
					html += '<tr>';
					html += '<td><input type="button" class="programselect" value="';
					html += data[i].p_name +'">';
					html += data[i].p_position+' | ';
					html += data[i].p_teacher+' | ';
					html += data[i].p_day+' | ';	
					html += data[i].p_time+'</td>';
					html += '<td><input type="hidden"  class ="programselect1" 	value="';
					html += data[i].p_position+'" title="';	
					html += data[i].p_group+'" name="';	
					html += data[i].p_name+'" id="';
					html += data[i].p_num+'"></td>';
					html += '</tr>';
				}
				$('#program_feedback').append(html);

			},
			error : function(data, textStatus, request) {
				alert('프로그램 선택에 실패 하였습니다.');			
			}

		});
		
	});
  
});
  */	