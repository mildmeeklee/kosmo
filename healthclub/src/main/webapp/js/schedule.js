

$(function(){
	
   $(".programselect").click(function(){
	   var i =  $(".programselect").index(this);
	   var p_position;
	   var p_group;
	   var p_name;
	   
	   
	   p_position = $(".programselect1:eq("+i+")").attr("value");
	   p_group = $(".programselect1:eq("+i+")").attr("title");
	   p_name = $(".programselect1:eq("+i+")").attr("name");
	   
	   //alert(p_position + ":::" +p_group +":::" +p_name);
	   $(".col[title='"+p_position+"']").text(p_name);  
	   if(p_group == "헬스"){
		   $(".col[title='"+p_position+"']").css("background-color", "red");
	   }else if(p_group == "요가"){
		   $(".col[title='"+p_position+"']").css("background-color", "blue");
	   }else{
		   $(".col[title='"+p_position+"']").css("background-color", "green");
	   }

   });
});