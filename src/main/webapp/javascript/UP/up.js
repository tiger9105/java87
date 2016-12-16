jQuery(document).ready(function(){
  var position = $(".hidden-name12").position(); //Position of the header in the webpage
  var padding = 10; //Padding set to the header
  var left = position.left + padding;
  var top = position.top + padding;
  jQuery(".hidden-name12").css("background-position","-"+left+"px -"+top+"px"); 
 
});