$(function(){ 
  $("#navmenu").mouseover(function(){ 
   $(this).children("ul").show();  
  }) 
   
  $("#navmenu").mouseout(function(){ 
   $(this).children("ul").hide(); 
  }) 
})