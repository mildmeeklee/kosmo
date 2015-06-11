

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
	 
	   if(p_group == "헬스"){
		   $("td[name='"+p_position+"']").css("background-color", "red")
		   .append("<span>"+p_name+"</span>");
	   }else if(p_group == "요가"){
		   $("td[name='"+p_position+"']").css("background-color", "yellow")
		   .append("<span>"+p_name+"</span>");
	   }else{
		   $("td[name='"+p_position+"']").css("background-color", "green")
		   .append("<span>"+p_name+"</span>");
	   }

   });
});